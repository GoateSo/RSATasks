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
	[']\"Pab8D"j^:C5g]q8"i0WWQTzS~rmrBN4']  =  "j^:C5g]q8";
	['a;rDgbQPUt"XXjBLrKv8Sp2q"s\"m>1q43?']  =  "XXjBLrKv8Sp2q";
	['C`L>]f8"\"H\"S~t0\">[BfI5V{"A^{mBrM}']  =  "\"H\"S~t0\">[BfI5V{";      
	['bDUqZeB}NfQq;\"ylF"1sajUvK?2"D[8R;QP']  =  "1sajUvK?2";
	['T~zdvOB8L[JDE:}}"A04q|@~TS"bHX2zy{\"u']  =  "A04q|@~TS";
	['t^f1<UQuEM"evT\"dt\"y7a"vxTbnM21K\"DK|']  =  "evT\"dt\"y7a";
	['jBZ2u3hYrE"\"XZ61k?L0oL"AShw2nN<{_Xg>d']  =  "\"XZ61k?L0oL";
	['7?n"YWz<1>=ArI>J"Sgd]_^ht4{Nx>hKuooML\"']  =  "YWz<1>=ArI>J";
	[']dhtLBlmHn[K\"0M"E~ZG1Wsl\"G"vUxP_PHUif}']  =  "E~ZG1Wsl\"G";
	['J6c2t\"h]q^@7iGUk"dh9VZ{QDr"ZKQ5|kBPhPT\"']  =  "dh9VZ{QDr";
	['e\"XfrNmS"qic~3sKq}[v?ti[Q?j"@GKJj51lQ<d\"']  =  "qic~3sKq}[v?ti[Q?j"; 
	['`YD|oiv|U"\"@}J]l>\"}PR"1_\"Qk_{u5}d4D\"t[']  =  "\"@}J]l>\"}PR";      
	['J7K9kXDjmnF9cKAmDQA"AK8pNi\"73f0wR{`"`qNMB']  =  "AK8pNi\"73f0wR{`";   
	['~ns`\"Nc\"agL]"DR8QW=fQllA\"D"UW:3ZguAjV\"']  =  "DR8QW=fQllA\"D";     
	['44yC]Zv2?"u4mwE";Xo\"C7^uG=2bl]mpMk\"efg7D']  =  "u4mwE";
	['M=<\">"qbGjgawMm<rvsGg\"?e"W\"2r}|NmeC1Qsn']  =  "qbGjgawMm<rvsGg\"?e";
	['`O?ylu=X"kNs]vwmZ6\";X?\""VV5h\"G4xNc>UF_n_']  =  "kNs]vwmZ6\";X?\"";
	['i}\"=xiXjh"_?M]Ih0"|h{I|Yb9\"ZaNOBi?^ZQ\"hgY']  =  "_?M]Ih0";
	['Axm\"0Q59bJeDIs\"o`R1"Or8\"I~"v5KO9P:Gese=Go?G']  =  "Or8\"I~";
	['9}O^eYTRC"j\"K1f7^oFyw\""?rUqQ0rD0SuYxf1pNd\"OW']  =  "j\"K1f7^oFyw\"";
	['To=|wKEQNdE6qI"^~2Y_}NIm8SJeN2IL73"S@5M3AMbDA\"l']  =  "^~2Y_}NIm8SJeN2IL73";
	['fDGfgdDeLAD"8\"EIxRDZ"J7\"vTUglF5~}4[`4WYN9eMTw`']  =  "8\"EIxRDZ";
	['6\"@s[]Lly19[4"IRG`4kD{B"hBgdJD\"lC3N8irrUw^H}A4l']  =  "IRG`4kD{B";
	['LehY|UVsZDe{e"\"Rw@Dm<2hP"4_WGOf4ePMlDrKs?rJuWhZWf']  =  "\"Rw@Dm<2hP";
	['a49yHB\"\"o0sP5\""VEii9\"}g^_x3tqN~_rs@f8eP6"u|myU']  =  "VEii9\"}g^_x3tqN~_rs@f8eP6";
	['6P\"|<M[Vo"`fho0}PxWTZ{"j8pLDACg0\"Gjli3ShGV2UGMjK']  =  "`fho0}PxWTZ{";
	['3IAO498oyb"\"1XP_HY?q0w=\"\"fGm{7~rneE\"GT"B`imum?']  =  "\"1XP_HY?q0w=\"\"fGm{7~rneE\"GT";
	['Z:P1?LRcHPFyz\"FGS"~SndmV5catBb`uue]3B0"}=U{\"A`>ea']  =  "~SndmV5catBb`uue]3B0";
	['GRPQ\"SF]@\"[MV="lmE~c"jS`:hN\"V\"]bIoyIj0a}:tt64Mj']  =  "lmE~c";
	['A\"wK>qhv0|t}rwO\"ACr8"SOcnf}2Ek8A\"K6E@N0IEhq"vM=Xb6']  =  "SOcnf}2Ek8A\"K6E@N0IEhq";
	['lbm\""Ku@\"?6|{^r4\"B"N88P=2><dK\"skku5xOxU1O:Bk6yz;>']  =  "Ku@\"?6|{^r4\"B";
	['~LS[KEEWe[Oqrp`R8\"dnO"[l@yRQBzZ~g=:5|P<8"\"bU2NlsH?8']  =  "[l@yRQBzZ~g=:5|P<8";
	['mwiF\""P2\"LGY"r`n}wXPx1J5tC?XK|MgddJ|eY=UF8?hNA6y~m;v']  =  "P2\"LGY";
	['QLHUwPL3An`wMNv"oNmCbXN[3s8To5`q"m=NpF\"w3:Q84s2eZ;\"2=']  =  "oNmCbXN[3s8To5`q";
	['yh[aU@[4yc?bKW4Cu"QxbiA\"s0ZJA==foB]Jj\"P?QvMJGV"F<5<332']  =  "QxbiA\"s0ZJA==foB]Jj\"P?QvMJGV";
	['ZK`1[_"w]3hI0=Y|VBpU_"}F8PY@ex_Z7\"TCep:]tA`tYuHq[RUTJ{J']  =  "w]3hI0=Y|VBpU_";
	['facu1~=_"xCrtd3YgmJS9=_kCA<8AABx^BnMvcF4>wV\"ru"^VSVi\"~']  =  "xCrtd3YgmJS9=_kCA<8AABx^BnMvcF4>wV\"ru";
	['6tYQMGTs\"\"}zR\"3bvB4YvgeeK9h";7U0M~4y2"L9fipU{]pG{B80ga']  =  ";7U0M~4y2";
	['?@O~USx"baHu[htE53Em~0I0>cCG8o|~ZW:v\""Mur<LWv0zekrb2k~M}]']  =  "baHu[htE53Em~0I0>cCG8o|~ZW:v\"";
	['1f[ZK4X9Q=20_"p\"f\"cnY=^s=8"\"^P42dvB>`NVXK<P_A]16O7X?3n;']  =  "p\"f\"cnY=^s=8";
	['pWhBJy^6I2:@`@g7"t4S^=814nej~M?Vet\"TG3hXub"gg~^2QjjJFL\"W9']  =  "t4S^=814nej~M?Vet\"TG3hXub";
	['K9DDL[81@=RnP";UZT\"9R\"\"1?a}SqV6~2^ueb";p~1Z35K3vAj{^27{z']  =  ";UZT\"9R\"\"1?a}SqV6~2^ueb";
	['yG{^vA"2RO<h\"Yz|{OeCCdX`:s=SY<x]2W~E3icXr1Rs"?YU\"44{>`J8;']  =  "2RO<h\"Yz|{OeCCdX`:s=SY<x]2W~E3icXr1Rs";
	['f6RJTGL;LtJQ[ZpI6c0MzM}o"\"N8:igFK[wNoN\"^3x|k?135n9;c"uPuz@']  =  "\"N8:igFK[wNoN\"^3x|k?135n9;c";
	['`nBqRcq9DnOU{X_ACGM\":<"t{YATHD:3nSRs1>Ik8wNL5<G"=dTN7}@tm\"L\"v']  =  "t{YATHD:3nSRs1>Ik8wNL5<G";
	['bA`\"\"~W"uSY?8I8a6w5v=FRjEAhb"bgbzls;iWe1o>\"C8Y72;\"?mOl~box`c']  =  "uSY?8I8a6w5v=FRjEAhb";
	['iJvGU\"DUc"[~@E{R":L\"IDAUJ>\"hgf213_X=a0\"MoZmEFUnsF:0WV>9^L}^PD4']  =  "[~@E{R";
	['o<YPl=9s@b8mD?^|7M\"A=5"|}l1QU@G\"WTp"4uwEWN5L4aFGb_9@n\"gjW;OQUNo']  =  "|}l1QU@G\"WTp";
	['Ix0M|ulfvMAU0WGodPCaY}oX"z_?\"9Q`^]qCVJ9s<@|hM\"`EM;H<G"pZcDl;BtAd']  =  "z_?\"9Q`^]qCVJ9s<@|hM\"`EM;H<G";
	['3m3i{g0V`~b\"wRkmgM"Ou|~W\"dzUZ`ToZ;UX<"7j6{d6\"[{Q<xkW\">4~oEfwV0O']  =  "Ou|~W\"dzUZ`ToZ;UX<";	
}}
