//Maya ASCII 2012 scene
//Name: alvl2_island_model.ma
//Last modified: Mon, Oct 13, 2014 12:18:30 PM
//Codeset: 1252
requires maya "2012";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.0561795719176912 4.4212718407671714 5.122007323225966 ;
	setAttr ".r" -type "double3" -22.538352729335433 46.600000000000307 -2.3145193526657398e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 7.5971796568738235;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 2.2126242892727666 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4441029268031258 100.1 4.4693535116145098 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 32.573254406682011;
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
createNode transform -n "camera1";
	setAttr ".t" -type "double3" 5.2909805163154555 3.9429274235007061 4.561954765567922 ;
	setAttr ".r" -type "double3" -27.599026351995587 53.566019747978167 -2.6777027798958656e-015 ;
createNode camera -n "cameraShape1" -p "camera1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.4173 0.9449 ;
	setAttr ".ff" 0;
	setAttr ".coi" 2.8754067692240515;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "pCube1";
	setAttr ".s" -type "double3" 2.008686463041621 2.008686463041621 2.008686463041621 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 9 "f[0:8]" "f[11]" "f[18:85]" "f[87:95]" "f[97]" "f[100:113]" "f[116:131]" "f[137:151]" "f[158:173]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 8 "f[9:10]" "f[12:17]" "f[86]" "f[96]" "f[98:99]" "f[114:115]" "f[132:136]" "f[152:157]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 232 ".uvst[0].uvsp[0:231]" -type "float2" 0.375 0 0.45833334
		 0 0.54166669 0 0.625 0 0.375 0.083333336 0.45833334 0.083333336 0.54166669 0.083333336
		 0.625 0.083333336 0.375 0.16666667 0.45833334 0.16666667 0.54166669 0.16666667 0.625
		 0.16666667 0.375 0.25 0.45833334 0.25 0.54166669 0.25 0.625 0.25 0.375 0.33333334
		 0.54166669 0.33333334 0.625 0.33333334 0.375 0.41666669 0.625 0.41666669 0.375 0.5
		 0.45833334 0.5 0.54166669 0.5 0.625 0.5 0.375 0.58333331 0.45833334 0.58333331 0.54166669
		 0.58333331 0.625 0.58333331 0.375 0.66666663 0.45833334 0.66666663 0.54166669 0.66666663
		 0.625 0.66666663 0.375 0.74999994 0.45833334 0.74999994 0.54166669 0.74999994 0.625
		 0.74999994 0.375 0.83333325 0.45833334 0.83333325 0.54166669 0.83333325 0.625 0.83333325
		 0.375 0.91666657 0.45833334 0.91666657 0.54166669 0.91666657 0.625 0.91666657 0.375
		 0.99999988 0.45833334 0.99999988 0.54166669 0.99999988 0.625 0.99999988 0.875 0 0.79166669
		 0 0.70833337 0 0.875 0.083333336 0.79166669 0.083333336 0.70833337 0.083333336 0.875
		 0.16666667 0.79166669 0.16666667 0.70833337 0.16666667 0.875 0.25 0.79166669 0.25
		 0.70833337 0.25 0.125 0 0.20833334 0 0.29166669 0 0.125 0.083333336 0.20833334 0.083333336
		 0.29166669 0.083333336 0.125 0.16666667 0.20833334 0.16666667 0.29166669 0.16666667
		 0.125 0.25 0.20833334 0.25 0.29166669 0.25 0.375 0.25 0.45833334 0.25 0.375 0.33333334
		 0.54166669 0.25 0.54166669 0.33333334 0.375 0.41666669 0.625 0.33333334 0.625 0.41666669
		 0.45833334 0.5 0.375 0.5 0.54166669 0.5 0.625 0.5 0.54166669 0.25 0.45833334 0.25
		 0.375 0.25 0.375 0.33333334 0.375 0.41666669 0.375 0.5 0.45833334 0.5 0.54166669
		 0.5 0.625 0.5 0.625 0.41666669 0.625 0.33333334 0.54166669 0.33333334 0.70833337
		 0.083333336 0.79166669 0.083333336 0.79166669 0.16666667 0.70833337 0.16666667 0.79166669
		 0.25 0.70833337 0.25 0.625 0.41666669 0.625 0.41666669 0.625 0.33333334 0.625 0.33333334
		 0.625 0.41666669 0.625 0.33333334 0.45833334 0.083333336 0.54166669 0.083333336 0.54166669
		 0.16666667 0.45833334 0.16666667 0.54166669 0.25 0.45833334 0.25 0.54166669 0.25
		 0.45833334 0.25 0.54166669 0.25 0.45833334 0.25 0.58402884 0.33333334 0.58402884
		 0.5 0.58402884 0.5 0.58402884 0.5 0.58402884 0.58333331 0.58402884 0.66666663 0.58402884
		 0.74999994 0.58402884 0.83333325 0.58402884 0.91666657 0.58402884 0 0.58402884 0.99999988
		 0.58402884 0.083333336 0.58402884 0.16666667 0.58402884 0.25 0.58402884 0.33333334
		 0.58402884 0.33333334 0.54166669 0.29281831 0.375 0.29281831 0.375 0.29281831 0.33218169
		 0.25 0.375 0.29281831 0.33218169 0.16666667 0.33218169 0.083333336 0.33218169 0 0.375
		 0.95718157 0.45833334 0.95718157 0.54166669 0.95718157 0.58402884 0.95718157 0.625
		 0.95718157 0.66781831 0 0.66781831 0.083333336 0.66781831 0.16666667 0.625 0.29281831
		 0.66781831 0.25 0.58402884 0.29281831 0.54166669 0.29281831 0.54166669 0.29281831
		 0.625 0.37183958 0.375 0.37183958 0.375 0.37183958 0.25316042 0.25 0.375 0.37183958
		 0.25316045 0.16666667 0.25316045 0.083333336 0.25316045 0 0.375 0.87816036 0.45833334
		 0.87816036 0.54166669 0.87816036 0.58402884 0.87816036 0.625 0.87816036 0.74683964
		 0 0.74683964 0.083333336 0.74683964 0.083333336 0.74683964 0.16666667 0.625 0.37183958
		 0.74683958 0.25 0.625 0.37183958 0.50264341 0.25 0.50264341 0.5 0.50264341 0.5 0.50264341
		 0.5 0.50264341 0.58333331 0.50264341 0.66666663 0.50264341 0.74999994 0.50264341
		 0.83333325 0.50264341 0.87816036 0.50264341 0.91666657 0.50264341 0.95718157 0.50264341
		 0 0.50264341 0.99999988 0.50264341 0.083333336 0.50264341 0.083333336 0.50264341
		 0.16666667 0.50264341 0.25 0.50264341 0.25 0.09993273 0.20709679 0.16891429 0.16432585
		 0.21809551 0.24405214 0.049552865 0.29172209 0.35951766 0.10904701 0.38254818 0.24405214
		 0.26463118 0.37179518 0.058531202 0.37179518 0.26463118 0.05062212 0.35457504 0.0019919528
		 0.50456709 0.073215239 0.47121274 0.23779389 0.40433982 0.37179518 0.26463118 0.51834249
		 0.0018830178 0.49320459 0.50456709 0.0019919528 0.50456709 0.39351967 0.40433982
		 0.51834249 0.26463118 0.75249428 0.0018829582 0.63454354 0.52737951 0.516653 0.40433982
		 0.75249428 0.26463118 0.99800795 0.09993273 0.79924196 0.66739243 0.41368556 0.65651935
		 0.54490882 0.52737951 0.75249428 0.40433982 0.99800795 0.82487142 0.39351967 0.78141898
		 0.53128374 0.6513657 0.67643589 0.52737951 0.89729172 0.88894993 0.39351967 0.94337243
		 0.49390626 0.77128071 0.7169525 0.6111033 0.84744853 0.88733494 0.6365453 0.69207799
		 0.79924196;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.067098491 0.05287258 ;
	setAttr ".pt[5:7]" -type "float3" -0.12678093 0.22556934 0.087752491  
		-0.026967684 -0.055313971 0.086767927  0 0.076727122 0.086767927 ;
	setAttr ".pt[10:11]" -type "float3" 0.0080270451 0.0091842851 0.010334775  
		-0.015029063 0 -0.023512688 ;
	setAttr ".pt[15]" -type "float3" -0.067055263 0 -0.038319256 ;
	setAttr ".pt[43]" -type "float3" 0 -0.00067693228 0 ;
	setAttr ".pt[46]" -type "float3" 0.051170532 0.076727122 0.086767927 ;
	setAttr ".pt[48]" -type "float3" -0.0085237762 0.061929125 -0.037675887 ;
	setAttr ".pt[82]" -type "float3" 0.068320647 -0.0064715464 0.00058927207 ;
	setAttr ".pt[90:93]" -type "float3" 0.010365834 0.20121875 0.24587421  0 
		-0.050049834 0.2118842  -0.0080270451 -0.0091842841 -0.010334775  0 0 0.1078425 ;
	setAttr ".pt[95]" -type "float3" 0 0 0.10784249 ;
	setAttr ".pt[97]" -type "float3" 0 0 0.10784249 ;
	setAttr ".pt[99]" -type "float3" 0 0 0.021641489 ;
	setAttr ".pt[111:112]" -type "float3" 0 0.076727122 0.086767927  0 0.099488534 
		0.043296929 ;
	setAttr ".pt[128]" -type "float3" 0 0.076727122 0.086767927 ;
	setAttr ".pt[171:173]" -type "float3" 0 0 0.072014362  0 -0.050049834 0.14217798  
		0.1918166 0 0 ;
	setAttr -s 176 ".vt";
	setAttr ".vt[0:165]"  -0.13980313 -0.50338531 0.313263 -0.0264192 -0.50338507 0.38076359
		 0.1544652 -0.37934089 0.4070372 0.28803867 -0.29763392 0.34083831 -0.42127654 -0.16666673 0.34451067
		 -0.20191996 -0.37073123 0.46313992 0.053137891 -0.094347358 0.55960536 0.31507796 -0.16666672 0.31728998
		 -0.56256062 0.27333349 0.53264248 -0.43245041 0.31302488 0.70085549 0.19204588 0.29113656 0.80184913
		 0.57501823 0.20472717 0.63132954 -0.60200697 0.50000018 0.60200697 -0.41899112 0.48658216 0.69915754
		 0.23761177 0.5 0.91229582 0.7695592 0.50000018 0.79621667 -0.80137217 0.5 0.26712418
		 0.1826729 0.5 0.18488494 0.91008371 0.5 0.29635841 -0.80137217 0.5 -0.26712421 0.80170214 0.5 -0.47699881
		 -0.60200697 0.50000018 -0.60200697 -0.26712418 0.39891675 -0.83527386 0.26712421 0.5 -0.80137217
		 0.60200721 0.50000018 -0.60200697 -0.53264242 0.2733334 -0.53264248 -0.23634548 0.27333334 -0.70903647
		 0.2363455 0.27333334 -0.70903647 0.5326426 0.2733334 -0.53264248 -0.34451064 -0.16666682 -0.34451067
		 -0.15286708 -0.16666673 -0.45860136 0.15286712 -0.16666673 -0.45860136 0.3445107 -0.16666682 -0.40847284
		 -0.13980313 -0.50338531 -0.094389305 -0.0264192 -0.50338507 -0.16188993 0.1544652 -0.50338507 -0.16188993
		 0.26784909 -0.50338531 -0.094389305 -0.2073037 -0.50338507 0.018994629 0.1240617 -0.63829958 0.14831471
		 0.25704688 -0.63829958 0.14831471 0.33534968 -0.50338507 0.018994629 -0.2073037 -0.50338507 0.19987905
		 0.1240617 -0.63829958 0.28129989 0.25704688 -0.63829958 0.28129989 0.38735217 -0.3852478 0.19987905
		 0.42680681 -0.30343875 -0.28945115 0.48525906 -0.11601962 0.10309573 0.71122736 0.27333334 -0.42904887
		 0.72156036 0.16548242 0.39061162 -0.45860136 -0.1666667 -0.15286708 -0.45860136 -0.1666667 0.15286712
		 -0.70903647 0.27333334 -0.23634548 -0.70903647 0.27333334 0.2363455 -0.60200685 0.76265198 0.60200685
		 -0.46174601 0.76301432 0.68897343 -0.26712415 0.7626518 0.26712415 -0.68618888 0.7626518 0.26712412
		 0.22073956 0.7626518 0.87422919 0.22073956 0.7626518 0.22295162 -0.26712415 0.7626518 -0.50695455
		 -0.80137211 0.76265186 -0.26712415 0.26712418 0.7626518 -0.50695455 0.87201703 0.7626518 0.22295162
		 0.76305044 0.7626518 -0.43468693 -0.26712415 0.7626518 -1.0061594248 -0.60200685 0.76265198 -0.60200685
		 0.26712418 0.7626518 -0.80137211 0.60200709 0.76265204 -0.60200685 0.26267704 0.59075969 0.87422919
		 -0.44568318 0.61562729 0.7552197 -0.60200691 0.64239728 0.60200691 -0.80137217 0.64239705 0.26712415
		 -0.80137217 0.64239711 -0.26712418 -0.60200691 0.64239728 -0.60200691 -0.26712418 0.64239705 -0.96376026
		 0.26712418 0.64239705 -0.80137217 0.60200715 0.64239728 -0.60200691 0.78013474 0.64239705 -0.45174694
		 0.87201703 0.57601815 0.24459642 0.27207246 0.60419321 0.2972306 0.66947448 -0.09966547 -0.20297025
		 0.56484854 -0.13503775 0.083666056 0.86301035 0.33457878 -0.23634548 0.89335918 0.2291528 0.20194653
		 0.96071905 0.51024932 -0.26712421 0.95377034 0.46468183 0.27456352 0.99902457 0.64239705 -0.27119461
		 0.98275316 0.56108737 0.26254237 0.99902445 0.7626518 -0.27119461 1.0023082495 0.7626518 0.22295162
		 -0.26029792 -0.11454614 0.58199358 -0.031875193 -0.028104527 0.5877918 0.12800744 0.27154833 0.89372683
		 -0.23748587 0.32923001 0.81639642 0.16552839 0.50100875 1.013697386 -0.21081431 0.48759091 0.84056216
		 0.22073956 0.58591294 0.95856565 -0.23195283 0.61562729 0.87401569 0.22073956 0.7626518 1.019047976
		 -0.26712415 0.7626518 0.9201681 0.55181372 0.7626518 0.18194795 0.51922619 0.7626518 -0.35230398
		 0.4373605 0.76265192 -0.70002556 0.43736053 0.64239717 -0.70002562 0.43736058 0.50000012 -0.70002562
		 0.38696688 0.2733334 -0.61936724 0.25028834 -0.16666678 -0.43311873 0.21210343 -0.50338519 -0.12757628
		 0.29685175 -0.56971633 0.082575396 0.29685175 -0.56971633 0.23990995 0.2531997 -0.32093272 0.42429709
		 0.2013009 -0.1985376 0.3976258 0.29799175 0.032479584 0.61887628 0.48101404 0.50000012 0.85328746
		 0.55244911 0.5 0.18488494 0.55181372 0.64239705 0.24872491 0.15291992 0.7626518 0.53959006
		 -0.36174548 0.76282805 0.52686507 -0.70444459 0.76265192 0.42993757 -0.70444459 0.64239717 0.4299376
		 -0.70444465 0.50000012 0.42993766 -0.63782275 0.27333343 0.38039929 -0.44045475 -0.16666672 0.24604049
		 -0.17448625 -0.50338519 0.25500411 0.050900821 -0.57270676 0.3296572 0.20717366 -0.57270676 0.30345821
		 0.26063859 -0.52195609 0.2985228 0.31234798 -0.41228816 0.26841068 0.37920651 -0.20930009 0.24784443
		 0.71271956 0.28404623 0.49123353 0.8417635 0.50000012 0.48210245 0.51771879 0.50000006 0.50984919
		 0.1826729 0.5 0.53853792 0.26903391 0.67642772 0.53959006 1.11296606 0.7626518 0.018834714
		 0.78366464 0.7626518 -0.057165086 0.52970535 0.7626518 -0.08486934 0.26712418 0.7626518 -0.027416456
		 -0.26712415 0.7626518 -0.030851476 -0.80137205 0.7626518 0.020261429 -0.80137217 0.64239705 0.020261429
		 -0.80137217 0.5 0.020261429 -0.70903647 0.27333334 0.017926874 -0.45860136 -0.1666667 0.011595033
		 -0.2073037 -0.50338507 0.1162969 0.12406169 -0.63829958 0.21985078 0.25704688 -0.63829958 0.21985078
		 0.29685175 -0.56971633 0.16720961 0.40541828 -0.37466818 0.043169126 0.41683635 -0.35818997 -0.042943418
		 0.56484854 -0.22304758 -0.088552363 0.93963093 0.33196974 -0.071949281 1.042749286 0.5020957 -0.050224267
		 1.10244703 0.59865856 0.040131561 -0.084240451 0.7626518 1.019047976 -0.074190676 0.76282156 0.80137217
		 -0.027362481 0.76273429 0.52686507 0.016946733 0.7626518 0.26712418 0.016946718 0.7626518 -0.030851468
		 0.016946718 0.7626518 -0.50695455 0.016946718 0.7626518 -1.0061594248 0.016946703 0.64239705 -0.96376026
		 0.016946718 0.39891675 -0.83527386 0.014994085 0.27333334 -0.70903647 0.0096981078 -0.16666673 -0.45860136
		 0.06976077 -0.50338507 -0.16188993;
	setAttr ".vt[166:175]" 0.19477266 -0.63829958 0.14831471 0.19477266 -0.63829958 0.21985078
		 0.19477266 -0.63829958 0.28129989 0.13399431 -0.57270676 0.3296572 0.06976077 -0.50338507 0.38076359
		 -0.016991321 -0.27016208 0.45571882 -0.1552197 -0.062745102 0.6362586 -0.11662886 0.29855946 0.97363698
		 -0.081452437 0.49472547 0.97075933 -0.10140713 0.67235947 1.026102424;
	setAttr -s 348 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 170 0 2 110 0 4 5 0 5 171 0 6 111 0 8 9 0 10 112 0
		 12 13 0 14 113 0 17 114 0 21 22 0 22 162 0 23 104 0 25 26 0 26 163 0 27 105 0 29 30 0
		 30 164 0 31 106 0 33 34 0 34 165 0 35 107 0 37 38 0 38 166 0 39 108 0 41 42 0 42 168 0
		 43 109 0 0 4 0 1 5 0 2 6 0 3 7 0 4 8 0 5 9 0 6 10 0 7 11 0 8 12 0 9 13 0 10 14 0
		 11 15 0 12 120 0 14 132 0 15 130 0 16 141 0 19 21 0 20 24 0 21 25 0 22 26 0 23 27 0
		 24 28 0 25 29 0 26 30 0 27 31 0 28 32 0 29 33 0 30 34 0 31 35 0 32 36 0 33 37 0 34 38 0
		 35 39 0 36 40 0 37 144 0 38 145 0 39 146 0 40 148 0 41 123 0 42 124 0 43 125 0 44 127 0
		 32 45 0 45 149 0 46 128 0 28 47 0 48 129 0 40 45 0 44 46 0 45 47 0 46 48 0 47 20 0
		 48 18 0 29 49 0 49 143 0 50 122 0 25 51 0 51 142 0 52 121 0 37 49 0 41 50 0 49 51 0
		 50 52 0 51 19 0 52 16 0 12 70 0 13 69 0 53 54 0 54 117 0 16 71 0 56 55 0 53 118 0
		 14 68 0 54 155 0 17 79 0 57 116 0 55 157 0 55 138 0 19 72 0 60 59 0 56 139 0 58 137 0
		 59 159 0 18 78 0 58 100 0 20 77 0 62 135 0 61 101 0 22 74 0 59 64 0 21 73 0 65 64 0
		 60 65 0 23 75 0 61 66 0 64 160 0 24 76 0 63 67 0 66 102 0 68 57 0 69 54 0 70 53 0
		 69 70 0 71 56 0 70 119 0 72 60 0 71 140 0 73 65 0 72 73 0 74 64 0 73 74 0 75 66 0
		 74 161 0 76 67 0 75 103 0 77 63 0 76 77 0 78 62 0 79 58 0 78 115 0 79 133 0 45 80 0
		 46 81 0 80 150 0 47 82 0 80 82 0 48 83 0 82 151 0 81 83 0 20 84 0 82 84 0 18 85 0
		 85 152 0 83 85 0 77 86 0 84 86 0 78 87 0;
	setAttr ".ed[166:331]" 86 153 0 85 87 0 63 88 0 86 88 0 62 89 0 89 134 0 87 89 0
		 5 90 0 6 91 0 90 172 0 10 92 0 91 92 0 9 93 0 93 173 0 90 93 0 14 94 0 92 94 0 13 95 0
		 95 174 0 93 95 0 68 96 0 94 96 0 69 97 0 96 175 0 95 97 0 57 98 0 96 98 0 54 99 0
		 99 154 0 97 99 0 100 62 0 101 63 0 100 136 0 102 67 0 101 102 0 103 76 0 102 103 0
		 104 24 0 103 104 0 105 28 0 104 105 0 106 32 0 105 106 0 107 36 0 106 107 0 108 40 0
		 107 108 0 109 44 0 108 147 0 110 3 0 109 126 0 111 7 0 110 111 0 112 11 0 111 112 0
		 113 15 0 112 113 0 114 18 0 113 131 0 115 79 0 114 115 0 115 100 0 116 58 0 117 55 0
		 116 156 0 118 56 0 117 118 0 119 71 0 118 119 0 120 16 0 119 120 0 121 8 0 120 121 0
		 122 4 0 121 122 0 123 0 0 122 123 0 124 1 0 123 124 0 125 2 0 124 169 0 126 110 0
		 125 126 0 127 3 0 126 127 0 128 7 0 127 128 0 129 11 0 128 129 0 130 18 0 129 130 0
		 131 114 0 130 131 0 132 17 0 131 132 0 133 68 0 132 133 0 133 116 0 134 88 0 135 63 0
		 134 135 0 136 101 0 135 136 0 137 61 0 136 137 0 138 59 0 137 158 0 139 60 0 138 139 0
		 140 72 0 139 140 0 141 19 0 140 141 0 142 52 0 141 142 0 143 50 0 142 143 0 144 41 0
		 143 144 0 145 42 0 144 145 0 146 43 0 145 167 0 147 109 0 146 147 0 148 44 0 147 148 0
		 149 46 0 148 149 0 150 81 0 149 150 0 151 83 0 150 151 0 152 84 0 151 152 0 153 87 0
		 152 153 0 153 134 0 154 98 0 155 57 0 154 155 0 156 117 0 155 156 0 157 58 0 156 157 0
		 158 138 0 157 158 0 159 61 0 158 159 0 160 66 0 159 160 0 161 75 0 160 161 0 162 23 0
		 161 162 0 163 27 0 162 163 0 164 31 0 163 164 0 165 35 0 164 165 0 166 39 0 165 166 0
		 167 146 0 166 167 0 168 43 0;
	setAttr ".ed[332:347]" 167 168 0 169 125 0 168 169 0 170 2 0 169 170 0 171 6 0
		 170 171 0 172 91 0 171 172 0 173 92 0 172 173 0 174 94 0 173 174 0 175 97 0 174 175 0
		 175 154 0;
	setAttr -s 174 ".fc[0:173]" -type "polyFaces" 
		f 4 0 30 -4 -30
		mu 0 4 0 1 5 4
		f 4 1 338 -5 -31
		mu 0 4 1 187 189 5
		f 4 2 218 -6 -32
		mu 0 4 2 128 130 6
		f 4 3 34 -7 -34
		mu 0 4 4 5 9 8
		f 4 175 342 -180 -181
		mu 0 4 109 190 191 112
		f 4 5 220 -8 -36
		mu 0 4 6 130 131 10
		f 4 6 38 -9 -38
		mu 0 4 8 9 13 12
		f 4 179 344 -185 -186
		mu 0 4 112 191 192 114
		f 4 7 222 -10 -40
		mu 0 4 10 131 132 14
		f 4 96 97 232 -101
		mu 0 4 194 195 196 197
		f 4 102 308 307 -98
		mu 0 4 195 198 199 196
		f 4 9 224 260 -43
		mu 0 4 14 132 153 154
		f 4 99 106 274 -110
		mu 0 4 201 200 207 208
		f 4 105 312 311 -107
		mu 0 4 200 206 211 207
		f 4 113 198 270 -111
		mu 0 4 210 218 219 214
		f 4 108 118 -121 -122
		mu 0 4 213 212 216 217
		f 4 111 316 -125 -119
		mu 0 4 212 215 221 216
		f 4 116 200 -128 -124
		mu 0 4 220 224 229 225
		f 4 11 48 -15 -48
		mu 0 4 21 22 26 25
		f 4 12 322 -16 -49
		mu 0 4 22 179 180 26
		f 4 13 206 -17 -50
		mu 0 4 23 122 123 27
		f 4 14 52 -18 -52
		mu 0 4 25 26 30 29
		f 4 15 324 -19 -53
		mu 0 4 26 180 181 30
		f 4 16 208 -20 -54
		mu 0 4 27 123 124 31
		f 4 17 56 -21 -56
		mu 0 4 29 30 34 33
		f 4 18 326 -22 -57
		mu 0 4 30 181 182 34
		f 4 19 210 -23 -58
		mu 0 4 31 124 125 35
		f 4 20 60 -24 -60
		mu 0 4 33 34 38 37
		f 4 21 328 -25 -61
		mu 0 4 34 182 183 38
		f 4 22 212 -26 -62
		mu 0 4 35 125 126 39
		f 4 286 285 -27 -284
		mu 0 4 164 165 42 41
		f 4 288 332 -28 -286
		mu 0 4 165 184 185 42
		f 4 290 289 -29 -288
		mu 0 4 166 167 127 43
		f 4 244 243 -1 -242
		mu 0 4 143 144 46 45
		f 4 246 336 -2 -244
		mu 0 4 144 186 188 46
		f 4 248 247 -3 -246
		mu 0 4 145 146 129 47
		f 4 -63 -59 71 -77
		mu 0 4 50 49 52 53
		f 4 -292 294 293 -78
		mu 0 4 51 169 170 54
		f 4 -250 252 251 -33
		mu 0 4 3 148 149 7
		f 4 -72 -55 74 -79
		mu 0 4 53 52 55 56
		f 4 -296 298 297 -158
		mu 0 4 97 171 172 100
		f 4 -252 254 253 -37
		mu 0 4 7 149 150 11
		f 4 -75 -51 -47 -81
		mu 0 4 56 55 58 59
		f 4 -298 300 -162 -163
		mu 0 4 100 172 174 102
		f 4 -254 256 -44 -41
		mu 0 4 11 150 152 15
		f 4 59 88 -83 55
		mu 0 4 61 62 65 64
		f 4 283 89 -282 284
		mu 0 4 163 63 66 162
		f 4 241 29 -240 242
		mu 0 4 142 0 4 141
		f 4 82 90 -86 51
		mu 0 4 64 65 68 67
		f 4 281 91 -280 282
		mu 0 4 162 66 69 161
		f 4 239 33 -238 240
		mu 0 4 141 4 8 140
		f 4 85 92 45 47
		mu 0 4 67 68 71 70
		f 4 279 93 44 280
		mu 0 4 161 69 72 159
		f 4 237 37 41 238
		mu 0 4 140 8 12 138
		f 4 8 95 131 -95
		mu 0 4 12 13 86 87
		f 4 -42 94 133 236
		mu 0 4 139 12 87 137
		f 4 184 346 345 -191
		mu 0 4 114 192 193 116
		f 4 42 262 261 -102
		mu 0 4 14 154 155 85
		f 4 -45 98 135 278
		mu 0 4 160 16 88 158
		f 4 10 226 225 -104
		mu 0 4 17 133 134 96
		f 4 161 302 301 -168
		mu 0 4 106 173 175 105
		f 4 -12 119 139 -118
		mu 0 4 22 21 90 91
		f 4 -46 107 137 -120
		mu 0 4 21 19 89 90
		f 4 -13 117 141 320
		mu 0 4 179 22 91 178
		f 4 46 125 145 -115
		mu 0 4 20 24 93 94
		f 4 -14 122 143 204
		mu 0 4 122 23 92 121
		f 4 -346 347 -195 -196
		mu 0 4 116 193 176 118
		f 4 -132 129 -97 -131
		mu 0 4 87 86 74 73
		f 4 -134 130 100 234
		mu 0 4 137 87 73 136
		f 4 -136 132 109 276
		mu 0 4 158 88 75 157
		f 4 -138 134 121 -137
		mu 0 4 90 89 78 82
		f 4 -140 136 120 -139
		mu 0 4 91 90 82 81
		f 4 -142 138 124 318
		mu 0 4 178 91 81 177
		f 4 -144 140 127 202
		mu 0 4 121 92 83 120
		f 4 -146 142 -127 -145
		mu 0 4 94 93 84 80
		f 4 -302 303 -172 -173
		mu 0 4 105 175 156 108
		f 4 -226 227 -114 -148
		mu 0 4 96 134 119 77
		f 4 -262 263 -105 -129
		mu 0 4 85 155 135 76
		f 4 -294 296 295 -152
		mu 0 4 54 170 171 97
		f 4 78 153 -155 -151
		mu 0 4 53 56 99 98
		f 4 -80 151 157 -156
		mu 0 4 57 54 97 100
		f 4 80 158 -160 -154
		mu 0 4 56 59 101 99
		f 4 -82 155 162 -161
		mu 0 4 60 57 100 102
		f 4 114 163 -165 -159
		mu 0 4 20 94 104 103
		f 4 -113 160 167 -166
		mu 0 4 95 18 106 105
		f 4 144 168 -170 -164
		mu 0 4 94 80 107 104
		f 4 -116 170 171 266
		mu 0 4 223 222 226 227
		f 4 -147 165 172 -171
		mu 0 4 79 95 105 108
		f 4 4 340 -176 -174
		mu 0 4 5 189 190 109
		f 4 35 176 -178 -175
		mu 0 4 6 10 111 110
		f 4 -35 173 180 -179
		mu 0 4 9 5 109 112
		f 4 39 181 -183 -177
		mu 0 4 10 14 113 111
		f 4 -39 178 185 -184
		mu 0 4 13 9 112 114
		f 4 101 186 -188 -182
		mu 0 4 14 85 115 113
		f 4 -96 183 190 -189
		mu 0 4 86 13 114 116
		f 4 128 191 -193 -187
		mu 0 4 85 76 117 115
		f 4 -103 193 194 306
		mu 0 4 198 195 202 203
		f 4 -130 188 195 -194
		mu 0 4 74 86 116 118
		f 4 196 115 268 -199
		mu 0 4 218 222 223 219
		f 4 -201 197 126 -200
		mu 0 4 229 224 228 231
		f 4 -202 -203 199 -143
		mu 0 4 93 121 120 84
		f 4 -204 -205 201 -126
		mu 0 4 24 122 121 93
		f 4 -207 203 50 -206
		mu 0 4 123 122 24 28
		f 4 -209 205 54 -208
		mu 0 4 124 123 28 32
		f 4 -211 207 58 -210
		mu 0 4 125 124 32 36
		f 4 -213 209 62 -212
		mu 0 4 126 125 36 40
		f 4 -290 292 291 -214
		mu 0 4 127 167 168 44
		f 4 -248 250 249 -216
		mu 0 4 129 146 147 48
		f 4 -219 215 32 -218
		mu 0 4 130 128 3 7
		f 4 -221 217 36 -220
		mu 0 4 131 130 7 11
		f 4 -223 219 40 -222
		mu 0 4 132 131 11 15
		f 4 -225 221 43 258
		mu 0 4 153 132 15 151
		f 4 -227 223 112 148
		mu 0 4 134 133 18 95
		f 4 -228 -149 146 -197
		mu 0 4 119 134 95 79
		f 4 -308 310 -106 -230
		mu 0 4 196 199 206 200
		f 4 -233 229 -100 -232
		mu 0 4 197 196 200 201
		f 4 -234 -235 231 -133
		mu 0 4 88 137 136 75
		f 4 -236 -237 233 -99
		mu 0 4 16 139 137 88
		f 4 87 -239 235 -94
		mu 0 4 69 140 138 72
		f 4 84 -241 -88 -92
		mu 0 4 66 141 140 69
		f 4 67 -243 -85 -90
		mu 0 4 63 142 141 66
		f 4 26 68 -245 -68
		mu 0 4 41 42 144 143
		f 4 27 334 -247 -69
		mu 0 4 42 185 186 144
		f 4 28 216 -249 -70
		mu 0 4 43 127 146 145
		f 4 -251 -217 213 70
		mu 0 4 147 146 127 44
		f 4 -253 -71 77 73
		mu 0 4 149 148 51 54
		f 4 -255 -74 79 75
		mu 0 4 150 149 54 57
		f 4 -257 -76 81 -256
		mu 0 4 152 150 57 60
		f 4 -258 -259 255 -224
		mu 0 4 133 153 151 18
		f 4 -261 257 -11 -260
		mu 0 4 154 153 133 17
		f 4 -263 259 103 149
		mu 0 4 155 154 17 96
		f 4 -264 -150 147 -229
		mu 0 4 135 155 96 77
		f 4 -266 -267 264 -169
		mu 0 4 228 223 227 230
		f 4 -269 265 -198 -268
		mu 0 4 219 223 228 224
		f 4 -271 267 -117 -270
		mu 0 4 214 219 224 220
		f 4 -312 314 -112 -272
		mu 0 4 207 211 215 212
		f 4 -275 271 -109 -274
		mu 0 4 208 207 212 213
		f 4 -276 -277 273 -135
		mu 0 4 89 158 157 78
		f 4 -278 -279 275 -108
		mu 0 4 19 160 158 89
		f 4 86 -281 277 -93
		mu 0 4 68 161 159 71
		f 4 83 -283 -87 -91
		mu 0 4 65 162 161 68
		f 4 63 -285 -84 -89
		mu 0 4 62 163 162 65
		f 4 23 64 -287 -64
		mu 0 4 37 38 165 164
		f 4 24 330 -289 -65
		mu 0 4 38 183 184 165
		f 4 25 214 -291 -66
		mu 0 4 39 126 167 166
		f 4 -293 -215 211 66
		mu 0 4 168 167 126 40
		f 4 -295 -67 76 72
		mu 0 4 170 169 50 53
		f 4 -297 -73 150 152
		mu 0 4 171 170 53 98
		f 4 -299 -153 154 156
		mu 0 4 172 171 98 99
		f 4 -301 -157 159 -300
		mu 0 4 174 172 99 101
		f 4 -303 299 164 166
		mu 0 4 175 173 103 104
		f 4 -304 -167 169 -265
		mu 0 4 156 175 104 107
		f 4 -306 -307 304 -192
		mu 0 4 204 198 203 209
		f 4 -309 305 104 230
		mu 0 4 199 198 204 205
		f 4 -311 -231 228 -310
		mu 0 4 206 199 205 210
		f 4 -313 309 110 272
		mu 0 4 211 206 210 214
		f 4 -315 -273 269 -314
		mu 0 4 215 211 214 220
		f 4 -317 313 123 -316
		mu 0 4 221 215 220 225
		f 4 -318 -319 315 -141
		mu 0 4 92 178 177 83
		f 4 -320 -321 317 -123
		mu 0 4 23 179 178 92
		f 4 -323 319 49 -322
		mu 0 4 180 179 23 27
		f 4 -325 321 53 -324
		mu 0 4 181 180 27 31
		f 4 -327 323 57 -326
		mu 0 4 182 181 31 35
		f 4 -329 325 61 -328
		mu 0 4 183 182 35 39
		f 4 -331 327 65 -330
		mu 0 4 184 183 39 166
		f 4 -333 329 287 -332
		mu 0 4 185 184 166 43
		f 4 -335 331 69 -334
		mu 0 4 186 185 43 145
		f 4 -337 333 245 -336
		mu 0 4 188 186 145 47
		f 4 -339 335 31 -338
		mu 0 4 189 187 2 6
		f 4 -341 337 174 -340
		mu 0 4 190 189 6 110
		f 4 -343 339 177 -342
		mu 0 4 191 190 110 111
		f 4 -345 341 182 -344
		mu 0 4 192 191 111 113
		f 4 -347 343 187 189
		mu 0 4 193 192 113 115
		f 4 -348 -190 192 -305
		mu 0 4 176 193 115 117;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "directionalLight1";
	setAttr ".t" -type "double3" 0 1.0478787943208188 3.6421671157903686 ;
	setAttr ".r" -type "double3" -69.736721411016305 51.82279242091191 -36.308788653496975 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	setAttr -k off ".v";
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -0.098482888385298284 1.6304234490184915 -0.15396101396875586 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.8599392437802339 0.17460638689169222 0.04116627070283433 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"ogsRenderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"ogsRenderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"ogsRenderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"ogsRenderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "bumpMap";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode file -n "file1";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Reid/Desktop/school/VIST 487/maya/UV/bumpMap.png";
createNode place2dTexture -n "place2dTexture1";
createNode bump2d -n "bump2d1";
	setAttr ".bd" 4.5934958457946777;
	setAttr -av ".bv" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
select -ne :lightList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId3.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyCube1.out" "pCubeShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "bump2d1.o" "bumpMap.n";
connectAttr "bumpMap.oc" "lambert2SG.ss";
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "bumpMap.msg" "materialInfo1.m";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file1.oa" "bump2d1.bv";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "bumpMap.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of alvl2_island_model.ma
