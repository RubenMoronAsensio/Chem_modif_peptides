#LOAD PACKAGES FROM THE PACKAGES SCRIPT
#_______________________________________________________________________

Maer = read_delim("Intensities/Maer.csv", 
                  ";", escape_double = FALSE, trim_ws = TRUE)
Maer = Maer %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "Microcystis aeruginosa")
Maer$Treatment = as.factor(Maer$Treatment)
Maer$Feeding = as.factor(Maer$Feeding)
Maer$Specie = as.factor(Maer$Specie)

PCC6803 = read_delim("Intensities/PCC6803.csv", 
                     ";", escape_double = FALSE, trim_ws = TRUE)
PCC6803 = PCC6803 %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "Synechocystis PCC6803")
PCC6803$Treatment = as.factor(PCC6803$Treatment)
PCC6803$Feeding = as.factor(PCC6803$Feeding)
PCC6803$Specie = as.factor(PCC6803$Specie)

P371 = read_delim("Intensities/P371_2.csv", 
                  ";", escape_double = FALSE, trim_ws = TRUE)
P371 = P371 %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "371-1")
P371$Treatment = as.factor(P371$Treatment)
P371$Feeding = as.factor(P371$Feeding)


WT = read_delim("Intensities/WT_2.csv", 
                ";", escape_double = FALSE, trim_ws = TRUE)
WT = WT %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8")
WT$Treatment = as.factor(WT$Treatment)
WT$Feeding = as.factor(WT$Feeding)

Apnko = read_delim("Intensities/Apnko_2.csv", 
                   ";", escape_double = FALSE, trim_ws = TRUE)
Apnko = Apnko %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 ApnKO")
Apnko$Treatment = as.factor(Apnko$Treatment)
Apnko$Feeding = as.factor(Apnko$Feeding)

Cptdel = read_delim("Intensities/Cptdel_2.csv", 
                    ";", escape_double = FALSE, trim_ws = TRUE)
Cptdel = Cptdel %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 Cptdel")
Cptdel$Treatment = as.factor(Cptdel$Treatment)
Cptdel$Feeding = as.factor(Cptdel$Feeding)

MV = read_delim("Intensities/MV_2.csv", 
                ";", escape_double = FALSE, trim_ws = TRUE)
MV = MV %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 MV")
MV$Treatment = as.factor(MV$Treatment)
MV$Feeding = as.factor(MV$Feeding)

dD2 = read_delim("Intensities/dD2_2.csv", 
                 ";", escape_double = FALSE, trim_ws = TRUE)
dD2 = dD2 %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 dD2-2")
dD2$Treatment = as.factor(dD2$Treatment)
dD2$Feeding = as.factor(dD2$Feeding)

##_________________MINMAX______________________________________________________________


###MAER 

