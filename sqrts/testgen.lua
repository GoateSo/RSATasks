 --[[
Autogenerates test cases for squares problem

output: array of:
  limit, a non-negative integer
]]
return {function(n)
    n = n or 100
    local t = {}
    for i = 1, n do
        local num = math.random(1,500)
        local root = math.random(1,num)
        local bound = math.random()/30000
        t[i] = {num,root,bound}
    end
    return t
end,{
[{1,1,1.007932e-005}] = {1};
[{6,6,2.937869e-006}] = {6, 3.5, 2.6071428571429, 2.4542563600783, 2.449494371607, 2.4494897427876};
[{20,8,1.557727e-005}] = {8, 5.25, 4.5297619047619, 4.4725025029723, 4.47213597002};
[{14,3,1.167761e-005}] = {3, 3.8333333333333, 3.7427536231884, 3.7416575473154};
[{17,4,1.807495e-005}] = {4, 4.125, 4.1231060606061};
[{66,6,5.030881e-006}] = {6, 8.5, 8.1323529411765, 8.1240426550367, 8.1240384046371};
[{499,6,1.728109e-005}] = {6, 44.583333333333, 27.88792834891, 22.890487447122, 22.344967924557, 22.338308896214, 22.338307903689};
[{67,23,5.049799e-006}] = {23, 12.95652173913, 9.0638313393639, 8.2279244264326, 8.1854629057093, 8.1853527726134};
[{112,8,1.021790e-005}] = {8, 11.0, 10.590909090909, 10.583008193523, 10.583005244259};
[{73,70,3.502491e-006}] = {70, 35.521428571429, 18.788263049036, 11.336833726672, 8.8880107005576, 8.5506610722066, 8.5440063369301, 8.5440037453179};
[{120,6,1.563652e-006}] = {6, 13.0, 11.115384615385, 10.955616183125, 10.954451212049};
[{221,6,1.202762e-005}] = {6, 21.416666666667, 15.867866407263, 14.897692360907, 14.86610231134, 14.866068747356};
[{104,4,2.560182e-005}] = {4, 15.0, 10.966666666667, 10.224974670719, 10.198074505459, 10.198039027247};
[{94,17,3.075872e-005}] = {17, 11.264705882353, 9.8046767009676, 9.6959691282698, 9.6953597339842};
[{94,38,1.878124e-005}] = {38, 20.236842105263, 12.440917801656, 9.9983152253626, 9.6999495901912, 9.6953608007639, 9.6953597148327};
[{86,74,3.079338e-005}] = {74, 37.581081081081, 19.934733276966, 12.124405782302, 9.608768452555, 9.2794634429659, 9.2736203363032, 9.2736184954959};
[{82,64,1.370819e-005}] = {64, 32.640625, 17.576415898755, 11.120879196813, 9.2471984665139, 9.0573745164922, 9.0553853566128};
[{44,25,2.228920e-005}] = {25, 13.38, 8.334245142003, 6.8068337416178, 6.6354629050009, 6.6332499498489};
[{92,71,1.597998e-005}] = {71, 36.147887323944, 19.346493827567, 12.050938727607, 9.842599384938, 9.5948618482541, 9.5916635798448};
[{49,17,1.308193e-005}] = {17, 9.9411764705882, 7.4350852767142, 7.0127301295794, 7.00001155443, 7.0000000000095};
[{35,16,1.034892e-005}] = {16, 9.09375, 6.4712736254296, 5.9398958215182, 5.916127528355, 5.9160797832923};
[{39,17,2.064656e-005}] = {17, 9.6470588235294, 6.8448708751793, 6.2712839192623, 6.2450530867698, 6.2449979986414};
[{89,85,8.439315e-007}] = {85, 43.023529411765, 22.546082452669, 13.246776578958, 9.9826960980433, 9.4490616329023, 9.4339931661355, 9.4339811320643};
[{468,78,1.504238e-005}] = {78, 42.0, 26.571428571429, 22.092165898618, 21.638072936793, 21.633308177506, 21.633307652784};
[{393,76,2.610535e-005}] = {76, 40.585526315789, 25.134390650195, 20.385168823432, 19.831945346227, 19.824229103307, 19.824227601599};
[{444,99,2.684404e-005}] = {99, 51.742424242424, 30.16169528373, 22.441176625752, 21.113117733336, 21.071348904024, 21.071307505746};
[{218,73,1.782398e-005}] = {73, 37.993150684932, 21.86551350724, 15.91777574089, 14.806578262263, 14.764881935987, 14.764823060351};
[{353,64,2.649225e-005}] = {64, 34.7578125, 22.456901305069, 19.087949948644, 18.790646328494, 18.788294375267};
[{315,63,2.579727e-005}] = {63, 34.0, 21.632352941176, 18.0969378574, 17.751598775366, 17.748239667178};
[{117,40,1.833701e-005}] = {40, 21.4625, 13.456934333139, 11.075668286214, 10.81968246939, 10.81665425028};
[{117,88,2.765237e-005}] = {88, 44.664772727273, 23.642143392004, 14.295466636851, 11.239939714067, 10.824624106806, 10.816656760691, 10.816653826392};
[{120,47,2.901444e-005}] = {47, 24.776595744681, 14.809938061263, 11.456302652136, 10.965443131449, 10.954456659395, 10.954451150105};
[{398,51,3.018735e-005}] = {51, 29.401960784314, 21.469236477519, 20.003694957365, 19.950009576942, 19.949937343391};
[{118,63,2.815860e-005}] = {63, 32.436507936508, 18.037192064657, 12.289615145975, 10.945608842938, 10.863093883354, 10.862780495721};
[{225,29,2.924512e-006}] = {29, 18.379310344828, 15.310668305622, 15.003151880577, 15.000000331075, 15.0};
[{130,66,1.024895e-005}] = {66, 33.984848484848, 18.905041273187, 12.890756981107, 11.487751106472, 11.40207613554, 11.401754255535};
[{178,17,3.233033e-005}] = {17, 13.735294117647, 13.347304446404, 13.341665255899};
[{152,91,8.453215e-006}] = {91, 46.335164835165, 24.807805351295, 15.467454607138, 12.647270089395, 12.332836988106, 12.328828657529, 12.328828005938};
[{435,59,5.906597e-006}] = {59, 33.186440677966, 23.14710185073, 20.969975644218, 20.856959811498, 20.856653616862};
[{222,13,2.198217e-005}] = {13, 15.038461538462, 14.900304938029, 14.899664439518};
[{125,27,3.270630e-005}] = {27, 15.814814814815, 11.859398039726, 11.199781008058, 11.180356760917, 11.180339887512};
[{139,22,1.398591e-005}] = {22, 14.159090909091, 11.988052677659, 11.791464994527, 11.789826236443};
[{395,57,6.737050e-006}] = {57, 31.964912280702, 22.161105975697, 19.992563075097, 19.87495488514, 19.874606917398};
[{114,48,6.011813e-006}] = {48, 25.1875, 14.856777295285, 11.265021510012, 10.692421199859, 10.677089260111, 10.677078252037};
[{183,29,1.004378e-005}] = {29, 17.655172413793, 14.010203394397, 13.536056132635, 13.527751807371, 13.527749258469};
[{172,92,1.885783e-005}] = {92, 46.934782608696, 25.299721086654, 16.049107503617, 13.383107177949, 13.117565041808, 13.11487732401};
[{396,46,3.787128e-006}] = {46, 27.304347826087, 20.903766269731, 19.923860454412, 19.899763332043, 19.899748742138};
[{307,32,3.197953e-005}] = {32, 20.796875, 17.779354104057, 17.523286524094, 17.521415567827};
[{129,69,1.382460e-005}] = {69, 35.434782608696, 19.537636703121, 13.070138822408, 11.469982565257, 11.35836513111, 11.357816704841};
[{461,84,3.022091e-005}] = {84, 44.744047619048, 27.523547023572, 22.13642085657, 21.480914518684, 21.470912883078, 21.470910553584};
[{129,19,2.792681e-005}] = {19, 12.894736842105, 11.449409237379, 11.358183050872, 11.357816697509};
[{338,65,1.742357e-005}] = {65, 35.1, 22.364814814815, 18.738919786309, 18.388122757781, 18.384776615359};
[{104,12,4.850162e-006}] = {12, 10.333333333333, 10.198924731183, 10.198039065644};
[{118,51,2.317286e-005}] = {51, 26.656862745098, 15.541745090828, 11.567100038221, 10.884223464058, 10.862801613565, 10.862780491221};
[{257,116,3.282641e-005}] = {116, 59.10775862069, 31.727874789088, 19.91400380631, 16.409747481083, 16.035585343394, 16.031220136192};
[{253,143,9.791282e-006}] = {143, 72.384615384615, 37.939916618981, 22.304177550677, 16.823672034241, 15.931003042163, 15.905993382467, 15.905973720599};
[{161,140,1.973528e-005}] = {140, 70.575, 36.428130534892, 20.423895934515, 14.15340949145, 12.76438021704, 12.688802621718, 12.688577542446};
[{417,146,1.872564e-005}] = {146, 74.428082191781, 40.01540307997, 25.218195098761, 20.876937463516, 20.425565755178, 20.420578465682, 20.420577856662};
[{419,330,1.592815e-005}] = {330, 165.63484848485, 84.082254692758, 44.532735126945, 26.97077207406, 21.253053919311, 20.483933843174, 20.469494583214, 20.469489490459};
[{350,146,3.156989e-005}] = {146, 74.198630136986, 39.457849177235, 24.164037085853, 19.324185875241, 18.718101875323, 18.708289507129, 18.70828693387};
[{468,246,3.880578e-006}] = {246, 123.9512195122, 63.863449189392, 35.595792273002, 24.371706833151, 21.787150592927, 21.633850808947, 21.633307659602};
[{488,275,1.053572e-005}] = {275, 138.38727272727, 70.956804285016, 38.917113939898, 25.728292191755, 22.347869235426, 22.092201474815, 22.090722083911};
[{474,199,1.643289e-005}] = {199, 100.69095477387, 52.69921413054, 30.846827828618, 23.106537810119, 21.810106253328, 21.771575153068, 21.771541057104};
[{444,361,1.956000e-005}] = {361, 181.11495844875, 91.783220057168, 48.310352799449, 28.750464720669, 22.096846677073, 21.09510571111, 21.071320929544, 21.07130750571};
[{361,314,8.048225e-006}] = {314, 157.57484076433, 79.932907816102, 42.224597705537, 25.387058348614, 19.80345099043, 19.016298510152, 19.000006984573, 19.000000000001};
[{346,342,9.239263e-006}] = {342, 171.50584795322, 86.761635936373, 45.374786824731, 26.500083500988, 19.778323066798, 18.63611138429, 18.601108171958, 18.601075237767};
[{369,364,1.222983e-005}] = {364, 182.50686813187, 92.264354925453, 48.131866293251, 27.899152471135, 20.562680350142, 19.253905855144, 19.209424213558, 19.209372712368};
[{196,108,1.062450e-005}] = {108, 54.907407407407, 29.238526637936, 17.971005395905, 14.438731264804, 14.006665582979, 14.00000158603, 14.0};
[{444,412,2.945040e-005}] = {412, 206.53883495146, 104.34427586762, 54.29971032007, 31.238274761013, 22.725803856117, 21.131533277935, 21.071393328717, 21.07130750588};
[{382,282,8.261155e-006}] = {282, 141.67730496454, 72.186786539787, 38.739306866487, 24.300046242239, 20.010090468152, 19.550229465202, 19.544821034001, 19.544820285692};
[{247,225,2.805367e-005}] = {225, 113.04888888889, 57.616892156349, 30.951914692637, 19.466017451691, 16.077398393968, 15.720290271217, 15.716234168908};
[{196,152,2.692601e-005}] = {152, 76.644736842105, 39.600995030495, 22.275182808497, 15.537106364126, 14.07603397696, 14.00020535492, 14.000000001506};
[{472,381,1.708556e-005}] = {381, 191.11942257218, 96.794541304011, 50.835424672063, 30.060144292141, 22.880999197731, 21.754734478232, 21.725580543496, 21.725560982409};
[{477,247,1.378117e-005}] = {247, 124.46558704453, 64.148985826206, 35.792400482931, 24.559625906747, 21.990872922511, 21.840844955971, 21.84032967392};
[{229,147,2.112622e-005}] = {147, 74.278911564626, 38.680943098001, 22.30058551804, 16.284687096217, 15.173488778194, 15.132800650367, 15.13274595052};
[{402,208,1.451508e-005}] = {208, 104.96634615385, 54.398072541037, 30.894020129521, 21.953123518346, 20.132434263239, 20.050106678797, 20.049937656476};
[{423,340,5.898826e-006}] = {340, 170.62205882353, 86.55061121882, 45.718962529005, 27.485570490954, 21.437731947406, 20.584648441684, 20.566971397799, 20.566963801205};
[{238,202,1.636970e-005}] = {202, 101.58910891089, 51.965939865513, 28.272931401903, 18.345438527589, 15.65934534368, 15.428968644199, 15.427248716416};
[{261,152,3.109457e-005}] = {152, 76.858552631579, 40.127200561456, 23.315758372348, 17.254952114961, 16.190522256076, 16.155532312374, 16.155494421448};
[{411,370,3.270955e-005}] = {370, 185.55540540541, 93.885188628812, 49.131437975492, 28.74837694501, 21.522418106236, 20.309392671968, 20.273167297631, 20.273134932739};
[{445,282,1.201864e-006}] = {282, 141.7890070922, 72.463736623917, 39.302369646367, 25.312421079471, 21.44636140288, 21.097900954458, 21.095023306004, 21.095023109729};
[{429,372,1.683820e-005}] = {372, 186.57661290323, 94.437968226807, 49.49031633314, 29.079339394189, 21.916040841305, 20.745372139569, 20.712341514715, 20.712315177225};
[{478,471,6.672605e-006}] = {471, 236.00743099788, 119.01639547681, 61.516324425845, 34.643309809608, 24.220533831601, 21.977927210231, 21.863510495449, 21.863211111125};
[{458,395,2.754642e-005}] = {395, 198.07974683544, 100.19597344137, 52.383507706554, 30.563358772956, 22.774311387468, 21.442344459003, 21.400974544861, 21.40093455907};
[{264,127,1.162240e-005}] = {127, 64.53937007874, 34.314948261477, 21.004194195539, 16.7865562287, 16.25671348499, 16.248079103468, 16.248076809272};
[{466,238,2.538386e-005}] = {238, 119.97899159664, 61.931502452145, 34.727972240815, 24.073275058567, 21.715420305335, 21.58741267391, 21.587033148259};
[{203,166,6.671076e-006}] = {166, 83.611445783133, 43.01967152084, 23.869221511444, 16.186948853608, 14.363958192333, 14.248276466356, 14.247806856514};
[{473,206,2.381554e-005}] = {206, 104.14805825243, 54.3448347847, 31.52425691743, 23.26428784726, 21.797939737055, 21.748619094687, 21.748563171003};
[{246,211,2.509994e-005}] = {211, 106.08293838863, 54.200939339732, 29.369803033796, 18.872876487601, 15.953727756123, 15.686660728067, 15.684387306122};
[{179,127,8.654544e-006}] = {127, 64.204724409449, 33.496340620226, 19.420103970411, 14.31867818702, 13.409916055365, 13.379123595199, 13.379088160307};
[{481,148,1.465222e-005}] = {148, 75.625, 40.992665289256, 26.363235865069, 22.304170309296, 21.934822044877, 21.931712419913};
[{181,165,7.308130e-006}] = {165, 83.048484848485, 42.613967302006, 23.430700491508, 15.577804124707, 13.598450011186, 13.454395258494, 13.453624069177};
[{265,204,2.389028e-006}] = {204, 102.64950980392, 52.615555026122, 28.826044210699, 19.009559841555, 16.474957089759, 16.279988111254, 16.278820637964};
[{377,302,1.232249e-005}] = {302, 151.62417218543, 77.055291561098, 40.973941111877, 25.087455519914, 20.057443124609, 19.426729016641, 19.416490538366, 19.416487838948};
[{402,302,1.442544e-005}] = {302, 151.66556291391, 77.158065826973, 41.184074886036, 25.472564699153, 20.627125002208, 20.05801307182, 20.049939281357, 20.049937655763};
[{233,103,2.842808e-005}] = {103, 52.631067961165, 28.529055471082, 18.348083888253, 15.523478795927, 15.266500510567, 15.264337675702};
[{177,167,1.778829e-005}] = {167, 84.02994011976, 43.068166097791, 23.588965065442, 15.546236785376, 13.465814395058, 13.305105313707, 13.304134731054};
[{167,102,1.156549e-005}] = {102, 51.81862745098, 27.520703376422, 16.794431117719, 13.369101740339, 12.930295844049, 12.922850128307, 12.92284798332};
[{273,128,3.038280e-005}] = {128, 65.06640625, 34.631059881919, 21.257078379425, 17.049929634983, 16.530862960316, 16.522713651554, 16.522711641858};
[{381,259,3.290685e-005}] = {259, 130.23552123552, 66.580495194263, 36.151445902193, 23.345221728971, 19.832738971712, 19.52169935339, 19.519221453224}; 
}}
