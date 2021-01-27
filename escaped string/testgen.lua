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
	[ [[^CJ8nCVPos\"dPNALi"Vbpbx=F6YF"zgo94=]] ]  =  [[Vbpbx=F6YF]];
	[ [[y~jTheN"?Y@xUo?SmS"Fc^}>HY@Y8x\"m\"]a]] ]  =  [[?Y@xUo?SmS]];
	[ [[t5\"\"O"[fTA`3u\"P@v0}"7_mQr}Tw{D=\"@sFs]] ]  =  [[[fTA`3u\"P@v0}]];
	[ [[[u5I\"b6=:vyit"O\"YMInw"^m1qCfzkFy[;T>]P]] ]  =  [[O\"YMInw]];
	[ [[~<c_GO8`4"@[qpdJYFC"n@8h\"gER|7]jl;AKkXd]] ]  =  [[@[qpdJYFC]];
	[ [[ON4GLiBBIyh~U"IC|5qz|v76d"IuY2\"_W4RAYH<]] ]  =  [[IC|5qz|v76d]];
	[ [[<ZCeKN]"B7JqPEJdWDR}kJ1}2"T>E<1h:>`=d\"jn]] ]  =  [[B7JqPEJdWDR}kJ1}2]];
	[ [[kQHza?qUkJT@x\"__CZ"N0Mszo\"=8GrS"NS9?FBq]] ]  =  [[N0Mszo\"=8GrS]];
	[ [[]Gl8]j9T>RMv`qP<^"lW_:Nvw[l^\"fScqd"{jShc]] ]  =  [[lW_:Nvw[l^\"fScqd]];
	[ [[KB;z:hZ=pmi\"]VXbw:4"Dbl0_pOQ"w^gyv|Sj1|kxs9]] ]  =  [[Dbl0_pOQ]];
	[ [[bGJ3gk2<kr\"\""4FzZ4``TlON|__G6c"QASK`\"eMOl]] ]  =  [[4FzZ4``TlON|__G6c]];
	[ [[Q_@w"<RWU@x2XL<ry:Z1"h\"Oy\"KGkck3v1JuF{\"qzl>]] ]  =  [[<RWU@x2XL<ry:Z1]];
	[ [[iS{]E?<G>\"~S[t3"WlK9o0"j<}\"\"Z[IbnS8Rxy\"Y=v]] ]  =  [[WlK9o0]];
	[ [[uY5J~6E\"0W[7y;1K1<j\""}\"\"Q|ecSZ8IbtD"Hh9bA1]] ]  =  [[}\"\"Q|ecSZ8IbtD]];
	[ [[XU3;dY|QhO">\"\"Uo`MhgcHAlW5R"bG~\"Py}Yww\"=wr]] ]  =  [[>\"\"Uo`MhgcHAlW5R]];
	[ [[qys">Cm[9Q@3Xz"?@0oM3Aw^XvvFcHve^KIB\"iD@RhD;|O]] ]  =  [[>Cm[9Q@3Xz]];
	[ [[9mAh1D?5]bKz{@}J"VVP|J\"v32<<ByYzh"`>7ut|yqwO;c]] ]  =  [[VVP|J\"v32<<ByYzh]];
	[ [[3@VR6O\"9V_=\";"]oQ<w{PwS\"<|e4F9"uUtBw`f?AZmfzla]] ]  =  [[]oQ<w{PwS\"<|e4F9]];
	[ [[[[zy3Ml_MXlp"R4lwl<NVxf\"k3]4w5pwH?=G`;h"<;XktOA=Q]] ]  =  [[R4lwl<NVxf\"k3]4w5pwH?=G`;h]];
	[ [[g0@lj"69s\"0<yMQGIE"\"q\"yg5\"1UDgG\"6lO^ryvAT];DA@]] ]  =  [[69s\"0<yMQGIE]];
	[ [[[?fx=?RW84@>rBH\""@RILnT5X1Z>xK1UUX;BCXE\""cYTA:8gM]] ]  =  [[@RILnT5X1Z>xK1UUX;BCXE\"]];
	[ [[?aA<G=WvaG`OmQ[AgY"\"Tj8EoAgcLZ"QOkM1MuS~UK3;l1rbI^]] ]  =  [[\"Tj8EoAgcLZ]];
	[ [[Pr<7G\"L70I}thb~\"_tdn"><CG9?F`P:\"7I"E\"yDwBx3A2B0]] ]  =  [[><CG9?F`P:\"7I]];
	[ [[0MndVjuQJ9~ACz?Y0DSf"yDw8Z\"?~v03sD@q?;_hT|FXg0"vgwEw]] ]  =  [[yDw8Z\"?~v03sD@q?;_hT|FXg0]];
	[ [[k_Z[o5u\"JdIvWkUEcS7>~z"V=IkBN"`0q3{;ouYF1i{Qy;>_t5:;]] ]  =  [[V=IkBN]];
	[ [[n22?m06nQY"Q64<\"MS57\"\"vg5=Z_2^>Q@a>nD19V"`\"2]_OsG]] ]  =  [[Q64<\"MS57\"\"vg5=Z_2^>Q@a>nD19V]];
	[ [[yxyeK7nZv\"gZAf~rbL\"c"_j>C1~5G?["axE]f\"5CPwUM1;xzo\"]] ]  =  [[_j>C1~5G?[]];
	[ [[_Yd"[ol22{WGLuF\"H8R\"pfu^m|;<wDf`"OSLHgeDVBe\"f96Rgyi]] ]  =  [[[ol22{WGLuF\"H8R\"pfu^m|;<wDf`]];
	[ [[~f|LoLw^|XOQV"C\"rEHno`x\""n|QB\"Q{IzNxwDCskI>\"`l]U\"]] ]  =  [[C\"rEHno`x\"]];
	[ [[mh2qzN23@wlRTkrHQS`1"y_N]LbYh\"L3IY^^_3|Xpuv{"09\"Z`<aN]] ]  =  [[y_N]LbYh\"L3IY^^_3|Xpuv{]];
	[ [[C:W8jcQk79<rP"9L\"EpL1ec=E]g44?@xY4^I"Baj{mk19Zrhu=FkhC7]] ]  =  [[9L\"EpL1ec=E]g44?@xY4^I]];
	[ [[cH5SnR`?v?aMn~0376s"z9o6ftpWj0"\"LJANDoLRqO9~`u\"hSDy|a[]] ]  =  [[z9o6ftpWj0]];
	[ [[C@Z\"{<jrp8f`E~?Mb~gwP=<ei>"X_J<4az4sn<_@c__IHt"lQA~{8KB]] ]  =  [[X_J<4az4sn<_@c__IHt]];
	[ [[shFud=z:OUbRHr67>Gf7p:~C"E0[N<|xGMGi8aL;=T"\"vSb3KGnFOXi]] ]  =  [[E0[N<|xGMGi8aL;=T]];
	[ [[FVLa?>YcCpn6>:"ac8x\"C"B7oPSihqmzi]_pdYs`}xEhna~8o1sC?k<:]] ]  =  [[ac8x\"C]];
	[ [[{<op|PMSaF[KVmhls39li"fgEvz\"77KUS:uP\"`pJqt>j`W=k9"ogqM5Z]] ]  =  [[fgEvz\"77KUS:uP\"`pJqt>j`W=k9]];
	[ [[FVL"@5ksc<o=8lMcW\"\"MgOSFx6o"h;iym;KZz\"WC\"cVYNL\"q]stY:AVn]] ]  =  [[@5ksc<o=8lMcW\"\"MgOSFx6o]];
	[ [[M7_{vuTMmFyjE^YvLsF[Y"ZdmjA"<2CCyx>~7Eb|\"kpT~A~`H1_Ru[6PnH;E7B]] ]  =  [[ZdmjA]];
	[ [[03v64pY">Z5Pv:@m9EW;e^_xxYtJIxz{tfr5"Ej?\"DB\"aflch}O\"Z\"Vpw?G]] ]  =  [[>Z5Pv:@m9EW;e^_xxYtJIxz{tfr5]];
	[ [[=mBzhRs"sxdAgST"OGy3BCi\"g]^:4gr\"<cdj4T}SYe\":KEhjKSIpHtTusE}BC]] ]  =  [[sxdAgST]];
	[ [[Qt2N~\"rp:f9\"B52XTB~u|"hdVBoLqy7m@s]E<A^"hMLD@NvS|u\"R2:32pKW5Cs]] ]  =  [[hdVBoLqy7m@s]E<A^]];
	[ [[ULovJGDNUAs1]y2P@4_2vOfQ\"m\"1K:"CwAOjx=4dl":zJdM~b0}qmqX9\"^Qv[d]] ]  =  [[CwAOjx=4dl]];
	[ [[@H`qK"V[SvRte7{;0Iy3`A[yqeoK\""nW}2:BUB\"P1sTf;\"^o8\"SyaW{j1I}OT]] ]  =  [[V[SvRte7{;0Iy3`A[yqeoK\"]];
	[ [[9ha"P`w|\"bl\"{^O\"Fo?TE]^28h\"<`MB6j3MQsx^fGQzcXx<PKfl\"m>"gD=:@?]] ]  =  [[P`w|\"bl\"{^O\"Fo?TE]^28h\"<`MB6j3MQsx^fGQzcXx<PKfl\"m>]];
	[ [[RH^b>qj\"5zK=VP9qm3\"1\"]oO`z"lQ;mwo6vnnPvGHC\"x7g~UBUd}hH?^"zj9<6]] ]  =  [[lQ;mwo6vnnPvGHC\"x7g~UBUd}hH?^]];
	[ [[tVcUJbLne\"2uW\"b"q=vHpKj9Kv\"II\"wAJk<i^BPx\"IzD`N<2UfCyHQ"hyw^o[hC=]] ]  =  [[q=vHpKj9Kv\"II\"wAJk<i^BPx\"IzD`N<2UfCyHQ]];
	[ [[YOBU4rwZV`1[oE\"h:D"of_bXYU\"h~"HJK?}~FH8t\"6YRZe@Ko^1w9\"iY{F~V`C\"F]] ]  =  [[of_bXYU\"h~]];
	[ [[a\"bg;\"\"~QO\"K[~VScpgO3vtA"}:\"MZd[1BDR1Yi8i[Y5F5UFu>Y{"~_wzv;313UI]] ]  =  [[}:\"MZd[1BDR1Yi8i[Y5F5UFu>Y{]];
	[ [[IcZjp25tNZ"XuOb}oT\"I`ZOfOj@\"M"\"j|Az[a;nu9nv5=BDAV~R7Wx>NE^r0FgE\"b\"]] ]  =  [[XuOb}oT\"I`ZOfOj@\"M]];
}}
