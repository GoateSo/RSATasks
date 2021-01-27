--[[
Autogenerates test cases for escaped string problem

output:
    an array of strings which contain 2 unescaped quotes, and may contain escaped quotes
]]
local function insert(s,s2,i)
	return s:sub(1,i)..s2..s:sub(i+1)
end
return {function(n)
	n = n or 100
	local ret = {}
	while #ret < n do
		local t = {}
		for j = 1, math.random(30,60) do
			t[j] = math.random(48,126)
		end
		local s = string.char(table.unpack(t)):gsub("\\","")
		local k1 = math.random(3,math.floor(#s / 2))
		local k2 = math.random(k1+5,#s-5)
		s = insert(s,"\"",k1)
		s = insert(s,"\"",k2+1)
		for j = 1, math.random(5) do
			s = insert(s,[[\"]],math.random(1,#s))
		end
		if not s:match([[\\]]) then ret[#ret+1] = s end
	end
	return ret
end,{
	[ [[UcZq89K~:K"`bX\"W94MDAtUpX"Ixj\"mGHP]] ]  =  [[`bX\"W94MDAtUpX]];
	[ [[p?ZVw3ZliNPCoh|I"Lq`D\"~"YhZmS\";Xfwk?]] ]  =  [[Lq`D\"~]];
	[ [[~gH>\""e\"DAP5Il;}6ifaM"@Gz\"Kc;hJMEYT]] ]  =  [[e\"DAP5Il;}6ifaM]];
	[ [[<[8{K"^^\"wpFD9UaSTT|W"b^sNJoWuZ^x:<@|]] ]  =  [[^^\"wpFD9UaSTT|W]];
	[ [[`\"u]Ob12:j"2Kb||rCpU\"67d<"`nO3_f?xi99]] ]  =  [[2Kb||rCpU\"67d<]];
	[ [[Yv9lc?C]"IloEC"\"PJjmCdJ11\"`x_g__2iId7]] ]  =  [[IloEC]];
	[ [[^UEabUF>~"pIOX1B"lxp6\"i\"lNZ6XPlozG1Zpi]] ]  =  [[pIOX1B]];
	[ [[BhAg>nR<>3B}<d"}t\"YP\"]^s\"}8qFC"tqU|=_]] ]  =  [[}t\"YP\"]^s\"}8qFC]];
	[ [[jMV"92\"P||xd"`eVQD_BN\"gMECT^>@erbf6[zQq]] ]  =  [[92\"P||xd]];
	[ [[3WElDb>l|2F`r"0FfxZVG{buQ6;g"=`toVCxN\"[\"bg]] ]  =  [[0FfxZVG{buQ6;g]];
	[ [[A[Ovt6tKKKmyG@k"5FfkvoN\""N^Nrz^=L_zIL\"lHe8k]] ]  =  [[5FfkvoN\"]];
	[ [[7R>\"^GAWUc_\"m\"e{mIZ3"e`hBpypt[??Cu"\"_HMM5]] ]  =  [[e`hBpypt[??Cu]];
	[ [[{i9@Tkx"PoqkwZ;{<|h?NI|wZwwm:N"vs<?n\"j:[@2\"Z]] ]  =  [[PoqkwZ;{<|h?NI|wZwwm:N]];
	[ [[ln<"[\"7]3C}eB>kVL\"c8\""jE_nb~?:x?6gKLpn8D0Vr1]] ]  =  [[[\"7]3C}eB>kVL\"c8\"]];
	[ [[|TN@@\"Mt\"]fIr"5iZbkdK={{pRK"7h<9i2R1~rZwK;x0K9]] ]  =  [[5iZbkdK={{pRK]];
	[ [[KRdD?0JS1{hTW;zxVQ"kxc2S_m~5z0Ad;{\"Ft?L"ir=X]{v]]] ]  =  [[kxc2S_m~5z0Ad;{\"Ft?L]];
	[ [[KQVoA"nYT0d"~cQ}[c:|:5;]Sc\"dn\"bg~^aY7\"ZKWs[pYrK]] ]  =  [[nYT0d]];
	[ [[~ajEXAKOBU8zUskVBT3E[="mA:Onh=j5rxv\""Q>UzACF6zAMn;k]] ]  =  [[mA:Onh=j5rxv\"]];
	[ [[4\"HS"mC^dZSGwMa9`]ThY`]y{AwN1^jv\"IXm"vI_YP2@w_Ol8M]] ]  =  [[mC^dZSGwMa9`]ThY`]y{AwN1^jv\"IXm]];
	[ [[7oB\"W5PRhNF4h"wvq_\"s\"~}\"1ic;?Oxc]"3C|UMTzgMXCfCMc]] ]  =  [[wvq_\"s\"~}\"1ic;?Oxc]]];
	[ [[AH;A24c"n`jLv\"{e]\"VcC>gL;5lDx?VHmROOH0l1S@rk"A0J8tM]] ]  =  [[n`jLv\"{e]\"VcC>gL;5lDx?VHmROOH0l1S@rk]];
	[ [[4tw3nAsW1[iDrt"Qc=\"0w5W:[PB{{U\"sjXuRi4"j<7\"zgm2IH\"]] ]  =  [[Qc=\"0w5W:[PB{{U\"sjXuRi4]];
	[ [[_Vdew6^\"|P12yTAXa?MyVmA"=r8h6IpPb\"3D6EA"FX>uYBqByE<Y9]] ]  =  [[=r8h6IpPb\"3D6EA]];
	[ [[|\"m~dssFJ"fyW2N\"j5K:l}0\"\"~G`S6B}\"`"yK[^aiS0:7~>nL4]] ]  =  [[fyW2N\"j5K:l}0\"\"~G`S6B}\"`]];
	[ [[36fY2MmQA={K4HcV3xRVWP^G}"tJUaqaX3A1bipaY4Kny{]u"n2c\"cu]] ]  =  [[tJUaqaX3A1bipaY4Kny{]u]];
	[ [[Pg2`"U}>HE4gf^E~Zarro3Xzi=\"wc^b5"L^\"SFLc>e3\"nknZ@yym4]] ]  =  [[U}>HE4gf^E~Zarro3Xzi=\"wc^b5]];
	[ [[{7J=0;??"jvzERv4\"\"aShE1@g^Hz\"Mw4]=[kg_"v>N87N<t\"MEBe]] ]  =  [[jvzERv4\"\"aShE1@g^Hz\"Mw4]=[kg_]];
	[ [[Ct^qj0E[_K4\"V\"D"G]lV=FDt8"i3LLu;9bFgzahSo0}|D}Bj1BrU}OF]] ]  =  [[G]lV=FDt8]];
	[ [[L9u@lJ\"d\"Kr^}?W>"pWvV]Te9O\"N"T\"cPB;|g9zJjw\"jtbqF@=_v]] ]  =  [[pWvV]Te9O\"N]];
	[ [[mhdKCdbkysR\"\"HnY|Bo"YY]\"6va\"\"P[CzW@eTH0af0aq"0p7do;u]] ]  =  [[YY]\"6va\"\"P[CzW@eTH0af0aq]];
	[ [[gC8"y>e9L7qIcIfPMwn"LK]{RX_J[vm1\"L{7\"efyxa[5iWYsY9Zl\"t]] ]  =  [[y>e9L7qIcIfPMwn]];
	[ [[4qwF\"{;N]B"{d{]ZnIIJNAd}B?gczD3FT2Iw"q~]dpy9^wJC?{knP7;0R]] ]  =  [[{d{]ZnIIJNAd}B?gczD3FT2Iw]];
	[ [[`wM~_\""}vVXbqe\"U\"i"q<R]fQxEBUz6Lo<iOO9jLgNjpzv^Fy64oej{]] ]  =  [[}vVXbqe\"U\"i]];
	[ [[R0aIm7V"|tGTP"at7[aT[Sq3`[V9C3Q<zswVVC\"B?dX<K7OiJ2n}xQW\"@]] ]  =  [[|tGTP]];
	[ [[n;G{CV_H}j8kS6GKh"rgOvib2~^T6M0Ik"XmfV\":myfMqo975y5QA?}L:d]] ]  =  [[rgOvib2~^T6M0Ik]];
	[ [[itqB}bL"?I{~="8j0s:kc>Q>^I\"KHpW`\":cZxmf5URJT^y|FvO3\"C^c_]] ]  =  [[?I{~=]];
	[ [[I\"jV6:FtFZ2[M\"KgO[S7}"w?V\"<iMFC"h`Q?xgu\"\"=<xoh~1P86ImZz<]] ]  =  [[w?V\"<iMFC]];
	[ [[^1n608NPjQQYR"tMoCi5?0Jg9`40U\""s<O`qCDvpu?^\"|yaLGa_2@r\"\"q]] ]  =  [[tMoCi5?0Jg9`40U\"]];
	[ [[2R[hSgJim}5y99O8Tr1MLlPz@4U"sGJto@u>~8NORAhWm0\"^Ns"ehrB2E{<4]] ]  =  [[sGJto@u>~8NORAhWm0\"^Ns]];
	[ [[w:dlq{3ufbOhbze26:Ra9}h"OJwA58liV\"~7mzLb^"SsLsHa\"Lb<@\"Z3?kU]] ]  =  [[OJwA58liV\"~7mzLb^]];
	[ [[U<7o5_o6{rqkDA{g<\"~uOgm\"eM>iLG"o3y|PWVvGo8TGz"8VNi[_qxjYlvj3]] ]  =  [[o3y|PWVvGo8TGz]];
	[ [[oz5fYXqYvzMW`nXZY"R{BO^wpTRe|HU}iZ"]GNtpkIWaLklK{KD3\"o2K0r^=Ma]] ]  =  [[R{BO^wpTRe|HU}iZ]];
	[ [[wqvG\"gxU@Z@?Aht>zx>3L<\""gQIdkaMs:T":Kx7w\"eg5htTT8N7b0tNd;sv4]] ]  =  [[gQIdkaMs:T]];
	[ [[?MCm03uuo"6\"W:0v2qs`]pI\"Cb6>p>MA[L~ry?y"7H{l\"=dMz4j0~XzU<noDH]] ]  =  [[6\"W:0v2qs`]pI\"Cb6>p>MA[L~ry?y]];
	[ [[eXjzh\"\"e[bI9{y_4b<XVaDK"W4^_nmh<q0hN\"]EKn:[\"oEA"Us\"eT6DnywM7]] ]  =  [[W4^_nmh<q0hN\"]EKn:[\"oEA]];
	[ [[uU\"N@e`CS]{bTBj=N9^;q\"Z41"e8eMmQP{Z\"Nr~p"|VB1oc_[E\"|WLcgGKv]25]] ]  =  [[e8eMmQP{Z\"Nr~p]];
	[ [[8kPCv<"\"X^?{>x:MGyqT=N6E:1Cu]L6\"y\"HL4q{M0<n{n0K{uN@u4kusN"s}4b=]] ]  =  [[\"X^?{>x:MGyqT=N6E:1Cu]L6\"y\"HL4q{M0<n{n0K{uN@u4kusN]];
	[ [[SLnL[svP\"JxR34"1\"M8Sg`eKOl^PC"Bns}TrTbZ\"Op{OJM|L]U~g\"v3TLUYQVX]] ]  =  [[1\"M8Sg`eKOl^PC]];
	[ [[eU1\"a_\"Win"zE5a8Wv3{\"[=\"5V0_B@L0\"4MTk6UM5Tro6}7m5"q9AEy7J1Bissd]] ]  =  [[zE5a8Wv3{\"[=\"5V0_B@L0\"4MTk6UM5Tro6}7m5]];
	[ [[IY80"YdnJ`\"fAqA<I\"35q9ic^I\"uVq7dt~2wcyM<"^hOKd}L?`~A\"vpS{\"`n}5[}]] ]  =  [[YdnJ`\"fAqA<I\"35q9ic^I\"uVq7dt~2wcyM<]];	
}}
