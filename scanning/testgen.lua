--[[
Autogenerates test cases for scanning problem

output: arrays of
    arr, a possibly empty array
    init, an integer
    op, a binary function which acts on 2 numbers and returns a number
]]

local functions = {
    function(a,b)
        return a + b
    end,
    function(a,b)
        return a - b
    end,
    function(a,b)
        return a * b
    end,
    function(a,b)
        return a - b * 2
    end,
    function(a,b)
        return a * a + b * b
    end,
    function(a,b)
        return a/2*(a-1)/(math.abs(b)+1)
    end
}

return {function(n)
    n = n or 100
    local ret = {}
    for i=1,n do
        local t = {}
        for j=1,math.random(50) do
            t[j] = math.random(-100,100)
        end
        ret[i] = {t,math.random(-1000,1000),functions[math.random(#functions)]}
    end
    return ret
end,{
    [{{61}, 202,function (a, b) return a - b end}] = {-141, 202};
    [{{82}, 488,function (a, b) return b * a end}] = {40016, 488};
    [{{17}, 398,function (a, b) return b * a end}] = {6766, 398};
    [{{19}, -879,function (a, b) return b * a end}] = {-16701, -879};
    [{{-79}, 701,function (a, b) return a + b end}] = {622, 701};
    [{{-34}, 991,function (a, b) return b * a end}] = {-33694, 991};
    [{{-50}, -120,function (a, b) return a + b end}] = {-170, -120};
    [{{-65}, -644,function (a, b) return b - a end}] = {-579, -644};
    [{{-85}, -101,function (a, b) return a + b end}] = {-186, -101};
    [{{-29}, -464,function (a, b) return b * a end}] = {13456, -464};
    [{{51, 27}, -47,function (a, b) return b - a end}] = {-125, -74, -47};        
    [{{-99, 8}, 454,function (a, b) return a - b end}] = {347, -446, 454};        
    [{{-92, 56}, 793,function (a, b) return a + b end}] = {757, 849, 793};        
    [{{22, -44}, 527,function (a, b) return a - b end}] = {593, -571, 527};       
    [{{-90, -81}, 584,function (a, b) return b * a end}] = {4257360, -47304, 584};
    [{{72, -61}, -870,function (a, b) return b * a end}] = {3821040, 53070, -870};
    [{{71, -47}, -199,function (a, b) return a - b end}] = {-81, 152, -199};
    [{{5, 49, 73}, 274,function (a, b) return b - a end}] = {147, 152, 201, 274};
    [{{70, 24, 8}, 714,function (a, b) return a - b end}] = {-660, 730, -706, 714};
    [{{63, 71, 78}, 972,function (a, b) return b - a end}] = {760, 823, 894, 972};
    [{{-82, 35, 20}, 418,function (a, b) return b * a end}] = {-23993200, 292600, 8360, 418};
    [{{35, 40, -17}, 768,function (a, b) return b * a end}] = {-18278400, -522240, -13056, 768};
    [{{-85, 9, 79}, -298,function (a, b) return a + b end}] = {-295, -210, -219, -298};
    [{{-51, 41, 82}, 186,function (a, b) return b * a end}] = {-31891932, 625332, 15252, 186};
    [{{-9, -61, -27}, -84,function (a, b) return b * a end}] = {1245132, -138348, 2268, -84};
    [{{82, 65, -25}, -763,function (a, b) return a + b end}] = {-641, -723, -788, -763};
    [{{20, -36, -43}, -688,function (a, b) return a - b end}] = {701, -681, 645, -688};
    [{{-97, -40, 92}, -278,function (a, b) return a - b end}] = {313, -410, 370, -278};
    [{{46, 6, 82, -36}, 266,function (a, b) return a - b end}] = {424, -378, 384, -302, 266};
    [{{-48, -93, -13}, -951,function (a, b) return b - a end}] = {-797, -845, -938, -951};
    [{{97, -15, 80, 90}, 430,function (a, b) return a - b end}] = {532, -435, 420, -340, 430};
    [{{97, 48, 29, -37}, -886,function (a, b) return a - b end}] = {-771, 868, -820, 849, -886};
    [{{13, -21, -77, -29}, 601,function (a, b) return a + b end}] = {487, 474, 495, 572, 601};
    [{{-83, -58, -8, -74}, 796,function (a, b) return a + b end}] = {573, 656, 714, 722, 796};
    [{{-65, -89, -88, 60}, -111,function (a, b) return a + b end}] = {-293, -228, -139, -51, -111};
    [{{-94, -24, 62, 27, 44}, 974,function (a, b) return b - a end}] = {959, 865, 841, 903, 930, 974};
    [{{-88, 69, 69, 41, -85}, 944,function (a, b) return b - a end}] = {938, 850, 919, 988, 1029, 944};
    [{{-94, -11, 60, -79, 57}, 208,function (a, b) return a - b end}] = {-95, 1, -12, 72, -151, 208};
    [{{65, -62, 57, -42, -10}, -561,function (a, b) return a - b end}] = {777, -712, 650, -593, 551, -561};
    [{{-97, 71, -99, 47, -88}, -427,function (a, b) return b - a end}] = {-261, -358, -287, -386, -339, -427};
    [{{49, -62, 68, 48, 22, 76}, 891,function (a, b) return a - b end}] = {968, -919, 857, -789, 837, -815, 891};
    [{{-56, 5, 17, -68, -66, -7}, 613,function (a, b) return a - b end}] = {578, -634, 639, -622, 554, -620, 613};
    [{{-10, -31, 36, 41, 66, -68}, 57,function (a, b) return a - b end}] = {207, -217, 186, -150, 191, -125, 57};
    [{{61, -89, 25, 29, 46, -40}, -775,function (a, b) return b - a end}] = {-807, -746, -835, -810, -781, -735, -775};
    [{{-55, 3, -10, 68, -27, -52}, 197,function (a, b) return a - b end}] = {86, -141, 144, -154, 222, -249, 197};
    [{{24, 26, 2, -95, 85, 88, -88}, 822,function (a, b) return a + b end}] = {864, 840, 814, 812, 907, 822, 734, 822};
    [{{23, 38, -44, 33, -14, -86, 17}, 91,function (a, b) return b - a end}] = {124, 147, 185, 141, 174, 160, 74, 91};
    [{{76, -42, 45, -76, 5, -77, 93}, 416,function (a, b) return b - a end}] = {392, 468, 426, 471, 395, 400, 323, 416};
    [{{-63, 12, 53, -9, -70, -46, 35}, -96,function (a, b) return a - b end}] = {94, -157, 169, -116, 107, -177, 131, -96};
    [{{-77, 55, 48, 65, 91, -12, -22}, 520,function (a, b) return a - b end}] = {-588, 511, -456, 504, -439, 530, -542, 520};
    [{{-21, -43, -98, -61, 33, -8, -1}, 504,function (a, b) return a - b end}] = {-479, 458, -501, 403, -464, 497, -505, 504};
    [{{-43, 4, -61, 38, -98, -72, 71}, -112,function (a, b) return a + b end}] = {-273, -230, -234, -173, -211, -113, -41, -112};
    [{{74}, -570,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {574, -570};
    [{{-18}, -380,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {380, -380};
    [{{-75}, -211,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {223, -211};
    [{{74, -59, -89, 36, -22, 80, -59, 90}, 270,function (a, b) return a - b end}] = {27, 47, -106, 17, 19, -41, 121, -180, 270};
   [{{39, 28, 44, 18, 22, -2, 100, 53, 82}, -17,function (a, b) return a - b end}] = {207, -168, 196, -152, 170, -148, 146, -46, 99, -17};
    [{{-52, 58, -79, -65, 68, 62, 41, -8, 65}, 10,function (a, b) return a - b end}] = {-14, -38, 96, -175, 110, -42, 104, -63, 55, 10};
    [{{69, 42, 85, -61, 65, -30, 65, 3, 30}, -324,function (a, b) return b - a end}] = {-592, -523, -481, -396, -457, -392, -422, -357, -354, -324};
    [{{-20, -29, 98, 64, 38, 25, 91, 93, 37}, 385,function (a, b) return b - a end}] = {-12, -32, -61, 37, 101, 139, 164, 255, 348, 385};
    [{{78, 51, -91, -33, 71, 8, 68, -95, 14}, -752,function (a, b) return b - a end}] = {-823, -745, -694, -785, -818, -747, -739, -671, -766, -752};
    [{{76, 72, 89}, 902,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {911, 908, 906, 902};
    [{{-2, -45, -18}, 294,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {297, 297, 294, 294};
    [{{24, -43, -83, -56, 37, 5, -87, -63, 66}, -147,function (a, b) return a + b end}] = {-347, -371, -328, -245, -189, -226, -231, -144, -81, -147};
    [{{-98, -85, 51}, 198,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {241, 221, 204, 198};
    [{{-31, -45, 59}, 850,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {853, 853, 852, 850};
    [{{-16, -75, 76}, 163,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {194, 194, 179, 163};
    [{{13, -46, 63}, -648,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {652, 652, 651, -648};
    [{{47, 8, 7, -35, 20, -73, -98, -41, -6, -47}, 497,function (a, b) return b - a end}] = {715, 762, 770, 777, 742, 762, 689, 591, 550, 544, 497};
    [{{-7, -93, -56, 67}, -873,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {880, 880, 876, 875, -873};
    [{{-15, -22, 66, 67}, -813,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {817, 817, 817, 815, -813};
    [{{-72, -84, -89, 30, -85, -24, 38, -89, -21, 29}, 21,function (a, b) return b - a end}] = {388, 316, 232, 143, 173, 88, 64, 102, 13, -8, 21};
    [{{-65, 84, 79, -70, 11}, 337,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {366, 361, 352, 344, 337, 337};
    [{{30, 32, -54, -56, -62}, -235,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {257, 256, 254, 249, 243, -235};
    [{{-2, 45, 97, -83, 36, 73}, 980,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {990, 990, 989, 985, 982, 982, 980};
    [{{69, 13, 64, 59, 91, -20}, 381,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {405, 400, 400, 395, 391, 381, 381};
    [{{-91, -45, -80, -52, -19}, -815,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {825, 820, 819, 816, 815, -815};
    [{{20, 54, 34, 46, 55, 67, 55}, -549,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {561, 561, 559, 558, 557, 555, 551, -549};
    [{{-14, 68, -51, -71, 75, -51}, -681,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {693, 693, 690, 689, 686, 682, -681};
    [{{74, 5, -89, 30, -52, -24, 84}, -706,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {719, 716, 716, 711, 711, 710, 710, -706};
    [{{-81, -69, 44, 55, 5, -56, -79}, -51,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {166, 146, 129, 122, 109, 109, 94, -51};
    [{{-30, -16, -15, -19, 68, -60, 24}, 397,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {407, 406, 406, 406, 406, 401, 397, 397};
    [{{-16, 53, 72, 19, 23, -30, 22, 43}, 230,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {251, 251, 246, 236, 236, 235, 234, 233, 230};
    [{{65, -28, 70, 23, 11, -17, -96, -50}, 737,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {749, 747, 747, 744, 744, 744, 744, 738, 737};
    [{{42, -87, -52, -83, 6, 56, -50, -69, 77}, 857,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {873, 872, 868, 867, 864, 864, 863, 862, 860, 857};  
    [{{84, -27, -47, 89, -6, 2, -100, 32, 40}, -466,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {495, 488, 488, 486, 478, 478, 478, 468, 467, -466}; 
    [{{-33, -64, 97, 28, 9, 97, 95, 77, -21, -96}, 466,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {513, 512, 508, 499, 499, 499, 490, 481, 475, 475, 466};
    [{{39, -83, 40, -42, -31, 41, -53, -30, 56, 7}, 367,function (a, b) return math.floor(math.sqrt(a*a + b*b)) end}] = {391, 390, 382, 380, 378, 377, 375, 372, 371, 367, 367};
}}
