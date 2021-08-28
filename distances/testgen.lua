--[[
output: 
    possibly empty arrays of vector3s
]]
local v3 = Vector3.new
return {
    [{}] = 0;
    [{v3(42, -7, 45)}] = 0;
    [{v3(-75, -70, -15)}] = 0;
    [{v3(-19, 11, -43), v3(14, -17, 92)}] = 141.76741;
    [{v3(-9, 96, -76), v3(-30, -92, 99)}] = 257.701385;
    [{v3(27, 82, -68), v3(0, -49, 54), v3(95, 98, 76)}] = 160.049988;
    [{v3(96, 61, 61), v3(-96, 54, 49), v3(-76, 87, 0)}] = 62.369865;
    [{v3(45, 23, 53), v3(83, 39, -55), v3(81, 29, -16)}] = 40.311287;
    [{v3(-20, 47, -62), v3(-8, -35, 16), v3(-72, -89, -83)}] = 113.806854;
    [{v3(-14, -12, -63), v3(-66, 88, -56), v3(72, -94, -16)}] = 112.929184;
    [{v3(50, -33, -78), v3(-55, -64, -11), v3(-29, 54, -45)}] = 122.061462;
    [{v3(15, -22, 77), v3(67, 52, -2), v3(89, 35, 71), v3(-54, -96, 22)}] = 78.115303;
    [{v3(47, -98, 49), v3(60, 26, 61), v3(-56, 96, 43), v3(20, 91, -18)}] = 97.580734;
    [{v3(13, 97, 19), v3(-5, 64, -66), v3(91, 53, 59), v3(46, -49, -48)}] = 92.940842;
    [{v3(-47, 41, 55), v3(-83, -20, -97), v3(-47, -26, 10), v3(92, 97, -34)}] = 80.709358;
    [{v3(22, 33, 63), v3(-38, -53, 64), v3(18, -97, -9), v3(-2, 65, 25), v3(-3, 58, -40)}] = 55.172459;
    [{v3(-93, 48, -34), v3(15, 69, -26), v3(85, -9, 29), v3(-56, -76, 71), v3(-91, -44, 6)}] = 80.461174;
    [{v3(30, -46, 26), v3(44, 100, -12), v3(11, -86, -98), v3(75, -92, -67), v3(61, 7, -94)}] = 71.365257;
    [{v3(-98, -17, 64), v3(36, 38, -54), v3(88, -89, -62), v3(-47, 22, -87), v3(14, 76, 22)}] = 87.77243;
    [{v3(-67, -73, 38), v3(-51, 91, -93), v3(42, -26, 85), v3(75, -79, 90), v3(-70, -9, -64)}] = 62.633858;
    [{v3(-48, -15, 98), v3(10, -52, -13), v3(94, -24, -89), v3(91, -37, -73), v3(74, -76, -35)}] = 20.832666;
    [{v3(79, -75, 77), v3(5, -37, 76), v3(26, 28, 16), v3(-88, -92, -4), v3(74, 72, -63), v3(35, 50, 63)}] = 52.668777;
    [{v3(-34, 86, 93), v3(61, 79, 60), v3(-14, -37, 47), v3(42, 47, 27), v3(-74, -49, 83), v3(13, -41, 88)}] = 49.25444;
    [{v3(-8, -15, -82), v3(-3, -22, 13), v3(14, 80, -28), v3(-47, 11, -52), v3(-12, -73, 77), v3(66, 47, 93)}] = 55.650696;
    [{v3(91, -95, -97), v3(75, 55, -33), v3(98, 22, -9), v3(-79, -82, -8), v3(-56, -37, 20), v3(-16, -76, 33)}] = 46.840153;
    [{v3(-35, 93, -13), v3(96, 20, 11), v3(-13, -37, -30), v3(35, 50, -74), v3(46, -96, -39), v3(-66, -3, 72)}] = 83.922585;
    [{v3(-80, -73, -4), v3(100, 68, 99), v3(24, 50, -2), v3(88, -15, -20), v3(-24, 96, -57), v3(-54, -72, -47)}] = 50.259327;
    [{v3(95, -73, -36), v3(-12, -46, 14), v3(-38, 42, 27), v3(-58, 64, -28), v3(75, -74, -81), v3(-51, 52, -25)}] = 14.21267;
    [{v3(-67, 35, 75), v3(20, -66, 26), v3(-80, 92, 54), v3(-49, -39, 39), v3(-17, -85, 67), v3(71, 77, 42), v3(39, 11, 48)}] = 58.403767;
    [{v3(-78, 77, 89), v3(97, -61, 77), v3(-70, 98, 43), v3(-55, -29, 77), v3(89, -14, -68), v3(98, 4, -36), v3(-87, 83, -6)}] = 37.802116;
    [{v3(-57, 15, -65), v3(-6, 43, -98), v3(20, -16, -66), v3(1, -36, -28), v3(24, 59, -6), v3(-45, 63, 40), v3(-47, -62, -40)}] = 46.957428;
    [{v3(-8, 64, 88), v3(-86, -64, -31), v3(49, -20, 34), v3(-35, 87, -76), v3(-86, 9, 71), v3(62, -15, 63), v3(-49, -79, -31)}] = 32.171417;
    [{v3(-33, 53, -73), v3(-82, 53, 93), v3(-37, -81, -11), v3(58, -27, -77), v3(2, 58, 99), v3(-45, 17, -46), v3(-4, -55, -78)}] = 46.572525;
    [{v3(-87, 58, 11), v3(-24, 35, -69), v3(2, -64, -96), v3(87, -60, -58), v3(20, 27, 33), v3(-16, 68, -100), v3(77, -92, -98)}] = 45.978256;
    [{v3(22, -67, 71), v3(-50, 76, 44), v3(56, 58, -50), v3(45, -31, 94), v3(35, 39, 75), v3(23, 53, -50), v3(-6, 83, -90), v3(58, -79, -21)}] = 33.37664;
    [{v3(-68, 89, -64), v3(42, 28, -69), v3(-36, -54, -71), v3(81, -93, 19), v3(45, 93, -39), v3(-18, -43, -16), v3(14, 53, 93), v3(26, 9, 59)}] = 56.885849;
    [{v3(85, -22, -18), v3(-8, 3, -52), v3(-98, 40, -24), v3(-95, 63, -42), v3(41, -71, 14), v3(84, 21, -100), v3(55, -67, 16), v3(-18, -28, 43)}] = 14.696939;
    [{v3(-76, 55, -44), v3(87, -93, -56), v3(48, -17, -100), v3(-81, -70, -19), v3(46, 70, 78), v3(-10, -34, -60), v3(-97, -53, 20), v3(-66, 34, -69)}] = 34.146744;
    [{v3(-58, 45, 55), v3(-9, 87, -73), v3(-57, 39, 66), v3(-71, 82, -93), v3(-16, 39, 27), v3(-58, 71, 77), v3(66, 74, 59), v3(15, 11, 56), v3(32, -79, 28)}] = 12.569805;
    [{v3(-15, -84, -2), v3(73, -6, 54), v3(55, 37, -78), v3(64, 34, 96), v3(-90, 15, 51), v3(7, -33, 85), v3(96, -1, 75), v3(-75, -24, -20), v3(-12, 49, -19)}] = 31.543621;
    [{v3(79, -50, -50), v3(13, -4, 14), v3(-85, 75, 37), v3(-58, -38, 28), v3(-5, 55, 21), v3(35, -21, 72), v3(70, 13, -26), v3(34, -13, 87), v3(-42, -72, 86)}] = 17.029387;
    [{v3(-27, -86, 71), v3(15, -93, 10), v3(-13, -62, 17), v3(-85, 78, -10), v3(-96, -96, 3), v3(73, 1, 69), v3(58, -15, 48), v3(32, -66, -56), v3(36, 79, -16)}] = 30.364452;
    [{v3(39, 38, 69), v3(-5, -1, 14), v3(74, 53, -68), v3(88, -24, -69), v3(-49, -35, 65), v3(-59, -48, 10), v3(-12, 53, -95), v3(-91, 58, 53), v3(-83, 92, -95)}] = 57.393379;
    [{v3(-51, 7, -13), v3(78, -85, -17), v3(86, -18, -11), v3(-36, -94, 89), v3(71, -80, -61), v3(-62, 0, -1), v3(9, 24, 75), v3(-67, -15, -98), v3(37, -80, -96)}] = 17.720045;
    [{v3(-49, 32, -73), v3(-37, 64, 45), v3(77, 45, -85), v3(20, 1, -84), v3(85, 50, -51), v3(-5, 68, -17), v3(49, -56, -13), v3(-56, -62, -10), v3(97, -1, 38), v3(-82, -48, -7)}] = 29.681644;
    [{v3(-22, 51, 10), v3(-6, -5, -17), v3(66, 56, -2), v3(-61, 45, 35), v3(-24, -46, -96), v3(-87, -86, 89), v3(61, -29, -50), v3(26, -80, 66), v3(76, 67, -40), v3(80, 98, -56)}] = 35.114101;
    [{v3(-28, 69, -64), v3(-16, -74, 39), v3(-81, -58, -83), v3(-99, -10, 70), v3(-46, -8, -42), v3(-52, 92, 88), v3(23, 78, 89), v3(-37, 1, 82), v3(-64, 23, -8), v3(-91, -49, 76)}] = 40.261642;
    [{v3(29, -86, -42), v3(-17, 15, 60), v3(-43, -47, 20), v3(-54, -21, -35), v3(-7, -31, -24), v3(-59, 20, -59), v3(68, -75, 87), v3(-92, -66, -90), v3(9, 6, -50), v3(-58, 82, -53)}] = 47.770283;
    [{v3(28, 42, 66), v3(88, 67, 66), v3(99, 10, -100), v3(-37, 79, 2), v3(50, 14, 21), v3(-11, -35, -2), v3(-74, 96, 37), v3(-84, 79, -59), v3(49, -14, -3), v3(-36, 93, -2), v3(-2, -62, 72)}] = 14.59452;
    [{v3(27, -88, -91), v3(69, 16, -34), v3(-10, 4, 9), v3(79, 20, -80), v3(6, 47, 77), v3(-49, -71, 16), v3(51, -38, 9), v3(68, 85, -11), v3(-22, 76, -22), v3(-82, 50, -77), v3(44, -76, 49)}] = 47.244049;
    [{v3(-62, 91, -23), v3(-26, -62, 65), v3(33, 65, -97), v3(-1, -98, -85), v3(-3, 50, 36), v3(59, 82, -12), v3(22, 32, -86), v3(-71, -34, -72), v3(-32, -48, 6), v3(78, 3, 51), v3(-39, -39, 35)}] = 31.160873;
    [{v3(-6, -17, -14), v3(72, -54, 63), v3(29, -25, 82), v3(-100, -14, 30), v3(86, 48, 40), v3(77, -96, -93), v3(-46, 75, -90), v3(-35, 26, 89), v3(-38, 66, 10), v3(-65, 34, 92), v3(-91, 32, -35)}] = 31.192947;
    [{v3(89, -89, 22), v3(23, 58, -88), v3(58, -25, 43), v3(-37, 13, 11), v3(-64, -52, 62), v3(-30, -45, -96), v3(48, 48, 77), v3(-49, -15, 71), v3(-51, 25, -20), v3(-18, -100, 5), v3(93, 83, -52)}] = 36.069378;
    [{v3(94, 20, -81), v3(39, -34, 33), v3(-81, 88, -91), v3(52, 31, -9), v3(-96, -81, 28), v3(-32, 89, -78), v3(-56, -17, -83), v3(-56, -7, -91), v3(-98, -94, -71), v3(99, -31, 64), v3(-90, -87, -85)}] = 12.806249;
    [{v3(-61, -78, 47), v3(-75, 16, 0), v3(7, -15, -71), v3(-74, -2, -48), v3(-76, 14, 18), v3(24, 0, 42), v3(21, -64, 5), v3(-9, 63, 36), v3(-24, -45, 68), v3(-46, -50, -83), v3(-33, 99, -7), v3(-6, 82, -28)}] = 18.138357;
    [{v3(-71, -40, 89), v3(5, 99, -69), v3(18, 47, 94), v3(-75, 72, 15), v3(-18, 72, -83), v3(19, -2, 36), v3(-4, -52, -79), v3(54, 10, -16), v3(79, 2, 1), v3(61, -57, -56), v3(-51, -34, 18), v3(56, -11, -33)}] = 27.092434;
    [{v3(79, -92, 11), v3(-59, 79, 57), v3(22, 64, -27), v3(60, 59, 36), v3(-53, -74, -35), v3(13, -68, 51), v3(39, 42, 25), v3(57, 85, -57), v3(-43, 28, -73), v3(100, 26, 39), v3(38, 3, -43), v3(26, -32, 88)}] = 29.171904;
    [{v3(23, -92, 10), v3(4, 93, -34), v3(-30, -47, -13), v3(6, 19, 4), v3(67, 19, 44), v3(-6, 9, 53), v3(-22, -93, 38), v3(-24, 36, -89), v3(-76, -26, -21), v3(23, -67, -39), v3(-21, -65, 76), v3(-61, -33, 47)}] = 47.212288;
    [{v3(-37, -23, 89), v3(86, 25, -41), v3(74, 72, -52), v3(-63, 9, 75), v3(7, -99, -69), v3(-94, 26, -83), v3(9, 26, 41), v3(-16, -26, -8), v3(-6, -10, -35), v3(-82, -8, -47), v3(86, 58, -52), v3(-36, -36, 58)}] = 18.439089;
    [{v3(74, -55, -92), v3(-67, 88, 37), v3(-16, -83, -79), v3(20, 85, -26), v3(-29, -77, -48), v3(52, 40, 51), v3(-96, 97, -43), v3(31, -48, 62), v3(-33, -57, 50), v3(3, 48, -46), v3(98, 41, 57), v3(-73, -85, 7)}] = 34.146744;
    [{v3(-55, 44, 13), v3(58, 87, -12), v3(-60, -70, 11), v3(-39, 55, 36), v3(-48, -44, 99), v3(94, 80, 71), v3(-98, -18, 53), v3(20, -25, -56), v3(86, -27, -82), v3(63, -50, 91), v3(57, -80, -81), v3(-80, 13, -3)}] = 30.099834;
    [{v3(-63, -93, -72), v3(-79, 18, -43), v3(-33, -5, -33), v3(43, 18, -9), v3(-39, 82, 72), v3(-94, 60, 89), v3(49, 65, -81), v3(-65, -6, -31), v3(-70, 44, 84), v3(12, 58, -54), v3(64, -63, -9), v3(-29, 65, -41)}] = 29.274563;
    [{v3(57, -72, 40), v3(68, 74, 81), v3(19, 93, -72), v3(89, -91, -76), v3(-89, -96, 96), v3(29, -25, 67), v3(-42, 38, -13), v3(-22, -9, -96), v3(-82, -87, 10), v3(-25, 52, -15), v3(-75, 80, 40), v3(-12, 30, -26)}] = 22.113344;
    [{v3(20, 81, 94), v3(-49, -54, 4), v3(35, 96, 2), v3(-12, 17, 5), v3(-30, 77, 47), v3(47, 95, -31), v3(-8, -99, -60), v3(33, -65, -9), v3(-92, 12, -96), v3(-18, 21, 99), v3(-11, 71, 22), v3(1, -84, -51), v3(-77, -70, -83)}] = 19.672316;
    [{v3(72, -27, 56), v3(-5, -79, 61), v3(-85, 42, -16), v3(-78, 74, 66), v3(80, -86, -21), v3(25, -67, 53), v3(49, -41, -67), v3(-79, 61, -42), v3(-57, 1, 25), v3(68, 59, -74), v3(87, 9, -59), v3(78, 44, -78), v3(44, 29, -3)}] = 18.466185;
    [{v3(66, 94, -16), v3(-61, 71, -21), v3(-59, 16, 87), v3(-20, 91, -43), v3(88, 57, -57), v3(48, -74, -93), v3(-88, 82, -55), v3(3, 91, 65), v3(-67, -68, 99), v3(0, -41, 21), v3(-59, 93, -60), v3(3, -8, 7), v3(-35, -86, -11)}] = 31.416555;
    [{v3(-36, -52, 72), v3(-84, -33, 52), v3(71, 47, -14), v3(-18, 12, -6), v3(95, 37, -15), v3(38, 69, -41), v3(-11, 6, -69), v3(-81, -44, 13), v3(60, 5, -99), v3(32, 45, 67), v3(-48, -87, 50), v3(-25, 37, 57), v3(38, -49, -97)}] = 26.019224;
    [{v3(85, 64, 82), v3(-15, 87, 23), v3(100, 33, -1), v3(50, -12, -45), v3(100, 25, -18), v3(92, 68, -74), v3(-19, -7, -65), v3(45, -57, -49), v3(82, -65, 35), v3(63, -12, -20), v3(10, 89, 10), v3(5, -25, -57), v3(-52, 16, 57)}] = 18.788294;
    [{v3(-30, -84, -42), v3(-89, -77, 34), v3(17, -4, -20), v3(12, -52, 13), v3(-53, -27, 55), v3(-62, 52, 8), v3(3, 99, -23), v3(-21, -51, 45), v3(24, -37, 11), v3(59, -50, 91), v3(-45, -80, 71), v3(-41, 38, 96), v3(93, 63, -8)}] = 19.313208;
    [{v3(67, -78, -93), v3(-33, -60, 13), v3(41, -37, 88), v3(-69, 71, 10), v3(38, -53, 15), v3(68, 75, 70), v3(-63, -58, -5), v3(36, -72, -64), v3(65, 46, 8), v3(-88, -91, -75), v3(40, -58, 25), v3(-29, -43, 28), v3(-56, 48, -83)}] = 11.357817;
    [{v3(-28, -79, 98), v3(8, -32, -11), v3(-45, 85, -13), v3(82, 6, -90), v3(27, 65, 86), v3(73, 94, 71), v3(-90, -47, -28), v3(-50, 89, 95), v3(-23, -24, -61), v3(-59, -73, 65), v3(41, 54, -20), v3(-97, 66, -88), v3(76, -25, 79)}] = 45.672749;
    [{v3(-89, 16, 2), v3(-87, 89, 66), v3(-79, 4, -92), v3(39, -39, -77), v3(-56, -83, 68), v3(5, 4, -82), v3(-57, -45, 90), v3(2, -49, -24), v3(-40, -88, 9), v3(-67, 31, 42), v3(-74, -1, -3), v3(-1, -47, 42), v3(-37, -71, -8), v3(33, 65, -93)}] = 23.216373;
    [{v3(-81, 72, 5), v3(98, -23, 46), v3(-90, 37, -33), v3(5, -66, 47), v3(63, 7, -85), v3(-67, -21, -50), v3(-92, 99, -100), v3(93, -75, -97), v3(-7, 81, 24), v3(56, -78, 93), v3(60, -23, -34), v3(-57, 51, 72), v3(-55, 76, -75), v3(-60, 7, 51)}] = 48.846699;
    [{v3(17, -64, -69), v3(7, -23, 7), v3(71, 19, -79), v3(-49, -89, 1), v3(74, -45, -44), v3(-69, -84, 32), v3(-19, 30, 99), v3(-64, 70, 15), v3(-27, -43, -83), v3(-27, 25, -89), v3(-97, 69, -6), v3(85, 33, 81), v3(-18, 91, 65), v3(5, -77, -95)}] = 31.44837;
    [{v3(-14, 84, -31), v3(20, -82, 100), v3(-66, -95, 63), v3(-60, -10, 57), v3(-28, 45, 99), v3(12, 63, -3), v3(68, 41, -30), v3(80, -82, 67), v3(-90, -56, 33), v3(27, 23, -92), v3(17, -8, 88), v3(5, -61, 81), v3(-10, 83, -30), v3(0, -40, -59)}] = 4.24264;
    [{v3(-96, -57, -93), v3(-100, -8, -99), v3(-49, -62, 84), v3(-9, -97, 47), v3(15, 91, -57), v3(-7, -79, -68), v3(77, 3, -21), v3(-12, -94, -14), v3(-78, -18, -7), v3(-25, -72, 2), v3(-75, -88, 54), v3(-54, -29, -31), v3(6, 56, 89), v3(76, 65, 15)}] = 30.149628;
    [{v3(39, 5, -94), v3(-91, -65, 24), v3(-52, -33, 20), v3(72, -96, -6), v3(87, -61, -57), v3(-25, 93, 83), v3(-64, 73, -50), v3(-47, -34, -48), v3(43, -79, 81), v3(-16, -65, -90), v3(-72, 77, 30), v3(-89, 14, -48), v3(-10, 0, 30), v3(-32, -36, -67)}] = 24.289915;
}
