clear;
close all;
%AS3959 firebrand mass flux vertical distribution time sereis Forest FDI100 BAL 12.5.

Time=[0.0	1.0	2.0	3.0	4.0	5.0	6.0	7.0	8.0	9.0	10.0	11.0	12.0	13.0	14.0	15.0	16.0	17.0	18.0	19.0	20.0	21.0	22.0	23.0	24.0	25.0	26.0	27.0	28.0	29.0	30.0	31.0	32.0	33.0	34.0	35.0	36.0	37.0	38.0	39.0	40.0	41.0	42.0	43.0	44.0	45.0	46.0	47.0	48.0	49.0	50.0	51.0	52.0	53.0	54.0	55.0	56.0	57.0	58.0	59.0	60.0	61.0	62.0	63.0	64.0	65.0	66.0	67.0	68.0	69.0	70.0	71.0	72.0	73.0	74.0	75.0	76.0	77.0	78.0	79.0	80.0	81.0	82.0	83.0	84.0	85.0	86.0	87.0	88.0	89.0	90.0	91.0	92.0	93.0	94.0	95.0	96.0	97.0	98.0	99.0	100.0	101.0	102.0	103.0	104.0	105.0	106.0	107.0	108.0	109.0	110.0	111.0	112.0	113.0	114.0	115.0	116.0	117.0	118.0	119.0	120.0	121.0	122.0	123.0	124.0	125.0	126.0	127.0	128.0	129.0	130.0	131.0	132.0	133.0	134.0	135.0	136.0	137.0	138.0	139.0	140.0	141.0	142.0	143.0	144.0	145.0	146.0	147.0	148.0	149.0	150.0	151.0	152.0	153.0	154.0	155.0	156.0	157.0	158.0	159.0	160.0	161.0	162.0	163.0	164.0	165.0	166.0	167.0	168.0	169.0	170.0	171.0	172.0	173.0	174.0	175.0	176.0	177.0	178.0	179.0	180.0	181.0	182.0	183.0	184.0	185.0	186.0	187.0	188.0	189.0	190.0	191.0	192.0	193.0	194.0	195.0	196.0	197.0	198.0	199.0	200.0];
flux_130m = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.31356291	3.2272424	4.6745081	4.5678298	4.523278	4.5334995	4.6098442	4.5392603	4.5849534	4.5492739	4.486614	4.2876075	4.4285635	4.5073174	4.5912977	4.4085795	4.1099794	4.2539105	4.2584302	4.6975524	4.2572109	3.9919936	4.1006579	4.1828496	4.2353317	4.0405546	4.0037328	4.2163334	4.3994778	4.774712	4.3451348	4.0971666	4.5147074	4.6797054	4.5535079	4.2408812	4.3570078	4.1078132	1.5826149	0.078988894	-0.007650352	-0.009197084	-0.013063068	0.041336753	0.010038842	0.008085272	0.002599364	0.03182027	0.062275186	0.012196856	0.002927647	-0.000250473	-0.000767432	0.006449299	0.001374038	0.00158954	0.001127896	0.000512502	0.000962681	-0.000906858	0.001389751	-0.000710554	0.000593471	-0.00045809	0.000312004	-0.000198128	0.001417382	0.001991925	0.001361175	-0.000907595	0.000386641	-0.000420891	-0.000886613	-0.00068389	-0.000916869	-0.000275434	0.000266697	0.000421092	-0.000825494	-0.000571489];
flux_140m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.42502488	2.7728651	4.40655	3.9067199	4.1542053	3.8825271	3.6637538	3.8228367	4.0323535	3.7889509	3.2604701	3.0032579	3.9935997	3.7806274	3.5762472	3.2992013	2.8628711	3.6338721	3.8029056	3.2196637	2.5842088	2.9723275	3.8204941	3.5639659	2.8057162	2.6746086	2.8267173	3.739327	3.8764796	3.6090571	2.9084568	3.2700305	4.3055916	3.7869754	3.2766227	3.179682	3.5214962	3.1705166	1.4547644	0.20883399	-0.14311675	-0.19809236	-0.19971606	-0.10594437	-0.079962665	-0.071362001	-0.05223471	-0.012205551	0.019244407	0.003603457	0.000209817	-0.002310438	-0.000256019	-0.000361195	0.001129128	0.000340574	-0.000127503	0.000728786	-0.001760694	0.003157962	-0.001373749	-0.00139294	-0.002071769	0.000768137	0.000658029	0.000486507	-0.001683613	-0.000246683	-0.000528359	-0.002193673	-0.002537651	0.000242664	0.001049934	0.00109652	-0.001432662	-0.00138387	0.000903604	0.00038343	0.001045998];
flux_150m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.85923677	2.7791901	3.4207124	3.231324	3.1158265	2.7117505	2.782513	3.4138298	3.2511873	2.7092102	1.9717205	2.4528553	3.524286	3.0794321	2.2890039	2.251847	2.1046721	2.9094487	3.258908	1.9355861	1.3476715	2.0934444	3.3919304	2.8245093	1.6785812	1.6221178	1.9887063	3.2808862	3.2910151	2.3546947	1.5270618	2.4016511	4.0137711	2.7677575	1.9435052	2.0067247	2.7569793	2.3450479	0.85131147	-0.031767588	-0.27515278	-0.29880837	-0.27107378	-0.233728	-0.22230316	-0.17492312	-0.14331638	-0.069763942	-0.00678462	-0.014481164	-0.010499575	-0.004146736	-0.001475392	-0.003044637	0.000372233	-0.000118816	0.002996327	0.001212869	-7.38209E-05	-9.55257E-05	6.86511E-05	0.000781187	0.001476731	0.000215337	-8.2458E-05	5.29343E-05	0.00040712	-0.000641256	-0.000281142	-0.002004683	-0.000304283	0.001563777	0.001899321	-0.00125724	0.00147038	-0.000852009	0.000708288	-0.001742786];
flux_160m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.036265628	1.309443	2.6601978	2.3552709	2.8447176	2.2812881	1.9256432	2.1856321	2.9754512	2.7125186	1.7586207	1.2457477	2.2906632	3.138697	2.3083568	1.4578149	1.3392227	1.6714045	2.5762947	2.7004134	1.012581	0.92146125	1.9353905	3.0026793	2.2294737	1.1539708	0.86083848	1.6262563	2.6742353	2.8348786	1.5766405	0.89453955	2.1479245	3.5622647	1.9454717	1.279482	1.4146014	2.0159553	1.7125736	0.66947193	-0.12164432	-0.323766	-0.2148227	-0.25531952	-0.27437771	-0.25870545	-0.23722701	-0.20879308	-0.12479917	-0.060147449	-0.025849999	-0.008692137	-0.006666975	-0.002070129	0.000218007	-0.000425076	0.000312721	0.000172346	-0.001201117	-0.000467473	-0.000381771	-0.000140967	0.000444618	-0.000429642	0.00010156	-0.00013485	-0.000532661	0.000320102	0.000278778	-0.000298812	0.000571858	0.00066227	0.00017028	0.000796715	0.000148349	0.000772859	0.000619898	0.00094601];
flux_170m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.20040013	1.66307	2.1359221	1.84032	2.2896028	1.6982806	1.5756112	1.9997323	2.671861	2.1582922	1.1311216	0.98120498	2.4813391	2.5463761	1.6198388	1.1871105	0.88588163	1.6150714	2.272711	2.0868559	0.73613824	0.83859512	1.8434499	2.6584558	1.5942314	1.1826113	0.72288526	1.6615178	2.024494	2.1378279	1.1389682	0.85649003	2.2046521	2.912222	1.5144682	0.89318025	1.3674709	1.5574891	1.2392618	0.65142583	0.045399161	-0.22813182	-0.23732582	-0.15641848	-0.26958855	-0.33223804	-0.2768024	-0.24312875	-0.1512745	-0.072401811	-0.032173696	-0.014565172	-0.00736362	-0.000152631	0.008148948	0.008676083	0.003267106	0.002314777	-0.000189808	-2.25935E-05	-9.01047E-05	0.000213751	-0.000129343	0.000912646	0.000173102	0.000501595	0.000354842	0.000349488	0.000894843	6.48868E-05	0.000599571	0.000718676	7.23195E-05	0.000512638	0.001076991	-0.000586837	-7.00754E-05];
flux_180m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0771683	1.1172182	2.4679463	1.8219772	2.2465202	2.2336126	1.6135105	1.9257439	2.6059425	2.8747761	1.7792546	1.1103728	1.9983515	3.4073371	2.2629283	1.4265162	1.1437504	1.4273103	2.3602571	2.4846892	1.5138544	0.87626197	1.4444803	2.6305906	2.3985529	1.4721149	1.1297645	1.5852524	2.1178824	2.2276313	1.6133587	0.82066495	1.4517181	2.7728621	2.3168233	1.3400108	1.2675316	1.7051399	1.413988	1.0793058	0.42292254	0.065293747	-0.15900168	-0.17579217	-0.090981334	-0.073881815	-0.23479567	-0.21448982	-0.16858022	-0.11663789	-0.066618786	-0.025143013	-0.006348964	-0.001225143	0.002798011	0.007005038	0.01132275	0.008124465	0.00470269	0.000947823	0.000474907	0.000126953	0.000455451	-3.60645E-05	0.000630643	-0.000111415	-0.000200768	-0.000302527	7.1352E-05	0.000271095	0.000169489	-0.000396563	-0.000457427	-0.000173077	-0.000748873	-9.36118E-05	-0.000160685];
flux_190m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.041945924	1.1208074	1.6550924	1.1570023	1.6893269	1.4508438	1.0036881	1.3072261	1.7633267	2.0499484	0.93377781	0.69704559	1.5976622	2.279615	1.2278715	0.84371005	0.71320368	1.0463614	1.5594716	1.4807907	0.98509515	0.51111585	1.0500327	1.7504087	1.305941	0.73326946	0.58220731	1.1920374	1.2148534	1.5858836	0.87098274	0.30782144	0.76377858	1.6517115	1.3581238	0.86607641	0.97984138	0.95728407	0.88641436	0.6622054	0.24495705	0.043550825	-0.11269644	-0.074004651	-0.007644236	0.14531158	-0.045389973	-0.13392119	-0.12110493	-0.084695635	-0.047417399	-0.01429621	0.009188111	0.021326937	0.01806336	0.014884106	0.015340034	0.013549704	0.010326331	0.004602392	0.00152515	0.000424735	6.79334E-05	0.000140791	0.000678454	-0.00036446	-0.00014072	-6.84825E-06	0.000140903	0.000214406	-9.00498E-05	6.23699E-06	-0.000199054	0.000206072	-0.000298069	-6.18278E-05];
flux_200m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3.31753E-05	0.22424609	1.4194344	1.086525	1.1458114	1.3396225	0.99513227	0.82416888	1.2702052	1.4260153	1.7140946	0.57439934	0.70546455	1.8111221	1.7382269	0.89429478	0.69307647	0.62130168	1.0475287	1.1303965	0.89014084	0.61765271	0.39841418	0.70428815	1.1312278	0.78126309	0.50955017	0.49145372	0.96616432	0.94419388	1.1152634	0.52702061	0.20649167	0.4537258	1.0611504	0.9800804	0.67904215	0.83728401	0.71216386	0.70083641	0.51667166	0.13863278	0.055891873	-0.002168954	-0.010878935	0.034742037	0.18555936	0.19294811	0.012740553	-0.043349119	-0.04866012	-0.028557738	-0.010928856	0.015235743	0.043704111	0.047889674	0.041630856	0.030827504	0.022726453	0.01671336	0.007276626	0.003685045	0.001201565	0.000307236	0.000319868	0.00015845	-0.000222523	9.23587E-05	-2.65999E-05	-9.35688E-05	0.00017308	9.95E-06	-0.000125722	-9.86459E-06	-5.65235E-05	-0.000230891];
flux_210m=[0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.011843039	0.5442163	1.276922	0.73510983	1.0210644	1.0186625	0.70278756	0.75194691	1.0812159	1.2650548	1.2304682	0.48934618	0.78247817	1.6924686	1.127715	0.68457677	0.63961716	0.55425144	0.63187554	0.57228199	0.51472709	0.35546678	0.29272401	0.4995522	0.6654671	0.57471493	0.34907322	0.46327484	0.59325268	0.60484528	0.71896754	0.35910645	0.22559433	0.35250882	0.61665609	0.62738708	0.52262489	0.53722339	0.49125443	0.59132458	0.32298768	0.10618999	0.13009414	0.095022524	0.06181437	0.071996269	0.086516486	0.21448669	0.15406289	0.008413028	-0.007740964	-0.001503	-0.001550638	0.012038765	0.035946459	0.054500323	0.048610277	0.038137125	0.030100467	0.02322287	0.0126228	0.00602468	0.002380781	0.002025998	0.000212075	6.7745E-05	-7.72211E-05	3.75156E-05	-1.07411E-05	-6.92495E-05	1.67569E-05	6.80189E-05	-3.08497E-05	-1.13037E-05	7.53781E-06];

