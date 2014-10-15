//Maya ASCII 2015 scene
//Name: alvl2_model001_uv.ma
//Last modified: Wed, Oct 15, 2014 10:35:58 AM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
requires -nodeType "Unfold3DUnfold" "Unfold3D" "Maya2015SP1.r1568.release.Apr  3 2014|15:09:24";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "Mesh";
	setAttr ".r" -type "double3" 0 45 0 ;
createNode mesh -n "MeshShape" -p "Mesh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
createNode mesh -n "polySurfaceShape1" -p "Mesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 246 ".uvst[0].uvsp[0:245]" -type "float2" 0.375 0 0.45833299
		 0 0.45833299 0.083333001 0.375 0.083333001 0.50264299 0 0.50264299 0.083333001 0.54166698
		 0 0.58402902 0 0.58402902 0.083333001 0.54166698 0.083333001 0.45833299 0.166667
		 0.375 0.166667 0.45833299 0.083333001 0.50264299 0.083333001 0.50264299 0.166667
		 0.45833299 0.166667 0.58402902 0.166667 0.54166698 0.166667 0.45833299 0.25 0.375
		 0.25 0.50264299 0.25 0.45833299 0.25 0.58402902 0.25 0.54166698 0.25 0.099932998
		 0.20709699 0.16891401 0.164326 0.218096 0.24405199 0.049552999 0.291722 0.35951799
		 0.109047 0.382548 0.24405199 0.58402902 0.29281801 0.54166698 0.29281801 0.058531001
		 0.371795 0.264631 0.371795 0.264631 0.51834202 0.001883 0.49320501 0.40434 0.371795
		 0.40434 0.51834202 0.50456703 0.39352 0.66739202 0.41368601 0.656519 0.544909 0.52737999
		 0.516653 0.001883 0.63454401 0.264631 0.75249398 0.264631 0.99800801 0.099932998
		 0.79924202 0.40434 0.75249398 0.40434 0.99800801 0.52737999 0.75249398 0.651366 0.67643601
		 0.611103 0.847449 0.52737999 0.89729202 0.375 0.5 0.45833299 0.5 0.45833299 0.58333302
		 0.375 0.58333302 0.50264299 0.5 0.50264299 0.58333302 0.54166698 0.5 0.58402902 0.5
		 0.58402902 0.58333302 0.54166698 0.58333302 0.45833299 0.66666698 0.375 0.66666698
		 0.50264299 0.66666698 0.58402902 0.66666698 0.54166698 0.66666698 0.45833299 0.75
		 0.375 0.75 0.50264299 0.75 0.58402902 0.75 0.54166698 0.75 0.45833299 0.83333302
		 0.375 0.83333302 0.50264299 0.83333302 0.58402902 0.83333302 0.54166698 0.83333302
		 0.375 0.87816 0.45833299 0.87816 0.45833299 0.91666698 0.375 0.91666698 0.50264299
		 0.87816 0.50264299 0.91666698 0.54166698 0.87816 0.58402902 0.87816 0.58402902 0.91666698
		 0.54166698 0.91666698 0.375 0.95718199 0.45833299 0.95718199 0.45833299 1 0.375 1
		 0.50264299 0.95718199 0.50264299 1 0.54166698 0.95718199 0.58402902 0.95718199 0.58402902
		 1 0.54166698 1 0.79166698 0 0.875 0 0.875 0.083333001 0.79166698 0.083333001 0.70833302
		 0 0.74684 0 0.74684 0.083333001 0.70833302 0.083333001 0.625 0 0.66781801 0 0.66781801
		 0.083333001 0.625 0.083333001 0.875 0.166667 0.79166698 0.166667 0.70833302 0.083333001
		 0.74684 0.083333001 0.74684 0.166667 0.70833302 0.166667 0.66781801 0.166667 0.625
		 0.166667 0.875 0.25 0.79166698 0.25 0.74684 0.25 0.70833302 0.25 0.66781801 0.25
		 0.625 0.25 0.125 0 0.208333 0 0.208333 0.083333001 0.125 0.083333001 0.25316 0 0.29166701
		 0 0.29166701 0.083333001 0.25316 0.083333001 0.33218199 0 0.33218199 0.083333001
		 0.208333 0.166667 0.125 0.166667 0.29166701 0.166667 0.25316 0.166667 0.33218199
		 0.166667 0.208333 0.25 0.125 0.25 0.29166701 0.25 0.25316 0.25 0.33218199 0.25 0.45833299
		 0.25 0.375 0.25 0.375 0.29281801 0.375 0.29281801 0.50264299 0.25 0.45833299 0.25
		 0.54166698 0.29281801 0.54166698 0.25 0.375 0.37184 0.375 0.33333299 0.375 0.33333299
		 0.375 0.37184 0.54166698 0.33333299 0.58402902 0.33333299 0.58402902 0.33333299 0.54166698
		 0.33333299 0.625 0.33333299 0.625 0.37184 0.625 0.37184 0.625 0.33333299 0.375 0.5
		 0.45833299 0.5 0.375 0.41666701 0.375 0.41666701 0.50264299 0.5 0.625 0.41666701
		 0.625 0.5 0.625 0.5 0.625 0.41666701 0.54166698 0.5 0.58402902 0.5 0.50264299 0.25
		 0.45833299 0.25 0.45833299 0.25 0.375 0.25 0.375 0.29281801 0.375 0.33333299 0.375
		 0.37184 0.375 0.41666701 0.375 0.5 0.45833299 0.5 0.50264299 0.5 0.54166698 0.5 0.58402902
		 0.5 0.625 0.5 0.625 0.41666701 0.625 0.37184 0.625 0.33333299 0.58402902 0.33333299
		 0.54166698 0.33333299 0.54166698 0.29281801 0.54166698 0.25 0.79166698 0.166667 0.79166698
		 0.083333001 0.70833302 0.166667 0.79166698 0.25 0.70833302 0.25 0.625 0.41666701
		 0.625 0.41666701 0.625 0.33333299 0.625 0.33333299 0.625 0.41666701 0.78141898 0.53128397
		 0.824871 0.39352 0.88894999 0.39352 0.94337201 0.49390599 0.625 0.33333299 0.54166698
		 0.166667 0.54166698 0.083333001 0.54166698 0.25 0.54166698 0.25 0.54166698 0.25 0.264631
		 0.050622001 0.35457501 0.001992 0.771281 0.71695298 0.69207799 0.79924202 0.625 0.58333302
		 0.625 0.66666698 0.625 0.75 0.625 0.83333302 0.625 0.87816 0.625 0.91666698 0.625
		 0.95718199 0.625 1 0.625 0.29281801 0.887335 0.636545 0.50456703 0.073215 0.50456703
		 0.001992 0.47121301 0.237794 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 184 ".vt";
	setAttr ".vt[0:165]"  -0.280821 -1.011142969 0.62924701 -0.053068001 -1.011142969 0.764835
		 0.31027201 -0.62719703 0.92381501 0.57857901 -0.597853 0.68463701 -0.84621203 -0.33478099 0.69201398
		 -0.66025698 -0.291585 1.10657001 0.052568 -0.300623 1.29836094 0.63289303 -0.18065999 0.81162602
		 -1.13000798 0.54904097 1.069911957 -0.86865699 0.62876898 1.40779901 0.40188399 0.60325003 1.631423
		 1.124843 0.41123301 1.22091401 -1.20924306 1.0043439865 1.20924306 -0.84162199 0.977391 1.40438795
		 0.47728801 1.0043430328 1.83251595 1.41111004 1.0043439865 1.52237797 -1.60970497 1.0043430328 0.536569
		 0.36693299 1.0043430328 0.37137601 1.82807302 1.0043430328 0.59529102 -1.60970497 1.0043430328 -0.536569
		 1.61036801 1.0043430328 -0.95814103 -1.20924306 1.0043439865 -1.20924306 -0.536569 0.80129898 -1.67780304
		 0.536569 1.0043430328 -1.60970497 1.20924401 1.0043439865 -1.20924306 -1.069911957 0.54904097 -1.069911957
		 -0.47474399 0.54904097 -1.42423201 0.47474399 0.54904097 -1.42423201 1.069911957 0.54904097 -1.069911957
		 -0.69201398 -0.33478099 -0.69201398 -0.307062 -0.33478099 -0.92118597 0.307062 -0.33478099 -0.92118597
		 0.69201398 -0.33478099 -0.820494 -0.280821 -1.011142969 -0.18959901 -0.053068001 -1.011142969 -0.32518601
		 0.31027201 -1.011142969 -0.32518601 0.53802502 -1.011142969 -0.18959901 -0.416408 -1.011142969 0.038153999
		 0.249201 -1.28214395 0.29791799 0.51632702 -1.28214395 0.29791799 0.673612 -1.011142969 0.038153999
		 -0.416408 -1.011142969 0.401494 0.249201 -1.28214395 0.56504297 0.51632702 -1.28350306 0.56504297
		 0.77806902 -0.77384198 0.401494 0.85732102 -0.60951298 -0.58141702 1.077519059 -0.078925997 0.38137701
		 1.42863297 0.54904097 -0.86182499 1.43226695 0.45679799 0.70893699 -0.92118597 -0.33478099 -0.307062
		 -0.92118597 -0.33478099 0.307062 -1.42423201 0.54904097 -0.47474399 -1.42423201 0.54904097 0.47474399
		 -1.20924306 1.53192902 1.20924306 -0.92750299 1.53265703 1.38393199 -0.536569 1.53192794 0.536569
		 -1.37833798 1.53192794 0.536569 0.44339699 1.53192794 1.75605202 0.44339699 1.53192794 0.44784001
		 -0.536569 1.53192794 -1.01831305 -1.60970497 1.53192794 -0.536569 0.536569 1.53192794 -1.01831305
		 1.75160897 1.53192794 0.44784001 1.53272903 1.53192794 -0.87314999 -0.536569 1.53192794 -2.021059036
		 -1.20924306 1.53192902 -1.20924306 0.536569 1.53192794 -1.60970497 1.20924306 1.53192902 -1.20924306
		 0.52763599 1.18665099 1.75605202 -0.89523798 1.23660195 1.51699996 -1.20924306 1.29037499 1.20924306
		 -1.60970497 1.29037404 0.536569 -1.60970497 1.29037404 -0.536569 -1.20924306 1.29037499 -1.20924306
		 -0.536569 1.29037404 -1.93589199 0.536569 1.29037404 -1.60970497 1.20924401 1.29037499 -1.20924306
		 1.56704605 1.29037404 -0.90741801 1.75160897 1.15704 0.49131799 0.54650801 1.21363497 0.59704298
		 1.34476399 -0.200197 -0.407704 1.13460398 -0.271249 0.16805901 1.87075198 0.65906501 -0.47356001
		 1.79447901 0.46029601 0.40564701 1.92978299 1.024930954 -0.536569 1.91582596 0.93339998 0.551512
		 2.0067269802 1.29037404 -0.54474503 1.97404301 1.12704897 0.52736503 2.0067269802 1.53192794 -0.54474503
		 2.013323069 1.53192794 0.44784001 -0.50203502 0.174098 1.66292703 -0.064026996 -0.15698799 1.60629797
		 0.24100301 0.52700698 1.77445805 -0.47703499 0.66131997 1.85650599 0.332495 1.0063689947 2.036200047
		 -0.42346001 0.97941703 1.90504801 0.44339699 1.17691505 1.92545795 -0.46592101 1.23660195 1.97224498
		 0.44339699 1.53192794 2.046947956 -0.536569 1.53192794 1.89180005 1.10842097 1.53192794 0.36547601
		 1.042963028 1.53192794 -0.70766801 0.87852001 1.53192902 -1.40613198 0.87852001 1.29037404 -1.40613198
		 0.87852001 1.0043430328 -1.40613198 0.77729499 0.54904097 -1.244115 0.50275099 -0.33478099 -0.87
		 0.42604899 -1.011142969 -0.25626099 0.59628201 -1.14438105 0.165868 0.59628201 -1.14438105 0.481904
		 0.50859898 -0.64465302 0.85228002 0.40435001 -0.244679 0.97299498 0.59857202 0.26508299 1.33009803
		 0.96620601 1.0043430328 1.71398699 1.10969698 1.0043430328 0.37137601 1.10842097 1.29037404 0.49961001
		 0.30716801 1.53192794 1.083866954 -0.72663301 1.53228199 1.058307052 -1.41500795 1.53192902 0.86361003
		 -1.41500795 1.29037404 0.86361003 -1.41500795 1.0043430328 0.86361003 -1.28118598 0.54904097 0.764103
		 -0.88473499 -0.33478099 0.49421799 -0.35048801 -1.011142969 0.51222301 0.102244 -1.150388 0.66217798
		 0.41614699 -1.150388 0.60955203 0.52354097 -1.048446059 0.599639 0.62740898 -0.82815802 0.53915298
		 0.76170701 -0.266298 0.672131 1.43163002 0.57055998 0.98673397 1.69083905 1.0043430328 0.96839303
		 1.039934993 1.0043430328 1.024127007 0.36693299 1.0043430328 1.081753969 0.54040498 1.35873103 1.083866954
		 2.23559999 1.53192794 0.037833001 1.57413697 1.53192794 -0.114827 1.064012051 1.53192794 -0.170476
		 0.536569 1.53192794 -0.055071 -0.536569 1.53192794 -0.061971001 -1.60970497 1.53192794 0.040699001
		 -1.60970497 1.29037404 0.040699001 -1.60970497 1.0043430328 0.040699001 -1.42423201 0.54904097 0.036008999
		 -0.92118597 -0.33478099 0.023290999 -0.416408 -1.011142969 0.233604 0.249201 -1.28214395 0.44161099
		 0.51632702 -1.28214395 0.44161099 0.59628201 -1.14438105 0.33587199 0.814358 -0.75259101 0.086713001
		 0.83729398 -0.719491 -0.086259998 1.13460398 -0.448033 -0.177874 1.88742399 0.66682303 -0.14452399
		 2.094556093 1.0085530281 -0.100885 2.21446991 1.20251703 0.080611996 -0.169213 1.53192794 2.046947956
		 -0.14902601 1.532269 1.60970497 -0.054963 1.532094 1.058307052 0.034040999 1.53192794 0.536569
		 0.034040999 1.53192794 -0.061971001 0.034040999 1.53192794 -1.01831305 0.034040999 1.53192794 -2.021059036
		 0.034040999 1.29037404 -1.93589199 0.034040999 0.80129898 -1.67780304 0.030118 0.54904097 -1.42423201
		 0.019479999 -0.33478099 -0.92118597 0.140128 -1.011142969 -0.32518601;
	setAttr ".vt[166:183]" 0.39123699 -1.28214395 0.29791799 0.39123699 -1.28214395 0.44161099
		 0.39123699 -1.28214395 0.56504297 0.269153 -1.150388 0.66217798 0.140128 -1.011142969 0.764835
		 -0.03413 -0.54267102 1.060050964 -0.31178799 -0.22657 1.56363499 0.15102901 0.59971201 1.95573103
		 -0.16361199 0.99374801 1.94995105 -0.203695 1.350559 2.061117887 -0.387963 1.54312003 0.164628
		 0.22010601 1.54312003 -0.443441 -0.387963 1.71772695 0.164628 0.22010601 1.71772695 -0.443441
		 -0.417072 1.71772695 0.135519 0.190997 1.71772695 -0.47255 -0.417072 1.54312003 0.135519
		 0.190997 1.54312003 -0.47255;
	setAttr -s 360 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 5 0 5 4 0 4 0 0 1 170 0 170 171 0 171 5 0 2 110 0
		 110 111 0 111 6 0 6 2 0 5 9 0 9 8 0 8 4 0 90 172 0 172 173 0 173 93 0 93 90 0 111 112 0
		 112 10 0 10 6 0 9 13 0 13 12 0 12 8 0 173 174 0 174 95 0 95 93 0 112 113 0 113 14 0
		 14 10 0 53 54 0 54 117 0 117 118 0 118 53 0 54 155 0 155 156 0 156 117 0 113 131 0
		 131 132 0 132 14 0 56 55 0 55 138 0 138 139 0 139 56 0 55 157 0 157 158 0 158 138 0
		 58 100 0 100 136 0 136 137 0 137 58 0 60 59 0 59 64 0 64 65 0 65 60 0 59 159 0 159 160 0
		 160 64 0 61 101 0 101 102 0 102 66 0 66 61 0 21 22 0 22 26 0 26 25 0 25 21 0 22 162 0
		 162 163 0 163 26 0 23 104 0 104 105 0 105 27 0 27 23 0 26 30 0 30 29 0 29 25 0 163 164 0
		 164 30 0 105 106 0 106 31 0 31 27 0 30 34 0 34 33 0 33 29 0 164 165 0 165 34 0 106 107 0
		 107 35 0 35 31 0 34 38 0 38 37 0 37 33 0 165 166 0 166 38 0 107 108 0 108 39 0 39 35 0
		 144 145 0 145 42 0 42 41 0 41 144 0 145 167 0 167 168 0 168 42 0 146 147 0 147 109 0
		 109 43 0 43 146 0 123 124 0 124 1 0 0 123 0 124 169 0 169 170 0 125 126 0 126 110 0
		 2 125 0 40 36 0 36 32 0 32 45 0 45 40 0 44 148 0 148 149 0 149 46 0 46 44 0 3 127 0
		 127 128 0 128 7 0 7 3 0 32 28 0 28 47 0 47 45 0 81 150 0 150 151 0 151 83 0 83 81 0
		 128 129 0 129 11 0 11 7 0 28 24 0 24 20 0 20 47 0 151 152 0 152 85 0 85 83 0 129 130 0
		 130 15 0 15 11 0 37 49 0 49 29 0 41 50 0 50 143 0 143 144 0 4 122 0 122 123 0 49 51 0
		 51 25 0 50 52 0 52 142 0 142 143 0 8 121 0 121 122 0 51 19 0 19 21 0 52 16 0 16 141 0
		 141 142 0;
	setAttr ".ed[166:331]" 12 120 0 120 121 0 13 69 0 69 70 0 70 12 0 70 119 0
		 119 120 0 174 175 0 175 97 0 97 95 0 132 133 0 133 68 0 68 14 0 16 71 0 71 140 0
		 140 141 0 17 114 0 114 115 0 115 79 0 79 17 0 152 153 0 153 87 0 87 85 0 21 73 0
		 73 74 0 74 22 0 19 72 0 72 73 0 74 161 0 161 162 0 24 76 0 76 77 0 77 20 0 23 75 0
		 75 103 0 103 104 0 175 154 0 154 99 0 99 97 0 69 54 0 53 70 0 118 119 0 71 56 0 139 140 0
		 72 60 0 65 73 0 64 74 0 160 161 0 75 66 0 102 103 0 76 67 0 67 63 0 63 77 0 153 134 0
		 134 89 0 89 87 0 115 100 0 58 79 0 133 116 0 116 57 0 57 68 0 149 150 0 81 46 0 47 82 0
		 82 80 0 80 45 0 48 46 0 83 48 0 20 84 0 84 82 0 18 48 0 85 18 0 77 86 0 86 84 0 78 18 0
		 87 78 0 63 88 0 88 86 0 135 62 0 62 89 0 134 135 0 62 78 0 171 172 0 90 5 0 10 92 0
		 92 91 0 91 6 0 93 9 0 14 94 0 94 92 0 95 13 0 68 96 0 96 94 0 97 69 0 57 98 0 98 96 0
		 54 99 0 154 155 0 100 62 0 135 136 0 101 63 0 67 102 0 76 103 0 24 104 0 28 105 0
		 32 106 0 36 107 0 40 108 0 147 148 0 44 109 0 126 127 0 3 110 0 7 111 0 11 112 0
		 15 113 0 130 131 0 114 18 0 78 115 0 156 157 0 55 117 0 56 118 0 71 119 0 16 120 0
		 52 121 0 50 122 0 41 123 0 42 124 0 168 169 0 109 126 0 125 43 0 44 127 0 46 128 0
		 48 129 0 18 130 0 114 131 0 17 132 0 79 133 0 58 116 0 63 135 0 134 88 0 101 136 0
		 61 137 0 158 159 0 59 138 0 60 139 0 72 140 0 19 141 0 51 142 0 49 143 0 37 144 0
		 38 145 0 166 167 0 108 147 0 146 39 0 40 148 0 45 149 0 80 150 0 82 151 0 84 152 0
		 86 153 0 57 155 0 154 98 0 116 156 0 58 157 0 137 158 0 61 159 0;
	setAttr ".ed[332:359]" 66 160 0 75 161 0 23 162 0 27 163 0 31 164 0 35 165 0
		 39 166 0 146 167 0 43 168 0 125 169 0 2 170 0 6 171 0 91 172 0 92 173 0 94 174 0
		 96 175 0 176 177 0 177 179 0 179 178 0 178 176 0 179 181 0 181 180 0 180 178 0 181 183 0
		 183 182 0 182 180 0 183 177 0 176 182 0;
	setAttr ".n[0]" -type "float3"  1e+020 1e+020 1e+020;
	setAttr -s 180 -ch 720 ".fc[0:179]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 10
		mu 0 4 6 7 8 9
		f 4 -3 11 12 13
		mu 0 4 3 2 10 11
		f 4 14 15 16 17
		mu 0 4 12 13 14 15
		f 4 -10 18 19 20
		mu 0 4 9 8 16 17
		f 4 -13 21 22 23
		mu 0 4 11 10 18 19
		f 4 -17 24 25 26
		mu 0 4 15 14 20 21
		f 4 -20 27 28 29
		mu 0 4 17 16 22 23
		f 4 30 31 32 33
		mu 0 4 24 25 26 27
		f 4 34 35 36 -32
		mu 0 4 25 28 29 26
		f 4 -29 37 38 39
		mu 0 4 23 22 30 31
		f 4 40 41 42 43
		mu 0 4 32 33 34 35
		f 4 44 45 46 -42
		mu 0 4 33 36 37 34
		f 4 47 48 49 50
		mu 0 4 38 39 40 41
		f 4 51 52 53 54
		mu 0 4 42 43 44 45
		f 4 55 56 57 -53
		mu 0 4 43 46 47 44
		f 4 58 59 60 61
		mu 0 4 48 49 50 51
		f 4 62 63 64 65
		mu 0 4 52 53 54 55
		f 4 66 67 68 -64
		mu 0 4 53 56 57 54
		f 4 69 70 71 72
		mu 0 4 58 59 60 61
		f 4 -65 73 74 75
		mu 0 4 55 54 62 63
		f 4 -69 76 77 -74
		mu 0 4 54 57 64 62
		f 4 -72 78 79 80
		mu 0 4 61 60 65 66
		f 4 -75 81 82 83
		mu 0 4 63 62 67 68
		f 4 -78 84 85 -82
		mu 0 4 62 64 69 67
		f 4 -80 86 87 88
		mu 0 4 66 65 70 71
		f 4 -83 89 90 91
		mu 0 4 68 67 72 73
		f 4 -86 92 93 -90
		mu 0 4 67 69 74 72
		f 4 -88 94 95 96
		mu 0 4 71 70 75 76
		f 4 97 98 99 100
		mu 0 4 77 78 79 80
		f 4 101 102 103 -99
		mu 0 4 78 81 82 79
		f 4 104 105 106 107
		mu 0 4 83 84 85 86
		f 4 108 109 -1 110
		mu 0 4 87 88 89 90
		f 4 111 112 -5 -110
		mu 0 4 88 91 92 89
		f 4 113 114 -8 115
		mu 0 4 93 94 95 96
		f 4 116 117 118 119
		mu 0 4 97 98 99 100
		f 4 120 121 122 123
		mu 0 4 101 102 103 104
		f 4 124 125 126 127
		mu 0 4 105 106 107 108
		f 4 -119 128 129 130
		mu 0 4 100 99 109 110
		f 4 131 132 133 134
		mu 0 4 111 112 113 114
		f 4 -127 135 136 137
		mu 0 4 108 107 115 116
		f 4 -130 138 139 140
		mu 0 4 110 109 117 118
		f 4 -134 141 142 143
		mu 0 4 114 113 119 120
		f 4 -137 144 145 146
		mu 0 4 116 115 121 122
		f 4 -92 147 148 -84
		mu 0 4 123 124 125 126
		f 4 -101 149 150 151
		mu 0 4 127 128 129 130
		f 4 -111 -4 152 153
		mu 0 4 131 0 3 132
		f 4 -149 154 155 -76
		mu 0 4 126 125 133 134
		f 4 -151 156 157 158
		mu 0 4 130 129 135 136
		f 4 -153 -14 159 160
		mu 0 4 132 3 11 137
		f 4 -156 161 162 -66
		mu 0 4 134 133 138 139
		f 4 -158 163 164 165
		mu 0 4 136 135 140 141
		f 4 -160 -24 166 167
		mu 0 4 137 11 19 142
		f 4 -23 168 169 170
		mu 0 4 19 18 143 144
		f 4 -167 -171 171 172
		mu 0 4 145 19 144 146
		f 4 -26 173 174 175
		mu 0 4 21 20 147 148
		f 4 -40 176 177 178
		mu 0 4 23 31 149 150
		f 4 -165 179 180 181
		mu 0 4 151 152 153 154
		f 4 182 183 184 185
		mu 0 4 155 156 157 158
		f 4 -143 186 187 188
		mu 0 4 159 160 161 162
		f 4 -63 189 190 191
		mu 0 4 53 52 163 164
		f 4 -163 192 193 -190
		mu 0 4 52 165 166 163
		f 4 -67 -192 194 195
		mu 0 4 56 53 164 167
		f 4 -140 196 197 198
		mu 0 4 168 169 170 171
		f 4 -70 199 200 201
		mu 0 4 59 58 172 173
		f 4 -175 202 203 204
		mu 0 4 148 147 174 175
		f 4 -170 205 -31 206
		mu 0 4 144 143 176 177
		f 4 -172 -207 -34 207
		mu 0 4 146 144 177 178
		f 4 -181 208 -44 209
		mu 0 4 154 153 179 180
		f 4 -194 210 -55 211
		mu 0 4 163 166 181 182
		f 4 -191 -212 -54 212
		mu 0 4 164 163 182 183
		f 4 -195 -213 -58 213
		mu 0 4 167 164 183 184
		f 4 -201 214 -61 215
		mu 0 4 173 172 185 186
		f 4 -198 216 217 218
		mu 0 4 171 170 187 188
		f 4 -188 219 220 221
		mu 0 4 162 161 189 190
		f 4 -185 222 -48 223
		mu 0 4 158 157 191 192
		f 4 -178 224 225 226
		mu 0 4 150 149 193 194
		f 4 -123 227 -132 228
		mu 0 4 104 103 112 111
		f 4 -131 229 230 231
		mu 0 4 100 110 195 196
		f 4 232 -229 -135 233
		mu 0 4 197 104 111 114
		f 4 -141 234 235 -230
		mu 0 4 110 118 198 195
		f 4 236 -234 -144 237
		mu 0 4 199 197 114 120
		f 4 -199 238 239 -235
		mu 0 4 168 171 200 201
		f 4 240 -238 -189 241
		mu 0 4 202 203 159 162
		f 4 -219 242 243 -239
		mu 0 4 171 188 204 200
		f 4 244 245 -221 246
		mu 0 4 205 206 207 208
		f 4 247 -242 -222 -246
		mu 0 4 209 202 162 190
		f 4 -7 248 -15 249
		mu 0 4 2 5 13 12
		f 4 -21 250 251 252
		mu 0 4 9 17 210 211
		f 4 -12 -250 -18 253
		mu 0 4 10 2 12 15
		f 4 -30 254 255 -251
		mu 0 4 17 23 212 210
		f 4 -22 -254 -27 256
		mu 0 4 18 10 15 21
		f 4 -179 257 258 -255
		mu 0 4 23 150 213 212
		f 4 -169 -257 -176 259
		mu 0 4 143 18 21 148
		f 4 -227 260 261 -258
		mu 0 4 150 194 214 213
		f 4 -35 262 -204 263
		mu 0 4 28 25 215 216
		f 4 -206 -260 -205 -263
		mu 0 4 176 143 148 175
		f 4 264 -245 265 -49
		mu 0 4 39 206 205 40
		f 4 -60 266 -218 267
		mu 0 4 50 49 217 218
		f 4 268 -216 -268 -217
		mu 0 4 170 173 186 187
		f 4 269 -202 -269 -197
		mu 0 4 169 59 173 170
		f 4 -71 -270 -139 270
		mu 0 4 60 59 169 219
		f 4 -79 -271 -129 271
		mu 0 4 65 60 219 220
		f 4 -87 -272 -118 272
		mu 0 4 70 65 220 221
		f 4 -95 -273 -117 273
		mu 0 4 75 70 221 222
		f 4 -106 274 -121 275
		mu 0 4 85 84 223 224
		f 4 -115 276 -125 277
		mu 0 4 95 94 225 226
		f 4 -9 -278 -128 278
		mu 0 4 8 7 105 108
		f 4 -19 -279 -138 279
		mu 0 4 16 8 108 116
		f 4 -28 -280 -147 280
		mu 0 4 22 16 116 122
		f 4 -38 -281 -146 281
		mu 0 4 30 22 122 227
		f 4 -184 282 -241 283
		mu 0 4 157 156 203 202
		f 4 -223 -284 -248 -265
		mu 0 4 191 157 202 209
		f 4 -37 284 -45 285
		mu 0 4 26 29 36 33
		f 4 -33 -286 -41 286
		mu 0 4 27 26 33 32
		f 4 287 -208 -287 -209
		mu 0 4 153 146 178 179
		f 4 288 -173 -288 -180
		mu 0 4 152 145 146 153
		f 4 289 -168 -289 -164
		mu 0 4 135 137 142 140
		f 4 290 -161 -290 -157
		mu 0 4 129 132 137 135
		f 4 291 -154 -291 -150
		mu 0 4 128 131 132 129
		f 4 -100 292 -109 -292
		mu 0 4 80 79 88 87
		f 4 -104 293 -112 -293
		mu 0 4 79 82 91 88
		f 4 -107 294 -114 295
		mu 0 4 86 85 94 93
		f 4 -277 -295 -276 296
		mu 0 4 225 94 85 224
		f 4 -126 -297 -124 297
		mu 0 4 107 106 101 104
		f 4 -136 -298 -233 298
		mu 0 4 115 107 104 197
		f 4 -145 -299 -237 299
		mu 0 4 121 115 197 199
		f 4 300 -282 -300 -283
		mu 0 4 156 30 227 203
		f 4 -39 -301 -183 301
		mu 0 4 31 30 156 155
		f 4 -177 -302 -186 302
		mu 0 4 149 31 155 158
		f 4 -225 -303 -224 303
		mu 0 4 193 149 158 192
		f 4 304 -247 305 -243
		mu 0 4 217 205 208 228
		f 4 -266 -305 -267 306
		mu 0 4 40 205 217 49
		f 4 -50 -307 -59 307
		mu 0 4 41 40 49 48
		f 4 -47 308 -56 309
		mu 0 4 34 37 46 43
		f 4 -43 -310 -52 310
		mu 0 4 35 34 43 42
		f 4 311 -210 -311 -211
		mu 0 4 166 154 180 181
		f 4 312 -182 -312 -193
		mu 0 4 165 151 154 166
		f 4 313 -166 -313 -162
		mu 0 4 133 136 141 138
		f 4 314 -159 -314 -155
		mu 0 4 125 130 136 133
		f 4 315 -152 -315 -148
		mu 0 4 124 127 130 125
		f 4 -91 316 -98 -316
		mu 0 4 73 72 78 77
		f 4 -94 317 -102 -317
		mu 0 4 72 74 81 78
		f 4 -96 318 -105 319
		mu 0 4 76 75 84 83
		f 4 -275 -319 -274 320
		mu 0 4 223 84 75 222
		f 4 -122 -321 -120 321
		mu 0 4 103 102 97 100
		f 4 -228 -322 -232 322
		mu 0 4 112 103 100 196
		f 4 -133 -323 -231 323
		mu 0 4 113 112 196 195
		f 4 -142 -324 -236 324
		mu 0 4 119 113 195 198
		f 4 -187 -325 -240 325
		mu 0 4 161 160 201 200
		f 4 -220 -326 -244 -306
		mu 0 4 189 161 200 204
		f 4 326 -264 327 -261
		mu 0 4 229 28 216 230
		f 4 -36 -327 -226 328
		mu 0 4 29 28 229 231
		f 4 -285 -329 -304 329
		mu 0 4 36 29 231 38
		f 4 -46 -330 -51 330
		mu 0 4 37 36 38 41
		f 4 -309 -331 -308 331
		mu 0 4 46 37 41 48
		f 4 -57 -332 -62 332
		mu 0 4 47 46 48 51
		f 4 333 -214 -333 -215
		mu 0 4 172 167 184 185
		f 4 334 -196 -334 -200
		mu 0 4 58 56 167 172
		f 4 -68 -335 -73 335
		mu 0 4 57 56 58 61
		f 4 -77 -336 -81 336
		mu 0 4 64 57 61 66
		f 4 -85 -337 -89 337
		mu 0 4 69 64 66 71
		f 4 -93 -338 -97 338
		mu 0 4 74 69 71 76
		f 4 -318 -339 -320 339
		mu 0 4 81 74 76 83
		f 4 -103 -340 -108 340
		mu 0 4 82 81 83 86
		f 4 -294 -341 -296 341
		mu 0 4 91 82 86 93
		f 4 -113 -342 -116 342
		mu 0 4 92 91 93 96
		f 4 -6 -343 -11 343
		mu 0 4 5 4 6 9
		f 4 -249 -344 -253 344
		mu 0 4 13 5 9 211
		f 4 -16 -345 -252 345
		mu 0 4 14 13 211 210
		f 4 -25 -346 -256 346
		mu 0 4 20 14 210 212
		f 4 -174 -347 -259 347
		mu 0 4 147 20 212 213
		f 4 -203 -348 -262 -328
		mu 0 4 174 147 213 214
		f 4 348 349 350 351
		mu 0 4 232 233 234 235
		f 4 -351 352 353 354
		mu 0 4 235 234 236 237
		f 4 -354 355 356 357
		mu 0 4 237 236 238 239
		f 4 -357 358 -349 359
		mu 0 4 239 238 240 241
		f 4 -359 -356 -353 -350
		mu 0 4 233 242 243 234
		f 4 -360 -352 -355 -358
		mu 0 4 244 232 235 245;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.774668137387593 2.8518784317310861 -0.19000879654726899 ;
	setAttr ".r" -type "double3" -20.138352726153272 91.399999999940832 5.0888874903416268e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.283403803905534;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:179]";
	setAttr ".ix" -type "matrix" 0.70710678118654746 0 -0.70710678118654757 0 0 1 0 0
		 0.70710678118654757 0 0.70710678118654746 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.13288658857345581 0.21711194515228271 -0.046083271503448486 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 3.540253758430481 3.001230001449585 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[30]" "e[33]" "e[43]" "e[47]" "e[53:54]" "e[57]" "e[60]" "e[203]" "e[217]" "e[220]" "e[225]" "e[242]" "e[245]" "e[260]" "e[262]" "e[264]" "e[267]" "e[286]" "e[303]" "e[305]" "e[310]" "e[327]" "e[332]";
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[28]" "e[39]" "e[145]" "e[182]" "e[280]" "e[282]" "e[299]" "e[301]";
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[47]" "e[182]" "e[185]" "e[188]" "e[221]" "e[223]" "e[237]" "e[245]" "e[264]" "e[282]";
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[39]" "e[185]" "e[223]" "e[225]" "e[254]" "e[258]" "e[260:261]" "e[301]" "e[303]";
createNode polyMapCut -n "polyMapCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[7]" "e[10]" "e[28]" "e[127]" "e[137]" "e[146]" "e[251:252]" "e[254:255]" "e[277]" "e[280]";
createNode polyMapCut -n "polyMapCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[120:121]" "e[124]" "e[127]" "e[132]" "e[137]" "e[141:142]" "e[145:146]" "e[227]" "e[237]" "e[296]" "e[299]";
createNode polyMapCut -n "polyMapCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[119]" "e[121]" "e[130]" "e[132]" "e[140:141]" "e[227]" "e[234]" "e[320]" "e[324]";
createNode polyMapCut -n "polyMapCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[142]" "e[161]" "e[188]" "e[198]" "e[218]" "e[220:221]" "e[234]" "e[242]" "e[305]" "e[324]";
createNode polyMapCut -n "polyMapCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[25]" "e[168]" "e[203]" "e[205]" "e[256]" "e[258]" "e[261:262]" "e[327]" "e[346]";
createNode polyMapCut -n "polyMapCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[0]" "e[4]" "e[7]" "e[82]" "e[85]" "e[87]" "e[91]" "e[100]" "e[110]" "e[116]" "e[120]" "e[124]" "e[272]" "e[277]" "e[291]" "e[296]" "e[315]" "e[320]" "e[337]" "e[342]";
createNode polyMapCut -n "polyMapCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[5]" "e[10]" "e[14]" "e[17]" "e[25:26]" "e[248]" "e[251:252]" "e[255]" "e[342]" "e[346]";
createNode Unfold3DUnfold -n "Unfold3DUnfold1";
	setAttr ".uvl" -type "Int32Array" 283 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 247 248 249 250 251 252 253 254 255 256 257
		 258 259 260 261 262 263 264 265 266 267 268 269
		 270 271 272 273 274 275 276 277 278 279 280 281
		 282 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|Mesh|MeshShape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 180 4 ;
	setAttr ".fpve" -type "Int32Array" 720 0 1 2 3 1 4
		 5 2 6 7 8 9 3 2 10 11 12 13
		 14 15 9 8 16 17 11 10 18 19 15 14
		 20 21 17 16 22 23 24 25 26 27 25 28
		 29 26 30 31 32 33 34 35 36 37 35 38
		 39 36 40 41 42 43 44 45 46 47 45 48
		 49 46 50 51 52 53 54 55 56 57 55 58
		 59 56 60 61 62 63 57 56 64 65 56 59
		 66 64 63 62 67 68 65 64 69 70 64 66
		 71 69 68 67 72 73 74 75 76 77 75 78
		 79 76 80 81 82 83 84 85 86 87 85 88
		 89 86 90 91 92 93 94 95 96 97 95 98
		 99 96 100 101 102 103 104 105 106 107 108 109
		 110 111 112 113 114 115 107 106 116 117 118 119
		 120 121 115 114 122 123 117 116 124 125 121 120
		 126 127 123 122 128 129 70 130 131 65 132 133
		 134 135 136 0 3 137 65 131 138 57 135 134
		 139 140 137 3 11 141 57 138 142 54 140 139
		 143 144 141 11 19 145 19 18 146 147 145 19
		 147 148 149 150 151 152 153 154 155 156 144 143
		 157 158 159 160 161 162 163 164 165 166 55 54
		 167 168 54 142 169 167 58 55 168 170 125 124
		 171 172 61 60 173 174 152 151 175 176 147 146
		 177 178 148 147 178 179 158 157 180 181 167 169
		 182 183 168 167 183 184 170 168 184 185 174 173
		 186 187 172 171 188 189 166 165 190 191 162 161
		 192 193 156 155 194 195 111 110 119 118 196 197
		 198 199 200 111 118 121 197 201 202 198 203 200
		 121 127 204 205 206 207 208 209 210 211 205 212
		 213 206 214 215 216 217 218 208 211 219 2 5
		 220 221 9 17 222 223 10 2 221 224 17 23
		 225 222 18 10 224 226 153 156 227 228 229 230
		 149 152 156 195 231 227 28 25 232 233 234 229
		 152 176 41 215 214 42 52 51 235 236 171 174
		 187 188 124 61 174 171 62 61 124 116 67 62
		 116 106 72 67 106 105 82 81 237 238 92 91
		 239 240 102 101 241 242 8 7 243 244 16 8
		 244 245 22 16 245 246 32 31 247 248 161 160
		 209 208 192 161 208 218 26 29 38 35 27 26
		 35 34 157 148 179 180 143 145 148 157 139 141
		 145 143 134 137 141 139 133 136 137 134 87 86
		 95 94 86 89 98 95 93 92 101 100 241 101
		 92 240 114 113 108 111 122 114 111 200 128 122
		 200 203 249 32 248 250 33 32 249 251 155 154
		 252 253 194 155 253 254 235 214 217 255 42 214
		 235 51 43 42 51 50 36 39 48 45 37 36
		 45 44 169 158 181 182 142 144 158 169 138 140
		 144 142 131 135 140 138 130 132 135 131 77 76
		 85 84 76 79 88 85 83 82 91 90 239 91
		 82 238 256 257 258 196 259 256 196 199 260 259
		 199 198 261 260 198 202 165 164 207 206 190 165
		 206 213 262 28 233 263 29 28 262 264 38 29
		 264 40 39 38 40 43 48 39 43 50 49 48
		 50 53 173 170 185 186 60 58 170 173 59 58
		 60 63 66 59 63 68 71 66 68 73 79 78
		 80 83 88 79 83 90 89 88 90 93 98 89
		 93 100 99 98 100 103 265 266 267 268 13 265
		 268 269 14 13 269 270 20 14 270 271 151 150
		 272 273 175 151 273 274 275 276 277 278 278 277
		 279 280 280 279 281 282 282 281 276 275 276 281
		 279 277 282 275 278 280 ;
	setAttr ".mue" -type "floatArray" 283 0.50959939 0.5281707 0.60208607 0.55259609
		 0.53483474 0.59519655 0.44034401 0.46713614 0.44803628 0.38712254 0.68570745 0.63759547
		 0.86485177 0.89512509 0.94152009 0.86182755 0.43896526 0.39400184 0.71323252 0.6746583
		 0.89700842 0.86419165 0.44585708 0.38410366 0.87685627 0.8366307 0.82284862 0.91345012
		 0.73398525 0.74073231 0.39502189 0.3434912 0.27085122 0.3315967 0.91978943 0.81687737
		 0.83668429 0.96448499 0.74711633 0.76692325 0.70000595 0.62142777 0.64459282 0.70525742
		 0.98358798 0.86833161 0.90151453 0.95688897 0.79857063 0.83175355 0.73713309 0.66494304
		 0.70816094 0.7567035 0.37916896 0.28298619 0.29694146 0.37955961 0.22207193 0.2422573
		 0.15805548 0.12215056 0.16340441 0.19444272 0.33555642 0.38738024 0.30208769 0.25284615
		 0.27203718 0.3697294 0.40367979 0.34828362 0.31850779 0.32945961 0.095758475 0.12740943
		 0.092737101 0.062886596 0.14345123 0.10264012 0.15654466 0.15935114 0.13073505 0.11059879
		 0.044178218 0.081139714 0.071915314 0.029016076 0.091251999 0.082228906 0.099635445
		 0.11724897 0.10263718 0.090802155 0.024514413 0.050067034 0.024660235 0.019871704
		 0.062511645 0.039070334 0.077557497 0.087457992 0.060839999 0.035023794 0.29969722
		 0.30807063 0.2342412 0.23841091 0.078819975 0.11848545 0.14083466 0.10078747 0.034208529
		 0.054199047 0.047163162 0.02111654 0.13318333 0.096136048 0.1307659 0.16862923 0.22174399
		 0.14704712 0.05944746 0.013581025 0.087592788 0.045713615 0.23157145 0.14453678 0.08057145
		 0.0020000001 0.43852869 0.44057915 0.46233389 0.48275903 0.50958472 0.47738042 0.49588054
		 0.53045559 0.4617981 0.56854701 0.51921666 0.60194319 0.47149396 0.59226304 0.53733546
		 0.63298178 0.73433161 0.69154513 0.64792609 0.49990526 0.53409421 0.53368086 0.499488
		 0.66910976 0.76525968 0.76411575 0.6800192 0.60462564 0.54763448 0.15490235 0.24868758
		 0.24822772 0.17440331 0.17475981 0.25875172 0.23493122 0.17554796 0.37973943 0.2564173
		 0.4777768 0.1928256 0.06412138 0.021914691 0.13576801 0.098998174 0.53742766 0.48617956
		 0.74135089 0.70593959 0.66261172 0.62725765 0.55697793 0.48307067 0.38074905 0.24577482
		 0.17929268 0.11677308 0.079627126 0.044451695 0.0020000001 0.23762479 0.17806545
		 0.25030398 0.16508028 0.7650367 0.6785984 0.59434229 0.61034042 0.54063785 0.55382288
		 0.089512765 0.61269087 0.54566413 0.13033234 0.38351834 0.38563222 0.31535667 0.31776518
		 0.33129045 0.34383988 0.35796595 0.36049184 0.38921618 0.31712878 0.58038503 0.54006803
		 0.5080716 0.49446473 0.33151445 0.36456525 0.66278356 0.69292927 0.36613309 0.34950536
		 0.74599874 0.35255566 0.77647853 0.65650076 0.63743836 0.42173845 0.41765293 0.64178491
		 0.77202988 0.72198391 0.40510622 0.61054188 0.66121227 0.16153902 0.15227793 0.16832145
		 0.13286778 0.10377564 0.083540402 0.49067625 0.48352149 0.50159556 0.50665617 0.28851473
		 0.21210039 0.20211877 0.16483109 0.26302144 0.85514778 0.82632321 0.84664506 0.54172474
		 0.53544122 0.51519924 0.5286839 0.53351802 0.49919352 0.48652175 0.6567145 0.64708811
		 0.69561344 0.93876231 0.96341944 0.98387939 0.94619864 0.92533714 0.96240824 0.96094936
		 0.59780264 0.6157077 0.61457616 0.61758095 0.87824512 0.87824512 0.61758095 0.87824512
		 0.61758095 0.87824512 0.61758095 ;
	setAttr ".mve" -type "floatArray" 283 0.051135428 0.024622567 0.12568384 0.15045041
		 0.0020000001 0.042658124 0.44445771 0.44303674 0.49433053 0.49122497 0.21914236 0.24048957
		 0.81925035 0.77014202 0.88977611 0.88616645 0.57697988 0.6211772 0.25354269 0.2872667
		 0.93425864 0.92770743 0.6928432 0.67829734 0.7547667 0.76680034 0.72034317 0.71931982
		 0.76864111 0.69811618 0.73653215 0.77401036 0.72456282 0.66432071 0.6781233 0.65026748
		 0.57709181 0.62515622 0.63138479 0.55820912 0.60699064 0.57491404 0.51085979 0.54242301
		 0.55458122 0.46017238 0.33757976 0.45909002 0.44128972 0.31869709 0.42466003 0.44588089
		 0.36593059 0.35235828 0.38181943 0.34966424 0.30833974 0.32221866 0.31846768 0.27989042
		 0.30366218 0.27054107 0.22542334 0.25481758 0.18982677 0.20031649 0.17084469 0.13940553
		 0.15417877 0.081508987 0.087965213 0.069359854 0.046355601 0.058950663 0.65506035
		 0.66562486 0.73939508 0.66110116 0.68358743 0.75112206 0.70049149 0.71685308 0.76343369
		 0.76223832 0.67694366 0.75014102 0.76035839 0.69174314 0.76035762 0.76926237 0.76985747
		 0.77757323 0.78658843 0.77562857 0.70698023 0.7592721 0.75594568 0.72319925 0.77422601
		 0.77915061 0.78333306 0.79725653 0.84232473 0.83494014 0.0028031967 0.034125108 0.12500849
		 0.075784616 0.38266057 0.37825674 0.37829226 0.47622204 0.40178433 0.37333038 0.44883084
		 0.45508558 0.19697742 0.16234876 0.45300481 0.42147714 0.58320963 0.57816255 0.59175158
		 0.5660888 0.23834775 0.19838436 0.63354051 0.64111513 0.65266037 0.6577751 0.086218879
		 0.19581683 0.07764069 0.070659682 0.17025615 0.18186913 0.06119151 0.16055034 0.31561521
		 0.27968463 0.29651722 0.26080844 0.37322217 0.33274391 0.35342443 0.31203637 0.28353837
		 0.31830597 0.34483233 0.88101655 0.88082862 0.9282288 0.91449106 0.83003253 0.82413298
		 0.87398714 0.85316843 0.36336941 0.38678169 0.86942708 0.87786174 0.91796631 0.91061687
		 0.78490323 0.80482757 0.83177978 0.81072646 0.41653794 0.4103677 0.40723276 0.3792727
		 0.2647011 0.2257341 0.33042535 0.29707545 0.95107472 0.95134687 0.32366249 0.34428528
		 0.37084806 0.39529586 0.41480902 0.43634644 0.44592842 0.43941975 0.40774009 0.35317409
		 0.31932598 0.28685239 0.24841803 0.87269628 0.86385119 0.95339185 0.95649433 0.91052771
		 0.89770842 0.63484633 0.8023954 0.83069026 0.70693481 0.56856126 0.866669 0.87680614
		 0.64736164 0.7964564 0.83309942 0.83990186 0.80561894 0.89905685 0.87674689 0.87038791
		 0.89578867 0.86366874 0.8699038 0.50078213 0.56369919 0.55503851 0.49755672 0.94720924
		 0.94780123 0.090435512 0.13966221 0.61281437 0.51687884 0.17824297 0.68179315 0.20420946
		 0.85248291 0.83022904 0.91158855 0.87561971 0.89773679 0.81595391 0.82276517 0.94908035
		 0.40944219 0.37905732 0.73299468 0.76561028 0.79885972 0.82040054 0.82074076 0.84763622
		 0.44660151 0.50196522 0.61037093 0.70198935 0.8012476 0.78282702 0.67777514 0.76548231
		 0.6060735 0.82534158 0.85978109 0.90127003 0.43390641 0.60921305 0.5998022 0.56500185
		 0.66126096 0.82712209 0.87604606 0.76692855 0.80249256 0.68925738 0.69970602 0.63076836
		 0.68357706 0.7432943 0.78343159 0.8728137 0.94306517 0.88055801 0.90373689 0.95113689
		 0.9355675 0.9355675 0.99800003 0.99800003 0.99800003 0.99800003 0.9355675 0.9355675 ;
	setAttr ".mnsl" -type "stringArray" 1 "|Mesh|MeshShape.map[0:282]"  ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
connectAttr "Unfold3DUnfold1.om" "MeshShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "polySurfaceShape1.o" "polyPlanarProj1.ip";
connectAttr "MeshShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "Unfold3DUnfold1.im";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "MeshShape.iog" ":initialShadingGroup.dsm" -na;
// End of alvl2_model001_uv.ma
