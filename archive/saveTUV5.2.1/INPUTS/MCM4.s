TUV inputs:
==================================================================
inpfil =        MCM4   outfil =        MCM4   nstr =             4
lat =         45.000   lon =          0.000   tmzone =         0.0
iyear =         2002   imonth =           7   iday =             1
zstart =       0.000   zstop =      120.000   nz =             121
wstart =     209.500   wstop =      735.500   nwint =          526
tstart =       0.000   tstop =       90.000   nt =             181
lzenit =           T   alsurf =       0.100   psurf =       -999.0
o3col =      350.000   so2col =       0.000   no2col =       0.000
taucld =       0.000   zbase =        4.000   ztop =         5.000
tauaer =       0.235   ssaaer =       0.990   alpha =        1.000
dirsun =       1.000   difdn =        1.000   difup =        1.000
zout =         0.500   zaird =   -9.990E+02   ztemp =     -999.000
lirrad =           F   laflux =           T   lmmech =           F
lrates =           F   isfix =            0   nms =              0
ljvals =           T   ijfix =            0   nmj =              6
iwfix =            0   itfix =            1   izfix =            0
==================================================================
===== Avaliable spectral weighting functions:
F  1 UV-B, 280-315 nm
F  2 UV-B*, 280-320 nm
F  3 UV-A, 315-400 nm
F  4 vis+, > 400 nm
F  5 Gaussian, 305 nm, 10 nm FWHM
F  6 Gaussian, 320 nm, 10 nm FWHM
F  7 Gaussian, 340 nm, 10 nm FWHM
F  8 Gaussian, 380 nm, 10 nm FWHM
F  9 RB Meter, model 501
F 10 Eppley UV Photometer
F 11 PAR, 400-700 nm, umol m-2 s-1
F 12 Exponential decay, 14 nm/10
F 13 DNA damage, in vitro (Setlow, 1974)
F 14 SCUP-mice (de Gruijl et al., 1993)
F 15 SCUP-human (de Gruijl and van der Leun, 1994)
F 16 CIE human erythema (McKinlay and Diffey, 1987)
F 17 UV index (WMO, 1994)
F 18 Erythema, humans (Anders et al., 1995)
F 19 Occupational TLV (ACGIH, 1992)
F 20 Phytoplankton (Boucher et al., 1994)
F 21 Phytoplankton, phaeo (Cullen et al., 1992)
F 22 Phytoplankton, proro (Cullen et al., 1992)
F 23 Cataract, pig (Oriowo et al., 2001)
F 24 Plant damage (Caldwell, 1971)
F 25 Plant damage (Flint & Caldwell, 2003)
F 26 Previtamin-D3 (CIE 2006)
F 27 NMSC (CIE 2006)
===== Available photolysis reactions:
F  1 O2 -> O + O
T  2 O3 -> O2 + O(1D)
T  3 O3 -> O2 + O(3P)
F  4 HO2 -> OH + O
T  5 H2O2 -> 2 OH
T  6 NO2 -> NO + O(3P)
T  7 NO3 -> NO + O2
T  8 NO3 -> NO2 + O(3P)
F  9 N2O -> N2 + O(1D)
F 10 N2O5 -> NO3 + NO + O(3P)
F 11 N2O5 -> NO3 + NO2
T 12 HNO2 -> OH + NO
T 13 HNO3 -> OH + NO2
F 14 HNO3 -> OH + NO + O(3P)
F 15 HNO3 -> OH + NO + O(1D)
F 16 HNO3 -> HONO + O(3P)
F 17 HNO3 -> HONO + O(1D)
T 18 HNO4 -> HO2 + NO2
T 19 HNO4 -> OH + NO3
F 20 NO3-(aq) -> NO2(aq) + O-
F 21 NO3-(aq) -> NO2-(aq) + O(3P)
T 22 CH2O -> H + HCO
T 23 CH2O -> H2 + CO
T 24 CH3CHO -> CH3 + HCO
F 25 CH3CHO -> CH4 + CO
T 26 CH3CHO -> CH3CO + H
T 27 C2H5CHO -> C2H5 + HCO
F 28 CH3OOH -> CH3O + OH
F 29 HOCH2OOH -> HOCH2O. + OH
T 30 CH3ONO2 -> CH3O + NO2
T 31 CH3(OONO2) -> CH3(OO) + NO2
T 32 CH3(OONO2) -> CH3(O) + NO3
T 33 C2H5ONO2 -> C2H5O + NO2
T 34 n-C3H7ONO2 -> C3H7O + NO2
F 35 1-C4H9ONO2 -> 1-C4H9O + NO2
F 36 2-C4H9ONO2 -> 2-C4H9O + NO2
F 37 CH3CHONO2CH3 -> CH3CHOCH3 + NO2
F 38 CH2(OH)CH2(ONO2) -> CH2(OH)CH2(O.) + NO2
F 39 CH3COCH2(ONO2) -> CH3COCH2(O.) + NO2
F 40 C(CH3)3(ONO2) -> C(CH3)3(O.) + NO2
F 41 C(CH3)3(ONO) -> C(CH3)3(O) + NO
T 42 CH3CO(OONO2) -> CH3CO(OO) + NO2
T 43 CH3CO(OONO2) -> CH3CO(O) + NO3
F 44 CH3CH2CO(OONO2) -> CH3CH2CO(OO) + NO2
F 45 CH3CH2CO(OONO2) -> CH3CH2CO(O) + NO3
T 46 CH2=CHCHO -> CH2=CH + CHO
T 47 CH2=CHCHO -> CH2=CH2 + CO
T 48 CH2=CHCHO -> CH3CHOO + CO
T 49 CH2=CHCHO -> CH2=CHCO + H
T 50 CH2=C(CH3)CHO -> CH2=CCH3 + CHO
T 51 CH2=C(CH3)CHO -> CH3CH=CH2 + CO
T 52 CH2=C(CH3)CHO -> CH3C:CH3 + CO
T 53 CH2=C(CH3)CHO -> CH2=C(CH3)CO + H
T 54 CH3COCH=CH2 -> CH3 +C2H3CO
T 55 CH3COCH=CH2 -> C2H3 + CH3CO
T 56 CH3COCH=CH2 -> C3H6 + CO
T 57 HOCH2CHO -> CH2OH + HCO
F 58 HOCH2CHO -> CH3OH + CO
F 59 HOCH2CHO -> CH2CHO + OH
T 60 CH3COCH3 -> CH3CO + CH3
T 61 CH3COCH3 -> CO + 2 CH3
T 62 CH3COCH2CH3 -> CH3CO + CH2CH3
F 63 CH2(OH)COCH3 -> CH3CO + CH2(OH)
F 64 CH2(OH)COCH3 -> CH2(OH)CO + CH3
T 65 CHOCHO ->2 HO2 + 2 CO
F 66 CHOCHO -> H2 + 2CO
T 67 CHOCHO -> CH2O + CO
T 68 CH3COCHO -> CH3CO + HCO
T 69 CH3COCOCH3 -> Products
F 70 CH3COOH -> CH3 + COOH
T 71 CH3CO(OOH) -> Products
F 72 CH3COCOOH -> CH3CHO + CO2
F 73 CH3COCOOH -> CH3CO + COOH
F 74 CH3COCOOH -> CH3COOH + CO
F 75 CH3COCOOH -> CH3CO + CO + OH
F 76 (CH3)2NNO -> Products
F 77 CF2O -> Products
F 78 Cl2 -> Cl + Cl
F 79 ClO -> Cl + O(1D)
F 80 ClO -> Cl + O(3P)
F 81 ClOO -> Products
F 82 OClO -> Products
F 83 ClOOCl -> Cl + ClOO
F 84 HCl -> H + Cl
F 85 HOCl -> HO + Cl
F 86 NOCl -> NO + Cl
F 87 ClNO2 -> Cl + NO2
F 88 ClONO -> Cl + NO2
F 89 ClONO2 -> Cl + NO3
F 90 ClONO2 -> ClO + NO2
F 91 CCl4 -> Products
F 92 CH3OCl -> CH3O + Cl
F 93 CHCl3 -> Products
F 94 CH3Cl -> Products
F 95 CH3CCl3 -> Products
F 96 CCl2O -> Products
F 97 CClFO -> Products
F 98 CCl3F (CFC-11) -> Products
F 99 CCl2F2 (CFC-12) -> Products
F100 CF2ClCFCl2 (CFC-113) -> Products
F101 CF2ClCF2Cl (CFC-114) -> Products
F102 CF3CF2Cl (CFC-115) -> Products
F103 CHClF2 (HCFC-22) -> Products
F104 CF3CHCl2 (HCFC-123) -> Products
F105 CF3CHFCl (HCFC-124) -> Products
F106 CH3CFCl2 (HCFC-141b) -> Products
F107 CH3CF2Cl (HCFC-142b) -> Products
F108 CF3CF2CHCl2 (HCFC-225ca) -> Products
F109 CF2ClCF2CHFCl (HCFC-225cb) -> Products
F110 Br2 -> Br + Br
F111 BrO -> Br + O
F112 HOBr -> OH + Br
F113 BrNO -> Br + NO
F114 BrONO -> Br + NO2
F115 BrONO -> BrO + NO
F116 BrNO2 -> Br + NO2
F117 BrONO2 -> BrO + NO2
F118 BrONO2 -> Br + NO3
F119 BrCl -> Br + Cl
F120 CH3Br -> Products
F121 CHBr3 -> Products
F122 CF2Br2 (Halon-1202) -> Products
F123 CF2BrCl (Halon-1211) -> Products
F124 CF3Br (Halon-1301) -> Products
F125 CF2BrCF2Br (Halon-2402) -> Products
F126 perfluoro 1-iodopropane -> products
T127 n-C3H7CHO -> n-C3H7 +  CHO
T128 n-C3H7CHO -> C2H4 +  CH2CHOH
T129 i-C3H7CHO -> i-C3H7 + CHO
T130 pinonaldehyde -> R + CO + HO2
T131 caronaldehyde -> R + CO + HO2
T132 n-C4H9CHO -> C4H9 +  CHO
T133 n-C4H9CHO -> CH3CH=CH2 +  CH2=CHOH
T134 i-C4H9CHO -> C4H9 + CHO
T135 i-C4H9CHO -> CH3CH=CH2 + CH2=CHOH
T136 sec-C4H9CHO -> C4H9 + CHO
T137 sec-C4H9CHO  -> CH3CH=CHOH + CH2=CH2
T138 t-C4H9CHO -> C4H9 + CHO
T139 n-C5H11CHO -> C5H11 + CHO
T140 n-C5H11CHO -> C2H5CH=CH2 + CH2=CHOH
T141 n-C6H13CHO -> C6H13 + CHO
T142 n-C6H13CHO -> C3H7CH=CH2 + CH2=CHOH
T143 Glycidaldehyde -> oxyranyl radical + CHO
T144 Glycidaldehyde -> oxyrane + CO
T145 CH3CH=CHCHO -> CH3CH=CH + CHO
T146 CH3CH=CHCHO -> CH3CH=CH2 + CO
T147 CH3CH=CHCHO -> CH=CHCHO + CH3
T148 CH3CH=CHCHO -> CH3CH=CHCO + H
T149 2-hexenal -> 1-pentenyl radical + CHO
T150 2-hexenal -> 2-hexene + CO
T151 2-hexenal -> CH=CHCHO + C3H7
T152 2-hexenal -> C3H7CH=CHCO + H
T153 C4H9CH(C2H5)CHO -> C7H15 + CHO
T154 C4H9CH(C2H5)CHO -> C7H16 + CO
T155 CH3CH=C(CH3)CHO -> CH3CH=CCH3 + CHO
T156 CH3CH=C(CH3)CHO -> CH3CH=CHCH3 + CO
T157 CH3CH=C(CH3)CHO -> CH3CH=CCHO + CH3
T158 CH3CH=C(CH3)CHO -> CH3CH=C(CH3)CO + H
T159 CH3C(CH3)=CHCHO -> (CH3)2C=CH + CHO
T160 CH3C(CH3)=CHCHO -> (CH3)2C=CH2 + CO
T161 CH3C(CH3)=CHCHO -> CH3C=CHCHO + CH3
T162 CH3C(CH3)=CHCHO -> (CH3)2C=CHCO + H
F163 CH32C(OH)CHO -> (CH3)2COH + CHO
T164 C2H5COC2H5 -> 2 C2H5 + CO
T165 C2H5COC2H5 -> C2H5CO + C2H5
T166 C3H7COCH3 -> CH3CO + C3H7
T167 C3H7COCH3 -> C3H7CO + CH3
T168 C3H7COCH3 -> C3H7 + CO + CH3
T169 C3H7COCH3 -> CH3C(OH)=CH2 + CH2=CH2
T170 C4H9COCH3 -> CH3CH=CH2 + CH2=C(OH)CH3
T171 C3H7COC2H5 -> C2H5CO + C3H7
T172 C3H7COC2H5 -> C3H7CO + C2H5
T173 C3H7COC2H5 -> C3H7 + CO + C2H5
T174 C3H7COC2H5 -> C2H5C(OH)=CH2 + CH2=CH2
T175 MIPK -> CH3CO + i-C3H7
T176 MIPK -> i-C3H7CO + CH3
T177 MIPK -> i-C3H7 + CO + CH3
T178 MIPK -> CH2=CHOH + CH3CH=CH2
T179 MIBK -> CH3CO + i-C4H9
T180 MIBK -> i-C4H9CO + CH3
T181 MIBK -> i-C4H9 + CO + CH3
T182 MIBK -> CH3C(OH)=CH2 + CH3CH=CH2
T183 4-Me-2-hexanone -> CH3C(OH)=CH2 + 2-butene
T184 4-Me-2-hexanone -> CH3C(OH)=CH2 + 1-butene
T185 5-Me-2-hexanone -> CH3CO + CH2CH2CH(CH3)2
T186 5-Me-2-hexanone -> (CH3)2CH2CH2CO + CH3
T187 5-Me-2-hexanone -> CH2CH2CH(CH3)2 + CO + CH3
T188 5-Me-2-hexanone -> CH3C(OH)=CH2 + CH2=C(CH3)2
T189 CH3CH(CH3)COCH(CH3)2 -> i-C3H7CO + i-C3H7
T190 CH3CH(CH3)COCH(CH3)2 -> 2 i-C3H7 + CO
F191 c-C3H4O -> C2H4 + CO
F192 c-C3H4O -> further products
F193 c-C4H6O -> C2H4 + CH2=C=O
F194 c-C4H6O -> C3H6 + CO
F195 c-C4H6O -> c-C3H6 + CO
F196 c-C5H8O -> 2 C2H4 + CO
F197 c-C5H8O -> c-C4H8 + CO
F198 c-C5H8O -> CH2=CHCH2CH2CHO
F199 c-C6H10O -> 5-hexenal
F200 c-C6H10O -> cyclopentane + CO
F201 c-C6H10O -> 1-pentene + CO
T202 CH3CH2COCH=CH2 -> C2H5 + C2H3CO
T203 CH3CH2COCH=CH2 -> C2H3 + C2H5CO
T204 CH3CH2COCH=CH2 -> 1-C4H8 + CO
T205 CH3COC2H4OH -> CH3CO + CH2CH2OH
T206 CH3COCH(OH)CH3 -> CH3CO + CH3CHOH
T207 CH3COCH(OH)CH3 -> CH3CH(OH)CO + CH3
F208 CH3COC(CH3)2OH -> CH3CO + (CH3)2COH
T209 CHOCH=CHCHO -> 3H-furan-2-one
T210 CH3COCH=CHCHO -> 5Me-3H-2-furanone
T211 CH3COCH=CHCHO -> CH3 + CHOCH=CHCO
T212 CH3COCH=CHCHO -> CH3COCH=CH2 + CO
F213 CH3COCH=CHCHO -> maleic anhydride + HO2. + R.
T214 CHOCH=CHCH=CHCHO -> diformyl cyclobutene
T215 CH3COCH=CHCOCH3 -> CH3CO + CH=CHCOCH3
F216 n-C5H11ONO2 -> n-C5H11O + NO2
F217 2-C5H11ONO2 -> 2-C5H11O + NO2
F218 3-C5H11ONO2 -> 3-C5H11O + NO2
F219 c-C5H11ONO2 -> c-C5H11O + NO2
F220 i-C4H9ONO2 -> i-C4H9O + NO2
F221 i-C5H11ONO2 -> i-C5H11O + NO2
F222 CH3CH(NO3)CH2NO3 -> CH3CH(NO3)CH2O + NO2
F223 CH3CH(NO3)CH2NO3 -> CH3CH(O.)CH2NO3 + NO2
F224 C2H5CH(NO3)CH2NO3 -> C2H5CH(NO3)CH2O + NO2
F225 C2H5CH(NO3)CH2NO3 -> C2H5CH(O.)CH2NO3 + NO2
F226 CH3CH(NO3)CH(NO3)CH3 -> RO. + NO2
F227 CH2(NO3)CH=CHCH2NO3 -> RO. + NO2
F228 CH2=CHCH(NO3)CH2NO3 -> C2H3CH(NO3)CH2O + NO2
F229 CH2=CHCH(NO3)CH2NO3 -> C2H3CH(O.)CH2NO3 + NO2
F230 C6H9-1-CH3-1,2-NO3 -> R1O. + NO2
F231 C6H9-1-CH3-1,2-NO3 -> R2O. + NO2
F232 (CH3)3COOH -> (CH3)3CO + OH
F233 C2H5COCH2NO3 -> C2H5COCH2O + NO2
F234 CH3COCH(NO3)CH3 -> CH3COCH(O.)CH3 + NO2
T235 C6H9-2-=O-1-NO3 -> RO. + NO2
F236 CH3COCH2CH2CH(OOH)CH3 -> RO. + OH
F237 oxohexyl-hydroperoxide -> RO. + OH
F238 CH2OO -> HCHO + O(3P)
F239 CH3CHOO -> CH3CHO + O(3P)
F240 C2H5CHOO -> C2H5CHO + O(3P)
F241 (CH3)2COO -> CH3COCH3 + O(3P)
==================================================================