plot(Time,flux_130m,'-','color',[.5 .4 .7],'DisplayName','Length',...
    'LineWidth',2);
hold on
plot(Time,flux_140m,'-','color',[0 0.4470 0.7410],'DisplayName','Length',...
    'LineWidth',2);
plot(Time,flux_150m,'-','color',[0.8500 0.3250 0.0980],'DisplayName','Length',...
    'LineWidth',2);
plot(Time,flux_160m,'-','color',[0.9290 0.6940 0.1250],'DisplayName','Length',...
    'LineWidth',2);
plot(Time,flux_170m,'-','color',[0.4940 0.1840 0.5560],'DisplayName','Length',...
    'LineWidth',2);
plot(Time,flux_180m,'-','color',[0.4660 0.6740 0.1880],'DisplayName','Length',...
    'LineWidth',2);
plot(Time,flux_190m,'-','color',[0.3010 0.7450 0.9330],'DisplayName','Length',...
    'LineWidth',2);
plot(Time,flux_200m,'-','color',[0.6350 0.0780 0.1840],'DisplayName','Length',...
    'LineWidth',2);
plot(Time,flux_210m,'-','color',[.2 .3 .4],'DisplayName','Length',...
    'LineWidth',2);


grid on;
box on
xlim([110 180])
ylim([0 6])
xlabel('Time (sec)','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand mass flux (kg.s^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

%set(gca,'fontsize',18);

legend('X=130 m','X=140 m','X=150 m','X=160 m','X=170 m','X=180 m','X=190 m','X=200 m','X=210 m')
