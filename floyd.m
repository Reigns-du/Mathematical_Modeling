x=[413	403	383.5	381	339	335	317	334.5	333	282	247	219	225	280	290	337	415	432	418	444	251	234	225	212	227	256	250.5	243	246	314	315	326	327	328	336	336	331	371	371	388.5	411	419	411	394	342	342	325	315	342	345	348.5	351	348	370	371	354	363	357	351	369	335	381	391	392	395	398	401	405	410	408	415	418	422	418.5	405.5	405	409	417	420	424	438	438.5	434	438	440	447	448	444.5	441	440.5	445	444																																																
];
y=[359	343	351	377.5	376	383	362	353.5	342	325	301	316	270	292	335	328	335	371	374	394	277	271	265	290	300	301	306	328	337	367	351	355	350	342.5	339	334	335	330	333	330.5	327.5	344	343	346	342	348	372	374	372	382	380.5	377	369	363	353	374	382.5	387	382	388	395	381	375	366	361	362	359	360	355	350	351	347	354	356	364.5	368	370	364	370	372	368	373	376	385	392	392	381	383	385	381.5	380	360																																																
];
xx=[1	1	2	3	3	4	4	5	5	6	7	7	8	8	9	10	11	11	12	14	15	15	16	16	17	17	17	18	18	19	20	21	22	23	24	24	25	26	26	27	28	28	29	30	30	31	31	32	33	33	34	35	36	36	36	36	37	38	38	39	40	41	41	42	43	43	44	45	46	46	47	47	47	48	49	49	50	51	51	52	53	53	54	54	55	56	57	57	57	58	60	61	62	62	63	64	64	65	66	66	67	67	68	68	69	69	69	70	70	71	71	72	73	73	74	74	75	76	77	77	78	79	80	81	82	82	83	84	85	86	86	87	87	88	88	89	89	89	90	91
];
yy=[75	78	44	45	65	39	63	49	50	59	32	47	9	47	35	34	22	26	25	21	7	31	14	38	40	42	81	81	83	79	86	22	13	13	13	25	11	27	10	12	29	15	30	7	48	32	34	33	34	8	9	45	35	37	16	39	7	39	41	40	2	17	92	43	2	72	3	46	8	55	48	6	5	61	50	53	51	52	59	56	52	54	55	63	3	57	58	60	4	59	62	60	4	85	64	65	76	66	67	76	44	68	69	75	70	71	1	2	43	72	74	73	74	18	1	80	76	77	78	19	79	80	18	82	83	90	84	85	20	87	88	88	92	89	91	20	84	90	91	92
];
l=size(x);
ll=size(xx);
d=inf(l(2));
for i=1:1:ll(2)
    d(xx(i),yy(i))=sqrt((x(xx(i))-x(yy(i)))^2+(y(xx(i))-y(yy(i)))^2);
    d(yy(i),xx(i))=sqrt((x(xx(i))-x(yy(i)))^2+(y(xx(i))-y(yy(i)))^2);
end
for i=1:l(2)
    d(i,i)=0;
end
a=d;
n=size(a,1);
D=a;
for k=1:n
   for i=1:n
      for j=1:n
         if D(i,k)+D(k,j)<D(i,j)
            D(i,j)=D(i,k)+D(k,j);
         end
      end
   end
end