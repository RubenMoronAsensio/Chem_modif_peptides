#LOAD PACKAGES FROM THE PACKAGES SCRIPT
#_______________________________________________________________________

Maer = read_delim("Intensities/Maer_2.csv", 
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


MaerCA = filter(Maer, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
MA = mean(MaerCA$Ch1..tot.Signal.intensity.)

MaerTA = filter(Maer, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
MaerTA= MaerTA['Ch1..tot.Signal.intensity.']/MA
write.csv2(MaerTA, "Filtered/Normalized/A488/MaerTA.csv")

summary(MaerTA$Ch1..tot.Signal.intensity.)
std.error(MaerTA$Ch1..tot.Signal.intensity.)
sd(MaerTA$Ch1..tot.Signal.intensity.)

MaerLA = filter(Maer, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
MaerLA= MaerLA['Ch1..tot.Signal.intensity.']/MA
write.csv2(MaerLA, "Filtered/Normalized/A488/MaerLA.csv")

summary(MaerLA$Ch1..tot.Signal.intensity.)
std.error(MaerLA$Ch1..tot.Signal.intensity.)
sd(MaerLA$Ch1..tot.Signal.intensity.)

MaerAA = filter(Maer, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
MaerAA= MaerAA['Ch1..tot.Signal.intensity.']/MA
write.csv2(MaerAA, "Filtered/Normalized/A488/MaerAA.csv")

summary(MaerAA$Ch1..tot.Signal.intensity.)
std.error(MaerAA$Ch1..tot.Signal.intensity.)
sd(MaerAA$Ch1..tot.Signal.intensity.)

MaerCN = filter(Maer, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
MN = mean(MaerCN$Ch1..tot.Signal.intensity.)
summary(MaerCN$Ch1..tot.Signal.intensity.)

MaerTN = filter(Maer, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
MaerTN= MaerTN['Ch1..tot.Signal.intensity.']/MN
write.csv2(MaerTN, "Filtered/Normalized/A488/MaerTN.csv")

summary(MaerTN$Ch1..tot.Signal.intensity.)
std.error(MaerTN$Ch1..tot.Signal.intensity.)
sd(MaerTN$Ch1..tot.Signal.intensity.)

MaerLN = filter(Maer, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
MaerLN= MaerLN['Ch1..tot.Signal.intensity.']/MN
write.csv2(MaerLN, "Filtered/Normalized/A488/MaerLN.csv")

summary(MaerLN$Ch1..tot.Signal.intensity.)
std.error(MaerLN$Ch1..tot.Signal.intensity.)
sd(MaerLN$Ch1..tot.Signal.intensity.)

MaerAN = filter(Maer, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
MaerAN= MaerAN['Ch1..tot.Signal.intensity.']/MN
write.csv2(MaerAN, "Filtered/Normalized/A488/MaerAN.csv")

summary(MaerAN$Ch1..tot.Signal.intensity.)
std.error(MaerAN$Ch1..tot.Signal.intensity.)
sd(MaerAN$Ch1..tot.Signal.intensity.)

###PCC6803

PCC6803CA = filter(PCC6803, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
SA = mean(PCC6803CA$Ch1..tot.Signal.intensity.)

PCC6803TA = filter(PCC6803, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
PCC6803TA= PCC6803TA['Ch1..tot.Signal.intensity.']/SA
write.csv2(PCC6803TA, "Filtered/Normalized/A488/PCC6803TA.csv")

summary(PCC6803TA$Ch1..tot.Signal.intensity.)
std.error(PCC6803TA$Ch1..tot.Signal.intensity.)
sd(PCC6803TA$Ch1..tot.Signal.intensity.)

PCC6803LA = filter(PCC6803, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
PCC6803LA= PCC6803LA['Ch1..tot.Signal.intensity.']/SA
write.csv2(PCC6803LA, "Filtered/Normalized/A488/PCC6803LA.csv")

summary(PCC6803LA$Ch1..tot.Signal.intensity.)
std.error(PCC6803LA$Ch1..tot.Signal.intensity.)
sd(PCC6803LA$Ch1..tot.Signal.intensity.)

PCC6803AA = filter(PCC6803, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
PCC6803AA= PCC6803AA['Ch1..tot.Signal.intensity.']/SA
write.csv2(PCC6803AA, "Filtered/Normalized/A488/PCC6803AA.csv")

summary(PCC6803AA$Ch1..tot.Signal.intensity.)
std.error(PCC6803AA$Ch1..tot.Signal.intensity.)
sd(PCC6803AA$Ch1..tot.Signal.intensity.)

PCC6803CN = filter(PCC6803, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
SN = mean(PCC6803CN$Ch1..tot.Signal.intensity.)
summary(PCC6803CN$Ch1..tot.Signal.intensity.)

PCC6803TN = filter(PCC6803, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
PCC6803TN= PCC6803TN['Ch1..tot.Signal.intensity.']/SN
write.csv2(PCC6803TN, "Filtered/Normalized/A488/PCC6803TN.csv")

summary(PCC6803TN$Ch1..tot.Signal.intensity.)
std.error(PCC6803TN$Ch1..tot.Signal.intensity.)
sd(PCC6803TN$Ch1..tot.Signal.intensity.)

PCC6803LN = filter(PCC6803, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
PCC6803LN= PCC6803LN['Ch1..tot.Signal.intensity.']/SN
write.csv2(PCC6803LN, "Filtered/Normalized/A488/PCC6803LN.csv")

summary(PCC6803LN$Ch1..tot.Signal.intensity.)
std.error(PCC6803LN$Ch1..tot.Signal.intensity.)
sd(PCC6803LN$Ch1..tot.Signal.intensity.)

PCC6803AN = filter(PCC6803, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
PCC6803AN= PCC6803AN['Ch1..tot.Signal.intensity.']/SN
write.csv2(PCC6803AN, "Filtered/Normalized/A488/PCC6803AN.csv")

summary(PCC6803AN$Ch1..tot.Signal.intensity.)
std.error(PCC6803AN$Ch1..tot.Signal.intensity.)
sd(PCC6803AN$Ch1..tot.Signal.intensity.)

###371

P371CA = filter(P371, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
PA = mean(P371CA$Ch1..tot.Signal.intensity.)

P371TA = filter(P371, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
P371TA= P371TA['Ch1..tot.Signal.intensity.']/PA
write.csv2(P371TA, "Filtered/Normalized/A488/P371TA.csv")

summary(P371TA$Ch1..tot.Signal.intensity.)
std.error(P371TA$Ch1..tot.Signal.intensity.)
sd(P371TA$Ch1..tot.Signal.intensity.)

P371LA = filter(P371, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
P371LA= P371LA['Ch1..tot.Signal.intensity.']/PA
write.csv2(P371LA, "Filtered/Normalized/A488/P371LA.csv")
           
summary(P371LA$Ch1..tot.Signal.intensity.)
std.error(P371LA$Ch1..tot.Signal.intensity.)
sd(P371LA$Ch1..tot.Signal.intensity.)

P371AA = filter(P371, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
P371AA= P371AA['Ch1..tot.Signal.intensity.']/PA
write.csv2(P371AA, "Filtered/Normalized/A488/P371AA.csv")

summary(P371AA$Ch1..tot.Signal.intensity.)
std.error(P371AA$Ch1..tot.Signal.intensity.)
sd(P371AA$Ch1..tot.Signal.intensity.)

P371CN = filter(P371, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
PN = mean(P371CN$Ch1..tot.Signal.intensity.)


P371TN = filter(P371, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
P371TN= P371TN['Ch1..tot.Signal.intensity.']/PN
write.csv2(P371TN, "Filtered/Normalized/A488/P371TN.csv")

summary(P371TN$Ch1..tot.Signal.intensity.)
std.error(P371TN$Ch1..tot.Signal.intensity.)
sd(P371TN$Ch1..tot.Signal.intensity.)

P371LN = filter(P371, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
P371LN= P371LN['Ch1..tot.Signal.intensity.']/PN
write.csv2(P371LN, "Filtered/Normalized/A488/P371LN.csv")

summary(P371LN$Ch1..tot.Signal.intensity.)
std.error(P371LN$Ch1..tot.Signal.intensity.)
sd(P371LN$Ch1..tot.Signal.intensity.)

P371AN = filter(P371, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
P371AN= P371AN['Ch1..tot.Signal.intensity.']/PN
write.csv2(P371AN, "Filtered/Normalized/A488/P371AN.csv")

summary(P371AN$Ch1..tot.Signal.intensity.)
std.error(P371AN$Ch1..tot.Signal.intensity.)
sd(P371AN$Ch1..tot.Signal.intensity.)

###WT

WTCA = filter(WT, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
WA = mean(WTCA$Ch1..tot.Signal.intensity.)

WTTA = filter(WT, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
WTTA= WTTA['Ch1..tot.Signal.intensity.']/WA
write.csv2(WTTA, "Filtered/Normalized/A488/WTTA.csv")

summary(WTTA$Ch1..tot.Signal.intensity.)
std.error(WTTA$Ch1..tot.Signal.intensity.)
sd(WTTA$Ch1..tot.Signal.intensity.)

WTLA = filter(WT, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
WTLA= WTLA['Ch1..tot.Signal.intensity.']/WA
write.csv2(WTLA, "Filtered/Normalized/A488/WTLA.csv")
           
summary(WTLA$Ch1..tot.Signal.intensity.)
std.error(WTLA$Ch1..tot.Signal.intensity.)
sd(WTLA$Ch1..tot.Signal.intensity.)

WTAA = filter(WT, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
WTAA= WTAA['Ch1..tot.Signal.intensity.']/WA
write.csv2(WTAA, "Filtered/Normalized/A488/WTAA.csv")

summary(WTAA$Ch1..tot.Signal.intensity.)
std.error(WTAA$Ch1..tot.Signal.intensity.)
sd(WTAA$Ch1..tot.Signal.intensity.)

WTCN = filter(WT, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
WN = mean(WTCN$Ch1..tot.Signal.intensity.)
summary(WTCN$Ch1..tot.Signal.intensity.)

WTTN = filter(WT, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
WTTN= WTTN['Ch1..tot.Signal.intensity.']/WN
write.csv2(WTTN, "Filtered/Normalized/A488/WTTN.csv")

summary(WTTN$Ch1..tot.Signal.intensity.)
std.error(WTTN$Ch1..tot.Signal.intensity.)
sd(WTTN$Ch1..tot.Signal.intensity.)

WTLN = filter(WT, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
WTLN= WTLN['Ch1..tot.Signal.intensity.']/WN
write.csv2(WTLN, "Filtered/Normalized/A488/WTLN.csv")

summary(WTLN$Ch1..tot.Signal.intensity.)
std.error(WTLN$Ch1..tot.Signal.intensity.)
sd(WTLN$Ch1..tot.Signal.intensity.)

WTAN = filter(WT, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
WTAN= WTAN['Ch1..tot.Signal.intensity.']/WN
write.csv2(WTAN, "Filtered/Normalized/A488/WTAN.csv")

summary(WTAN$Ch1..tot.Signal.intensity.)
std.error(WTAN$Ch1..tot.Signal.intensity.)
sd(WTAN$Ch1..tot.Signal.intensity.)

###Apnko

ApnkoCA = filter(Apnko, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
AA = mean(ApnkoCA$Ch1..tot.Signal.intensity.)

ApnkoTA = filter(Apnko, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
ApnkoTA= ApnkoTA['Ch1..tot.Signal.intensity.']/AA
write.csv2(ApnkoTA, "Filtered/Normalized/A488/ApnkoTA.csv")

summary(ApnkoTA$Ch1..tot.Signal.intensity.)
std.error(ApnkoTA$Ch1..tot.Signal.intensity.)
sd(ApnkoTA$Ch1..tot.Signal.intensity.)

ApnkoLA = filter(Apnko, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
ApnkoLA= ApnkoLA['Ch1..tot.Signal.intensity.']/AA
write.csv2(ApnkoLA, "Filtered/Normalized/A488/ApnkoLA.csv")

summary(ApnkoLA$Ch1..tot.Signal.intensity.)
std.error(ApnkoLA$Ch1..tot.Signal.intensity.)
sd(ApnkoLA$Ch1..tot.Signal.intensity.)

ApnkoAA = filter(Apnko, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
ApnkoAA= ApnkoAA['Ch1..tot.Signal.intensity.']/AA
write.csv2(ApnkoAA, "Filtered/Normalized/A488/ApnkoAA.csv")

summary(ApnkoAA$Ch1..tot.Signal.intensity.)
std.error(ApnkoAA$Ch1..tot.Signal.intensity.)
sd(ApnkoAA$Ch1..tot.Signal.intensity.)

ApnkoCN = filter(Apnko, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
AN = mean(ApnkoCN$Ch1..tot.Signal.intensity.)
summary(ApnkoCN$Ch0..tot.Signal.intensity.)

ApnkoTN = filter(Apnko, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
ApnkoTN= ApnkoTN['Ch1..tot.Signal.intensity.']/AN
write.csv2(ApnkoTN, "Filtered/Normalized/A488/ApnkoTN.csv")

summary(ApnkoTN$Ch1..tot.Signal.intensity.)
std.error(ApnkoTN$Ch1..tot.Signal.intensity.)
sd(ApnkoTN$Ch1..tot.Signal.intensity.)

ApnkoLN = filter(Apnko, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
ApnkoLN= ApnkoLN['Ch1..tot.Signal.intensity.']/AN
write.csv2(ApnkoLN, "Filtered/Normalized/A488/ApnkoLN.csv")

summary(ApnkoLN$Ch1..tot.Signal.intensity.)
std.error(ApnkoLN$Ch1..tot.Signal.intensity.)
sd(ApnkoLN$Ch1..tot.Signal.intensity.)

ApnkoAN = filter(Apnko, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
ApnkoAN= ApnkoAN['Ch1..tot.Signal.intensity.']/AN
write.csv2(ApnkoAN, "Filtered/Normalized/A488/ApnkoAN.csv")

summary(ApnkoAN$Ch1..tot.Signal.intensity.)
std.error(ApnkoAN$Ch1..tot.Signal.intensity.)
sd(ApnkoAN$Ch1..tot.Signal.intensity.)

###Cptdel

CptdelCA = filter(Cptdel, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
CA = mean(CptdelCA$Ch1..tot.Signal.intensity.)

CptdelTA = filter(Cptdel, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
CptdelTA= CptdelTA['Ch1..tot.Signal.intensity.']/CA
write.csv2(CptdelTA, "Filtered/Normalized/A488/CptdelTA.csv")

summary(CptdelTA$Ch1..tot.Signal.intensity.)
std.error(CptdelTA$Ch1..tot.Signal.intensity.)
sd(CptdelTA$Ch1..tot.Signal.intensity.)

CptdelLA = filter(Cptdel, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
CptdelLA= CptdelLA['Ch1..tot.Signal.intensity.']/CA
write.csv2(CptdelLA, "Filtered/Normalized/A488/CptdelLA.csv")

summary(CptdelLA$Ch1..tot.Signal.intensity.)
std.error(CptdelLA$Ch1..tot.Signal.intensity.)
sd(CptdelLA$Ch1..tot.Signal.intensity.)

CptdelAA = filter(Cptdel, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
CptdelAA= CptdelAA['Ch1..tot.Signal.intensity.']/CA
write.csv2(CptdelAA, "Filtered/Normalized/A488/CptdelAA.csv")

summary(CptdelAA$Ch1..tot.Signal.intensity.)
std.error(CptdelAA$Ch1..tot.Signal.intensity.)
sd(CptdelAA$Ch1..tot.Signal.intensity.)

CptdelCN = filter(Cptdel, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
CN = mean(CptdelCN$Ch1..tot.Signal.intensity.)
summary(CptdelCN$Ch1..tot.Signal.intensity.)

CptdelTN = filter(Cptdel, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
CptdelTN= CptdelTN['Ch1..tot.Signal.intensity.']/CN
write.csv2(CptdelTN, "Filtered/Normalized/A488/CptdelTN.csv")

summary(CptdelTN$Ch1..tot.Signal.intensity.)
std.error(CptdelTN$Ch1..tot.Signal.intensity.)
sd(CptdelTN$Ch1..tot.Signal.intensity.)

CptdelLN = filter(Cptdel, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
CptdelLN= CptdelLN['Ch1..tot.Signal.intensity.']/CN
write.csv2(CptdelLN, "Filtered/Normalized/A488/CptdelLN.csv")

summary(CptdelLN$Ch1..tot.Signal.intensity.)
std.error(CptdelLN$Ch1..tot.Signal.intensity.)
sd(CptdelLN$Ch1..tot.Signal.intensity.)

CptdelAN = filter(Cptdel, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
CptdelAN= CptdelAN['Ch1..tot.Signal.intensity.']/CN
write.csv2(CptdelAN, "Filtered/Normalized/A488/CptdelAN.csv")

summary(CptdelAN$Ch1..tot.Signal.intensity.)
std.error(CptdelAN$Ch1..tot.Signal.intensity.)
sd(CptdelAN$Ch1..tot.Signal.intensity.)

###MV

MVCA = filter(MV, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
MVA = mean(MVCA$Ch1..tot.Signal.intensity.)

MVTA = filter(MV, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
MVTA= MVTA['Ch1..tot.Signal.intensity.']/MVA
write.csv2(MVTA, "Filtered/Normalized/A488/MVTA.csv")

summary(MVTA$Ch1..tot.Signal.intensity.)
std.error(MVTA$Ch1..tot.Signal.intensity.)
sd(MVTA$Ch1..tot.Signal.intensity.)

MVLA = filter(MV, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
MVLA= MVLA['Ch1..tot.Signal.intensity.']/MVA
write.csv2(MVLA, "Filtered/Normalized/A488/MVLA.csv")

summary(MVLA$Ch1..tot.Signal.intensity.)
std.error(MVLA$Ch1..tot.Signal.intensity.)
sd(MVLA$Ch1..tot.Signal.intensity.)

MVAA = filter(MV, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
MVAA= MVAA['Ch1..tot.Signal.intensity.']/MVA
write.csv2(MVAA, "Filtered/Normalized/A488/MVAA.csv")

summary(MVAA$Ch1..tot.Signal.intensity.)
std.error(MVAA$Ch1..tot.Signal.intensity.)
sd(MVAA$Ch1..tot.Signal.intensity.)

MVCN = filter(MV, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
MVN = mean(MVCN$Ch1..tot.Signal.intensity.)
summary(MVCN$Ch1..tot.Signal.intensity.)

MVTN = filter(MV, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
MVTN= MVTN['Ch1..tot.Signal.intensity.']/MVN
write.csv2(MVTN, "Filtered/Normalized/A488/MVTN.csv")

summary(MVTN$Ch1..tot.Signal.intensity.)
std.error(MVTN$Ch1..tot.Signal.intensity.)
sd(MVTN$Ch1..tot.Signal.intensity.)

MVLN = filter(MV, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
MVLN= MVLN['Ch1..tot.Signal.intensity.']/MVN
write.csv2(MVLN, "Filtered/Normalized/A488/MVLN.csv")

summary(MVLN$Ch1..tot.Signal.intensity.)
std.error(MVLN$Ch1..tot.Signal.intensity.)
sd(MVLN$Ch1..tot.Signal.intensity.)

MVAN = filter(MV, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
MVAN= MVAN['Ch1..tot.Signal.intensity.']/MVN
write.csv2(MVAN, "Filtered/Normalized/A488/MVAN.csv")

summary(MVAN$Ch1..tot.Signal.intensity.)
std.error(MVAN$Ch1..tot.Signal.intensity.)
sd(MVAN$Ch1..tot.Signal.intensity.)

###dD2-2

dD2CA = filter(dD2, Feeding == "No Feed", Treatment == "A488+A405", X..pixel. <= 256)
DA = mean(dD2CA$Ch1..tot.Signal.intensity.)

dD2TA = filter(dD2, Feeding == "Prop-Tyr", Treatment == "A488+A405", X..pixel. <= 256)
dD2TA= dD2TA['Ch1..tot.Signal.intensity.']/DA
write.csv2(dD2TA, "Filtered/Normalized/A488/dD2TA.csv")

summary(dD2TA$Ch1..tot.Signal.intensity.)
std.error(dD2TA$Ch1..tot.Signal.intensity.)
sd(dD2TA$Ch1..tot.Signal.intensity.)

dD2LA = filter(dD2, Feeding == "Prop-Lys", Treatment == "A488+A405", X..pixel. <= 256)
dD2LA= dD2LA['Ch1..tot.Signal.intensity.']/DA
write.csv2(dD2LA, "Filtered/Normalized/A488/dD2LA.csv")

summary(dD2LA$Ch1..tot.Signal.intensity.)
std.error(dD2LA$Ch1..tot.Signal.intensity.)
sd(dD2LA$Ch1..tot.Signal.intensity.)

dD2AA = filter(dD2, Feeding == "Phe-Az", Treatment == "A488+A405", X..pixel. <= 256)
dD2AA= dD2AA['Ch1..tot.Signal.intensity.']/DA
write.csv2(dD2AA, "Filtered/Normalized/A488/dD2AA.csv")

summary(dD2AA$Ch1..tot.Signal.intensity.)
std.error(dD2AA$Ch1..tot.Signal.intensity.)
sd(dD2AA$Ch1..tot.Signal.intensity.)

dD2CN = filter(dD2, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
DN = mean(dD2CN$Ch1..tot.Signal.intensity.)
summary(dD2CN$Ch1..tot.Signal.intensity.)

dD2TN = filter(dD2, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
dD2TN= dD2TN['Ch1..tot.Signal.intensity.']/DN
write.csv2(dD2TN, "Filtered/Normalized/A488/dD2TN.csv")

summary(dD2TN$Ch1..tot.Signal.intensity.)
std.error(dD2TN$Ch1..tot.Signal.intensity.)
sd(dD2TN$Ch1..tot.Signal.intensity.)

dD2LN = filter(dD2, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
dD2LN= dD2LN['Ch1..tot.Signal.intensity.']/DN
write.csv2(dD2LN, "Filtered/Normalized/A488/dD2LN.csv")

summary(dD2LN$Ch1..tot.Signal.intensity.)
std.error(dD2LN$Ch1..tot.Signal.intensity.)
sd(dD2LN$Ch1..tot.Signal.intensity.)

dD2AN = filter(dD2, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
dD2AN= dD2AN['Ch1..tot.Signal.intensity.']/DN
write.csv2(dD2AN, "Filtered/Normalized/A488/dD2AN.csv")

summary(dD2AN$Ch1..tot.Signal.intensity.)
std.error(dD2AN$Ch1..tot.Signal.intensity.)
sd(dD2AN$Ch1..tot.Signal.intensity.)