MaerC = filter(Maer, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
MC = mean(MaerC$Ch1..tot.Signal.intensity.)
MaerCN = MaerC['Ch1..tot.Signal.intensity.']/MC
write.csv2(MaerCN, "Filtered/Normalized/BODIPY/MaerC.csv")

summary(MaerCN)
std.error(MaerCN)
sd(MaerCN$Ch1..tot.Signal.intensity.)

MaerT = filter(Maer, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
MT = mean(MaerT$Ch1..tot.Signal.intensity.)
MaerTN = MaerT['Ch1..tot.Signal.intensity.']/MT
write.csv2(MaerTN, "Filtered/Normalized/BODIPY/MaerT.csv")

summary(MaerTN)
std.error(MaerTN)
sd(MaerTN$Ch1..tot.Signal.intensity.)

MaerL = filter(Maer, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
ML = mean(MaerL$Ch1..tot.Signal.intensity.)
MaerLN = MaerL['Ch1..tot.Signal.intensity.']/ML
write.csv2(MaerLN, "Filtered/Normalized/BODIPY/MaerL.csv")

summary(MaerLN)
std.error(MaerLN)
sd(MaerLN$Ch1..tot.Signal.intensity.)

MaerA = filter(Maer, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
MA = mean(MaerA$Ch1..tot.Signal.intensity.)
MaerAN = MaerA['Ch1..tot.Signal.intensity.']/MA
write.csv2(MaerAN, "Filtered/Normalized/BODIPY/MaerA.csv")

summary(MaerAN)
std.error(MaerAN)
sd(MaerAN$Ch1..tot.Signal.intensity.)

MaerCB= filter(Maer, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
MaerCB = MaerCB['Ch1..tot.Signal.intensity.']/MC
write.csv2(MaerCB, "Filtered/Normalized/BODIPY/MaerCB.csv")

summary(MaerCB)
std.error(MaerCB)
sd(MaerCB$Ch1..tot.Signal.intensity.)

MaerTB= filter(Maer, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
MaerTB = MaerTB['Ch1..tot.Signal.intensity.']/MT
write.csv2(MaerTB, "Filtered/Normalized/BODIPY/MaerTB.csv")

summary(MaerTB)
std.error(MaerTB)
sd(MaerTB$Ch1..tot.Signal.intensity.)

MaerLB= filter(Maer, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
MaerLB = MaerLB['Ch1..tot.Signal.intensity.']/ML
write.csv2(MaerLB, "Filtered/Normalized/BODIPY/MaerLB.csv")

summary(MaerLB)
std.error(MaerLB)
sd(MaerLB$Ch1..tot.Signal.intensity.)

MaerAB= filter(Maer, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
MaerAB = MaerAB['Ch1..tot.Signal.intensity.']/MA
write.csv2(MaerAB, "Filtered/Normalized/BODIPY/MaerAB.csv")

summary(MaerAB)
std.error(MaerAB)
sd(MaerAB$Ch1..tot.Signal.intensity.)

###PCC6803

PCC6803C = filter(PCC6803, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
SC = mean(PCC6803C$Ch1..tot.Signal.intensity.)
PCC6803CN = PCC6803C['Ch1..tot.Signal.intensity.']/SC
write.csv2(PCC6803CN, "Filtered/Normalized/BODIPY/PCC6803C.csv")

summary(PCC6803CN)
std.error(PCC6803CN)
sd(PCC6803CN$Ch1..tot.Signal.intensity.)

PCC6803T = filter(PCC6803, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
ST = mean(PCC6803T$Ch1..tot.Signal.intensity.)
PCC6803TN = PCC6803T['Ch1..tot.Signal.intensity.']/ST
write.csv2(PCC6803TN, "Filtered/Normalized/BODIPY/PCC6803T.csv")

summary(PCC6803TN)
std.error(PCC6803TN)
sd(PCC6803TN$Ch1..tot.Signal.intensity.)

PCC6803L = filter(PCC6803, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
SL = mean(PCC6803L$Ch1..tot.Signal.intensity.)
PCC6803LN = PCC6803L['Ch1..tot.Signal.intensity.']/SL
write.csv2(PCC6803LN, "Filtered/Normalized/BODIPY/PCC6803L.csv")

summary(PCC6803LN)
std.error(PCC6803LN)
sd(PCC6803LN$Ch1..tot.Signal.intensity.)

PCC6803A = filter(PCC6803, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
SA = mean(PCC6803A$Ch1..tot.Signal.intensity.)
PCC6803AN = PCC6803A['Ch1..tot.Signal.intensity.']/SA
write.csv2(PCC6803AN, "Filtered/Normalized/BODIPY/PCC6803A.csv")

summary(PCC6803AN)
std.error(PCC6803AN)
sd(PCC6803AN$Ch1..tot.Signal.intensity.)

PCC6803CB= filter(PCC6803, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
PCC6803CB = PCC6803CB['Ch1..tot.Signal.intensity.']/SC
write.csv2(PCC6803CB, "Filtered/Normalized/BODIPY/PCC6803CB.csv")

summary(PCC6803CB)
std.error(PCC6803CB)
sd(PCC6803CB$Ch1..tot.Signal.intensity.)

PCC6803TB= filter(PCC6803, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
PCC6803TB = PCC6803TB['Ch1..tot.Signal.intensity.']/ST
write.csv2(PCC6803TB, "Filtered/Normalized/BODIPY/PCC6803TB.csv")

summary(PCC6803TB)
std.error(PCC6803TB)
sd(PCC6803TB$Ch1..tot.Signal.intensity.)

PCC6803LB= filter(PCC6803, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
PCC6803LB = PCC6803LB['Ch1..tot.Signal.intensity.']/SL
write.csv2(PCC6803LB, "Filtered/Normalized/BODIPY/PCC6803LB.csv")

summary(PCC6803LB)
std.error(PCC6803LB)
sd(PCC6803LB$Ch1..tot.Signal.intensity.)

PCC6803AB= filter(PCC6803, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
PCC6803AB = PCC6803AB['Ch1..tot.Signal.intensity.']/SA
write.csv2(PCC6803AB, "Filtered/Normalized/BODIPY/PCC6803AB.csv")

summary(PCC6803AB)
std.error(PCC6803AB)
sd(PCC6803AB$Ch1..tot.Signal.intensity.)

###371

P371C = filter(P371, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
PC = mean(P371C$Ch1..tot.Signal.intensity.)
P371CN = P371C['Ch1..tot.Signal.intensity.']/PC
write.csv2(P371CN, "Filtered/Normalized/BODIPY/P371C.csv")

summary(P371CN)
std.error(P371CN)
sd(P371CN$Ch1..tot.Signal.intensity.)

P371T = filter(P371, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
PT = mean(P371T$Ch1..tot.Signal.intensity.)
P371TN = P371T['Ch1..tot.Signal.intensity.']/PT
write.csv2(P371TN, "Filtered/Normalized/BODIPY/P371T.csv")

summary(P371TN)
std.error(P371TN)
sd(P371TN$Ch1..tot.Signal.intensity.)

P371L = filter(P371, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
PL = mean(P371L$Ch1..tot.Signal.intensity.)
P371LN = P371L['Ch1..tot.Signal.intensity.']/PL
write.csv2(P371LN, "Filtered/Normalized/BODIPY/P371L.csv")

summary(P371LN)
std.error(P371LN)
sd(P371LN$Ch1..tot.Signal.intensity.)

P371A = filter(P371, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
PA = mean(P371A$Ch1..tot.Signal.intensity.)
P371AN = P371A['Ch1..tot.Signal.intensity.']/PA
write.csv2(P371AN, "Filtered/Normalized/BODIPY/P371A.csv")

summary(P371AN)
std.error(P371AN)
sd(P371AN$Ch1..tot.Signal.intensity.)

P371CB= filter(P371, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
P371CB = P371CB['Ch1..tot.Signal.intensity.']/PC
write.csv2(P371CB, "Filtered/Normalized/BODIPY/P371CB.csv")

summary(P371CB)
std.error(P371CB)
sd(P371CB$Ch1..tot.Signal.intensity.)

P371TB= filter(P371, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
P371TB = P371TB['Ch1..tot.Signal.intensity.']/PT
write.csv2(P371TB, "Filtered/Normalized/BODIPY/P371TB.csv")

summary(P371TB)
std.error(P371TB)
sd(P371TB$Ch1..tot.Signal.intensity.)

P371LB= filter(P371, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
P371LB = P371LB['Ch1..tot.Signal.intensity.']/PL
write.csv2(P371LB, "Filtered/Normalized/BODIPY/P371LB.csv")

summary(P371LB)
std.error(P371LB)
sd(P371LB$Ch1..tot.Signal.intensity.)

P371AB= filter(P371, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
P371AB = P371AB['Ch1..tot.Signal.intensity.']/PA
write.csv2(P371AB, "Filtered/Normalized/BODIPY/P371AB.csv")

summary(P371AB)
std.error(P371AB)
sd(P371AB$Ch1..tot.Signal.intensity.)

###WT

WTC = filter(WT, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
WC = mean(WTC$Ch1..tot.Signal.intensity.)
WTCN = WTC['Ch1..tot.Signal.intensity.']/WC
write.csv2(WTCN, "Filtered/Normalized/BODIPY/WTC.csv")

summary(WTCN)
std.error(WTCN)
sd(WTCN$Ch1..tot.Signal.intensity.)

WTT = filter(WT, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
WTe = mean(WTT$Ch1..tot.Signal.intensity.)
WTTN = WTT['Ch1..tot.Signal.intensity.']/WTe
write.csv2(WTTN, "Filtered/Normalized/BODIPY/WTT.csv")

summary(WTTN)
std.error(WTTN)
sd(WTTN$Ch1..tot.Signal.intensity.)

WTL = filter(WT, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
WL = mean(WTL$Ch1..tot.Signal.intensity.)
WTLN = WTL['Ch1..tot.Signal.intensity.']/WL
write.csv2(WTLN, "Filtered/Normalized/BODIPY/WTL.csv")

summary(WTLN)
std.error(WTLN)
sd(WTLN$Ch1..tot.Signal.intensity.)

WTA = filter(WT, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
WA = mean(WTL$Ch1..tot.Signal.intensity.)
WTAN = WTA['Ch1..tot.Signal.intensity.']/WA
write.csv2(WTAN, "Filtered/Normalized/BODIPY/WTA.csv")

summary(WTAN)
std.error(WTAN)
sd(WTAN$Ch1..tot.Signal.intensity.)

WTCB= filter(WT, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
WTCB = WTCB['Ch1..tot.Signal.intensity.']/WC
write.csv2(WTCB, "Filtered/Normalized/BODIPY/WTCB.csv")

summary(WTCB)
std.error(WTCB)
sd(WTCB$Ch1..tot.Signal.intensity.)

WTTB= filter(WT, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
WTTB = WTTB['Ch1..tot.Signal.intensity.']/WTe
write.csv2(WTTB, "Filtered/Normalized/BODIPY/WTTB.csv")

summary(WTTB)
std.error(WTTB)
sd(WTTB$Ch1..tot.Signal.intensity.)

WTLB= filter(WT, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
WTLB = WTLB['Ch1..tot.Signal.intensity.']/WL
write.csv2(WTLB, "Filtered/Normalized/BODIPY/WTLB.csv")

summary(WTLB)
std.error(WTLB)
sd(WTLB$Ch1..tot.Signal.intensity.)

WTAB= filter(WT, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
WTAB = WTAB['Ch1..tot.Signal.intensity.']/WA
write.csv2(WTAB, "Filtered/Normalized/BODIPY/WTAB.csv")

summary(WTAB)
std.error(WTAB)
sd(WTAB$Ch1..tot.Signal.intensity.)

###Apnko

ApnkoC = filter(Apnko, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
AC = mean(ApnkoC$Ch1..tot.Signal.intensity.)
ApnkoCN = ApnkoC['Ch1..tot.Signal.intensity.']/AC
write.csv2(ApnkoCN, "Filtered/Normalized/BODIPY/ApnkoC.csv")

summary(ApnkoCN)
std.error(ApnkoCN)
sd(ApnkoCN$Ch1..tot.Signal.intensity.)

ApnkoT = filter(Apnko, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
AT = mean(ApnkoT$Ch1..tot.Signal.intensity.)
ApnkoTN = ApnkoT['Ch1..tot.Signal.intensity.']/AT
write.csv2(ApnkoTN, "Filtered/Normalized/BODIPY/ApnkoT.csv")

summary(ApnkoTN)
std.error(ApnkoTN)
sd(ApnkoTN$Ch1..tot.Signal.intensity.)

ApnkoL = filter(Apnko, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
AL = mean(ApnkoL$Ch1..tot.Signal.intensity.)
ApnkoLN = ApnkoL['Ch1..tot.Signal.intensity.']/AL
write.csv2(ApnkoLN, "Filtered/Normalized/BODIPY/ApnkoL.csv")

summary(ApnkoLN)
std.error(ApnkoLN)
sd(ApnkoLN$Ch1..tot.Signal.intensity.)

ApnkoA = filter(Apnko, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
AA = mean(ApnkoL$Ch1..tot.Signal.intensity.)
ApnkoAN = ApnkoA['Ch1..tot.Signal.intensity.']/AA
write.csv2(ApnkoAN, "Filtered/Normalized/BODIPY/ApnkoA.csv")

ApnkoCB= filter(Apnko, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
ApnkoCB = ApnkoCB['Ch1..tot.Signal.intensity.']/AC
write.csv2(ApnkoCB, "Filtered/Normalized/BODIPY/ApnkoCB.csv")

summary(ApnkoCB)
std.error(ApnkoCB)
sd(ApnkoCB$Ch1..tot.Signal.intensity.)

ApnkoTB= filter(Apnko, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
ApnkoTB = ApnkoTB['Ch1..tot.Signal.intensity.']/AT
write.csv2(ApnkoTB, "Filtered/Normalized/BODIPY/ApnkoTB.csv")

summary(ApnkoTB)
std.error(ApnkoTB)
sd(ApnkoTB$Ch1..tot.Signal.intensity.)

ApnkoLB= filter(Apnko, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
ApnkoLB = ApnkoLB['Ch1..tot.Signal.intensity.']/AL
write.csv2(ApnkoLB, "Filtered/Normalized/BODIPY/ApnkoLB.csv")

summary(ApnkoLB)
std.error(ApnkoLB)
sd(ApnkoLB$Ch1..tot.Signal.intensity.)

ApnkoAB= filter(Apnko, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
ApnkoAB = ApnkoAB['Ch1..tot.Signal.intensity.']/AA
write.csv2(ApnkoAB, "Filtered/Normalized/BODIPY/ApnkoAB.csv")

summary(ApnkoAB)
std.error(ApnkoAB)
sd(ApnkoAB$Ch1..tot.Signal.intensity.)

###Cptdel

CptdelC = filter(Cptdel, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
CC = mean(CptdelC$Ch1..tot.Signal.intensity.)
CptdelCN = CptdelC['Ch1..tot.Signal.intensity.']/CC
write.csv2(CptdelCN, "Filtered/Normalized/BODIPY/CptdelC.csv")

summary(CptdelCN)
std.error(CptdelCN)
sd(CptdelCN$Ch1..tot.Signal.intensity.)

CptdelT = filter(Cptdel, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
CT = mean(CptdelT$Ch1..tot.Signal.intensity.)
CptdelTN = CptdelT['Ch1..tot.Signal.intensity.']/CT
write.csv2(CptdelTN, "Filtered/Normalized/BODIPY/CptdelT.csv")

summary(CptdelTN)
std.error(CptdelTN)
sd(CptdelTN$Ch1..tot.Signal.intensity.)

CptdelL = filter(Cptdel, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
CL = mean(CptdelL$Ch1..tot.Signal.intensity.)
CptdelLN = CptdelL['Ch1..tot.Signal.intensity.']/CL
write.csv2(CptdelLN, "Filtered/Normalized/BODIPY/CptdelL.csv")

summary(CptdelLN)
std.error(CptdelLN)
sd(CptdelLN$Ch1..tot.Signal.intensity.)

CptdelA = filter(Cptdel, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
CA = mean(CptdelL$Ch1..tot.Signal.intensity.)
CptdelAN = CptdelA['Ch1..tot.Signal.intensity.']/CA
write.csv2(CptdelAN, "Filtered/Normalized/BODIPY/CptdelA.csv")

summary(CptdelAN)
std.error(CptdelAN)
sd(CptdelAN$Ch1..tot.Signal.intensity.)

CptdelCB= filter(Cptdel, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
CptdelCB = CptdelCB['Ch1..tot.Signal.intensity.']/CC
write.csv2(CptdelCB, "Filtered/Normalized/BODIPY/CptdelCB.csv")

summary(CptdelCB)
std.error(CptdelCB)
sd(CptdelCB$Ch1..tot.Signal.intensity.)

CptdelTB= filter(Cptdel, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
CptdelTB = CptdelTB['Ch1..tot.Signal.intensity.']/CT
write.csv2(CptdelTB, "Filtered/Normalized/BODIPY/CptdelTB.csv")

summary(CptdelTB)
std.error(CptdelTB)
sd(CptdelTB$Ch1..tot.Signal.intensity.)

CptdelLB= filter(Cptdel, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
CptdelLB = CptdelLB['Ch1..tot.Signal.intensity.']/CL
write.csv2(CptdelLB, "Filtered/Normalized/BODIPY/CptdelLB.csv")

summary(CptdelLB)
std.error(CptdelLB)
sd(CptdelLB$Ch1..tot.Signal.intensity.)

CptdelAB= filter(Cptdel, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
CptdelAB = CptdelAB['Ch1..tot.Signal.intensity.']/CA
write.csv2(CptdelAB, "Filtered/Normalized/BODIPY/CptdelAB.csv")

summary(CptdelAB)
std.error(CptdelAB)
sd(CptdelAB$Ch1..tot.Signal.intensity.)

###MV

MVC = filter(MV, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
VC = mean(MVC$Ch1..tot.Signal.intensity.)
MVCN = MVC['Ch1..tot.Signal.intensity.']/VC
write.csv2(MVCN, "Filtered/Normalized/BODIPY/MVC.csv")

summary(MVCN)
std.error(MVCN)
sd(MVCN$Ch1..tot.Signal.intensity.)

MVT = filter(MV, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
VT = mean(MVT$Ch1..tot.Signal.intensity.)
MVTN = MVT['Ch1..tot.Signal.intensity.']/VT
write.csv2(MVTN, "Filtered/Normalized/BODIPY/MVT.csv")

summary(MVTN)
std.error(MVTN)
sd(MVTN$Ch1..tot.Signal.intensity.)

MVL = filter(MV, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
VL = mean(MVL$Ch1..tot.Signal.intensity.)
MVLN = MVL['Ch1..tot.Signal.intensity.']/VL
write.csv2(MVLN, "Filtered/Normalized/BODIPY/MVL.csv")

summary(MVLN)
std.error(MVLN)
sd(MVLN$Ch1..tot.Signal.intensity.)

MVA = filter(MV, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
VA = mean(MVL$Ch1..tot.Signal.intensity.)
MVAN = MVA['Ch1..tot.Signal.intensity.']/VA
write.csv2(MVAN, "Filtered/Normalized/BODIPY/MVA.csv")

summary(MVAN)
std.error(MVAN)
sd(MVAN$Ch1..tot.Signal.intensity.)

MVCB= filter(MV, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVCB = MVCB['Ch1..tot.Signal.intensity.']/VC
write.csv2(MVCB, "Filtered/Normalized/BODIPY/MVCB.csv")

summary(MVCB)
std.error(MVCB)
sd(MVCB$Ch1..tot.Signal.intensity.)

MVTB= filter(MV, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVTB = MVTB['Ch1..tot.Signal.intensity.']/VT
write.csv2(MVTB, "Filtered/Normalized/BODIPY/MVTB.csv")

summary(MVTB)
std.error(MVTB)
sd(MVTB$Ch1..tot.Signal.intensity.)

MVLB= filter(MV, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVLB = MVLB['Ch1..tot.Signal.intensity.']/VL
write.csv2(MVLB, "Filtered/Normalized/BODIPY/MVLB.csv")

summary(MVLB)
std.error(MVLB)
sd(MVLB$Ch1..tot.Signal.intensity.)

MVAB= filter(MV, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVAB = MVAB['Ch1..tot.Signal.intensity.']/VA
write.csv2(MVAB, "Filtered/Normalized/BODIPY/MVAB.csv")

summary(MVAB)
std.error(MVAB)
sd(MVAB$Ch1..tot.Signal.intensity.)

###dD2

dD2C = filter(dD2, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
DC = mean(dD2C$Ch1..tot.Signal.intensity.)
dD2CN = dD2C['Ch1..tot.Signal.intensity.']/DC
write.csv2(dD2CN, "Filtered/Normalized/BODIPY/dD2C.csv")

summary(dD2CN)
std.error(dD2CN)
sd(dD2CN$Ch1..tot.Signal.intensity.)

dD2T = filter(dD2, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
DT = mean(dD2T$Ch1..tot.Signal.intensity.)
dD2TN = dD2T['Ch1..tot.Signal.intensity.']/DT
write.csv2(dD2TN, "Filtered/Normalized/BODIPY/dD2T.csv")

summary(dD2TN)
std.error(dD2TN)
sd(dD2TN$Ch1..tot.Signal.intensity.)

dD2L = filter(dD2, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
DL = mean(dD2L$Ch1..tot.Signal.intensity.)
dD2LN = dD2L['Ch1..tot.Signal.intensity.']/DL
write.csv2(dD2LN, "Filtered/Normalized/BODIPY/dD2L.csv")

summary(dD2LN)
std.error(dD2LN)
sd(dD2LN$Ch1..tot.Signal.intensity.)

dD2A = filter(dD2, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
DA = mean(dD2L$Ch1..tot.Signal.intensity.)
dD2AN = dD2A['Ch1..tot.Signal.intensity.']/DA
write.csv2(dD2AN, "Filtered/Normalized/BODIPY/dD2A.csv")

summary(dD2AN)
std.error(dD2AN)
sd(dD2AN$Ch1..tot.Signal.intensity.)

dD2CB= filter(dD2, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
dD2CB = dD2CB['Ch1..tot.Signal.intensity.']/DC
write.csv2(dD2CB, "Filtered/Normalized/BODIPY/dD2CB.csv")

summary(dD2CB)
std.error(dD2CB)
sd(dD2CB$Ch1..tot.Signal.intensity.)

dD2TB= filter(dD2, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
dD2TB = dD2TB['Ch1..tot.Signal.intensity.']/DT
write.csv2(dD2TB, "Filtered/Normalized/BODIPY/dD2TB.csv")

summary(dD2TB)
std.error(dD2TB)
sd(dD2TB$Ch1..tot.Signal.intensity.)

dD2LB= filter(dD2, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
dD2LB = dD2LB['Ch1..tot.Signal.intensity.']/DL
write.csv2(dD2LB, "Filtered/Normalized/BODIPY/dD2LB.csv")

summary(dD2LB)
std.error(dD2LB)
sd(dD2LB$Ch1..tot.Signal.intensity.)

dD2AB= filter(dD2, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
dD2AB = dD2AB['Ch1..tot.Signal.intensity.']/DA
write.csv2(dD2AB, "Filtered/Normalized/BODIPY/dD2AB.csv")

summary(dD2AB)
std.error(dD2AB)
sd(dD2AB$Ch1..tot.Signal.intensity.)

