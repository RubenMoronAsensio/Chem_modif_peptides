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


MaerCA = filter(Maer, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
MA = mean(MaerCA$Ch0..tot.Signal.intensity.)

MaerTA = filter(Maer, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
MaerTA= MaerTA['Ch0..tot.Signal.intensity.']/MA
write.csv2(MaerTA, "Filtered/Normalized/A405/MaerTA.csv")

summary(MaerTA$Ch0..tot.Signal.intensity.)
std.error(MaerTA$Ch0..tot.Signal.intensity.)
sd(MaerTA$Ch0..tot.Signal.intensity.)

MaerLA = filter(Maer, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
MaerLA= MaerLA['Ch0..tot.Signal.intensity.']/MA
write.csv2(MaerLA, "Filtered/Normalized/A405/MaerLA.csv")

summary(MaerLA$Ch0..tot.Signal.intensity.)
std.error(MaerLA$Ch0..tot.Signal.intensity.)
sd(MaerLA$Ch0..tot.Signal.intensity.)

MaerAA = filter(Maer, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
MaerAA= MaerAA['Ch0..tot.Signal.intensity.']/MA
write.csv2(MaerAA, "Filtered/Normalized/A405/MaerAA.csv")

summary(MaerAA$Ch0..tot.Signal.intensity.)
std.error(MaerAA$Ch0..tot.Signal.intensity.)
sd(MaerAA$Ch0..tot.Signal.intensity.)

MaerCN = filter(Maer, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
MN = mean(MaerCN$Ch0..tot.Signal.intensity.)
summary(MaerCN$Ch0..tot.Signal.intensity.)

MaerTN = filter(Maer, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
MaerTN= MaerTN['Ch0..tot.Signal.intensity.']/MN
write.csv2(MaerTN, "Filtered/Normalized/A405/MaerTN.csv")

summary(MaerTN$Ch0..tot.Signal.intensity.)
std.error(MaerTN$Ch0..tot.Signal.intensity.)
sd(MaerTN$Ch0..tot.Signal.intensity.)

MaerLN = filter(Maer, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
MaerLN= MaerLN['Ch0..tot.Signal.intensity.']/MN
write.csv2(MaerLN, "Filtered/Normalized/A405/MaerLN.csv")

summary(MaerLN$Ch0..tot.Signal.intensity.)
std.error(MaerLN$Ch0..tot.Signal.intensity.)
sd(MaerLN$Ch0..tot.Signal.intensity.)

MaerAN = filter(Maer, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
MaerAN= MaerAN['Ch0..tot.Signal.intensity.']/MN
write.csv2(MaerAN, "Filtered/Normalized/A405/MaerAN.csv")

summary(MaerAN$Ch0..tot.Signal.intensity.)
std.error(MaerAN$Ch0..tot.Signal.intensity.)
sd(MaerAN$Ch0..tot.Signal.intensity.)


###PCC6803

PCC6803CA = filter(PCC6803, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
SA = mean(PCC6803CA$Ch0..tot.Signal.intensity.)

PCC6803TA = filter(PCC6803, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
PCC6803TA= PCC6803TA['Ch0..tot.Signal.intensity.']/SA
write.csv2(PCC6803TA, "Filtered/Normalized/A405/PCC6803TA.csv")

summary(PCC6803TA$Ch0..tot.Signal.intensity.)
std.error(PCC6803TA$Ch0..tot.Signal.intensity.)
sd(PCC6803TA$Ch0..tot.Signal.intensity.)

PCC6803LA = filter(PCC6803, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
PCC6803LA= PCC6803LA['Ch0..tot.Signal.intensity.']/SA
write.csv2(PCC6803LA, "Filtered/Normalized/A405/PCC6803LA.csv")

summary(PCC6803LA$Ch0..tot.Signal.intensity.)
std.error(PCC6803LA$Ch0..tot.Signal.intensity.)
sd(PCC6803LA$Ch0..tot.Signal.intensity.)

PCC6803AA = filter(PCC6803, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
PCC6803AA= PCC6803AA['Ch0..tot.Signal.intensity.']/SA
write.csv2(PCC6803AA, "Filtered/Normalized/A405/PCC6803AA.csv")

summary(PCC6803AA$Ch0..tot.Signal.intensity.)
std.error(PCC6803AA$Ch0..tot.Signal.intensity.)
sd(PCC6803AA$Ch0..tot.Signal.intensity.)

PCC6803CN = filter(PCC6803, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
SN = mean(PCC6803CN$Ch0..tot.Signal.intensity.)
summary(PCC6803CN$Ch0..tot.Signal.intensity.)

PCC6803TN = filter(PCC6803, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
PCC6803TN= PCC6803TN['Ch0..tot.Signal.intensity.']/SN
write.csv2(PCC6803TN, "Filtered/Normalized/A405/PCC6803TN.csv")

summary(PCC6803TN$Ch0..tot.Signal.intensity.)
std.error(PCC6803TN$Ch0..tot.Signal.intensity.)
sd(PCC6803TN$Ch0..tot.Signal.intensity.)

PCC6803LN = filter(PCC6803, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
PCC6803LN= PCC6803LN['Ch0..tot.Signal.intensity.']/SN
write.csv2(PCC6803LN, "Filtered/Normalized/A405/PCC6803LN.csv")

summary(PCC6803LN$Ch0..tot.Signal.intensity.)
std.error(PCC6803LN$Ch0..tot.Signal.intensity.)
sd(PCC6803LN$Ch0..tot.Signal.intensity.)

PCC6803AN = filter(PCC6803, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
PCC6803AN= PCC6803AN['Ch0..tot.Signal.intensity.']/SN
write.csv2(PCC6803AN, "Filtered/Normalized/A405/PCC6803AN.csv")

summary(PCC6803AN$Ch0..tot.Signal.intensity.)
std.error(PCC6803AN$Ch0..tot.Signal.intensity.)
sd(PCC6803AN$Ch0..tot.Signal.intensity.)

###371

P371CA = filter(P371, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
PA = mean(P371CA$Ch0..tot.Signal.intensity.)

P371TA = filter(P371, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
P371TA= P371TA['Ch0..tot.Signal.intensity.']/PA
write.csv2(P371TA, "Filtered/Normalized/A405/P371TA.csv")

summary(P371TA$Ch0..tot.Signal.intensity.)
std.error(P371TA$Ch0..tot.Signal.intensity.)
sd(P371TA$Ch0..tot.Signal.intensity.)

P371LA = filter(P371, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
P371LA= P371LA['Ch0..tot.Signal.intensity.']/PA
write.csv2(P371LA, "Filtered/Normalized/A405/P371LA.csv")

summary(P371LA$Ch0..tot.Signal.intensity.)
std.error(P371LA$Ch0..tot.Signal.intensity.)
sd(P371LA$Ch0..tot.Signal.intensity.)


P371AA = filter(P371, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
P371AA= P371AA['Ch0..tot.Signal.intensity.']/PA
write.csv2(P371AA, "Filtered/Normalized/A405/P371AA.csv")

summary(P371AA$Ch0..tot.Signal.intensity.)
std.error(P371AA$Ch0..tot.Signal.intensity.)
sd(P371AA$Ch0..tot.Signal.intensity.)

P371CN = filter(P371, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
PN = mean(P371CN$Ch0..tot.Signal.intensity.)
summary(P371CN$Ch0..tot.Signal.intensity.)

P371TN = filter(P371, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
P371TN= P371TN['Ch0..tot.Signal.intensity.']/PN
write.csv2(P371TN, "Filtered/Normalized/A405/P371TN.csv")

summary(P371TN$Ch0..tot.Signal.intensity.)
std.error(P371TN$Ch0..tot.Signal.intensity.)
sd(P371TN$Ch0..tot.Signal.intensity.)

P371LN = filter(P371, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
P371LN= P371LN['Ch0..tot.Signal.intensity.']/PN
write.csv2(P371LN, "Filtered/Normalized/A405/P371LN.csv")

summary(P371LN$Ch0..tot.Signal.intensity.)
std.error(P371LN$Ch0..tot.Signal.intensity.)
sd(P371LN$Ch0..tot.Signal.intensity.)

P371AN = filter(P371, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
P371AN= P371AN['Ch0..tot.Signal.intensity.']/PN
write.csv2(P371AN, "Filtered/Normalized/A405/P371AN.csv")

summary(P371AN$Ch0..tot.Signal.intensity.)
std.error(P371AN$Ch0..tot.Signal.intensity.)
sd(P371AN$Ch0..tot.Signal.intensity.)

###WT

WTCA = filter(WT, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
WA = mean(WTCA$Ch0..tot.Signal.intensity.)

WTTA = filter(WT, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
WTTA= WTTA['Ch0..tot.Signal.intensity.']/WA
write.csv2(WTTA, "Filtered/Normalized/A405/WTTA.csv")

summary(WTTA$Ch0..tot.Signal.intensity.)
std.error(WTTA$Ch0..tot.Signal.intensity.)
sd(WTTA$Ch0..tot.Signal.intensity.)

WTLA = filter(WT, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
WTLA= WTLA['Ch0..tot.Signal.intensity.']/WA
write.csv2(WTLA, "Filtered/Normalized/A405/WTLA.csv")

summary(WTLA$Ch0..tot.Signal.intensity.)
std.error(WTLA$Ch0..tot.Signal.intensity.)
sd(WTLA$Ch0..tot.Signal.intensity.)

WTAA = filter(WT, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
WTAA= WTAA['Ch0..tot.Signal.intensity.']/WA
write.csv2(WTAA, "Filtered/Normalized/A405/WTAA.csv")

summary(WTAA$Ch0..tot.Signal.intensity.)
std.error(WTAA$Ch0..tot.Signal.intensity.)
sd(WTAA$Ch0..tot.Signal.intensity.)

WTCN = filter(WT, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
WN = mean(WTCN$Ch0..tot.Signal.intensity.)

WTTN = filter(WT, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
WTTN= WTTN['Ch0..tot.Signal.intensity.']/WN
write.csv2(WTTN, "Filtered/Normalized/A405/WTTN.csv")

summary(WTTN$Ch0..tot.Signal.intensity.)
std.error(WTTN$Ch0..tot.Signal.intensity.)
sd(WTTN$Ch0..tot.Signal.intensity.)

WTLN = filter(WT, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
WTLN= WTLN['Ch0..tot.Signal.intensity.']/WN
write.csv2(WTLN, "Filtered/Normalized/A405/WTLN.csv")

summary(WTLN$Ch0..tot.Signal.intensity.)
std.error(WTLN$Ch0..tot.Signal.intensity.)
sd(WTLN$Ch0..tot.Signal.intensity.)

WTAN = filter(WT, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
WTAN= WTAN['Ch0..tot.Signal.intensity.']/WN
write.csv2(WTAN, "Filtered/Normalized/A405/WTAN.csv")

summary(WTAN$Ch0..tot.Signal.intensity.)
std.error(WTAN$Ch0..tot.Signal.intensity.)
sd(WTAN$Ch0..tot.Signal.intensity.)

###Apnko

ApnkoCA = filter(Apnko, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
AA = mean(ApnkoCA$Ch0..tot.Signal.intensity.)

ApnkoTA = filter(Apnko, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
ApnkoTA= ApnkoTA['Ch0..tot.Signal.intensity.']/AA
write.csv2(ApnkoTA, "Filtered/Normalized/A405/ApnkoTA.csv")

summary(ApnkoTA$Ch0..tot.Signal.intensity.)
std.error(ApnkoTA$Ch0..tot.Signal.intensity.)
sd(ApnkoTA$Ch0..tot.Signal.intensity.)

ApnkoLA = filter(Apnko, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
ApnkoLA= ApnkoLA['Ch0..tot.Signal.intensity.']/AA
write.csv2(ApnkoLA, "Filtered/Normalized/A405/ApnkoLA.csv")

summary(ApnkoLA$Ch0..tot.Signal.intensity.)
std.error(ApnkoLA$Ch0..tot.Signal.intensity.)
sd(ApnkoLA$Ch0..tot.Signal.intensity.)

ApnkoAA = filter(Apnko, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
ApnkoAA= ApnkoAA['Ch0..tot.Signal.intensity.']/AA
write.csv2(ApnkoAA, "Filtered/Normalized/A405/ApnkoAA.csv")

summary(ApnkoAA$Ch0..tot.Signal.intensity.)
std.error(ApnkoAA$Ch0..tot.Signal.intensity.)
sd(ApnkoAA$Ch0..tot.Signal.intensity.)

ApnkoCN = filter(Apnko, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
AN = mean(ApnkoCN$Ch0..tot.Signal.intensity.)
summary(ApnkoCN$Ch0..tot.Signal.intensity.)

ApnkoTN = filter(Apnko, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
ApnkoTN= ApnkoTN['Ch0..tot.Signal.intensity.']/AN
write.csv2(ApnkoTN, "Filtered/Normalized/A405/ApnkoTN.csv")

summary(ApnkoTN$Ch0..tot.Signal.intensity.)
std.error(ApnkoTN$Ch0..tot.Signal.intensity.)
sd(ApnkoTN$Ch0..tot.Signal.intensity.)

ApnkoLN = filter(Apnko, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
ApnkoLN= ApnkoLN['Ch0..tot.Signal.intensity.']/AN
write.csv2(ApnkoLN, "Filtered/Normalized/A405/ApnkoLN.csv")

summary(ApnkoLN$Ch0..tot.Signal.intensity.)
std.error(ApnkoLN$Ch0..tot.Signal.intensity.)
sd(ApnkoLN$Ch0..tot.Signal.intensity.)

ApnkoAN = filter(Apnko, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
ApnkoAN= ApnkoAN['Ch0..tot.Signal.intensity.']/AN
write.csv2(ApnkoAN, "Filtered/Normalized/A405/ApnkoAN.csv")

summary(ApnkoAN$Ch0..tot.Signal.intensity.)
std.error(ApnkoAN$Ch0..tot.Signal.intensity.)
sd(ApnkoAN$Ch0..tot.Signal.intensity.)

###Cptdel

CptdelCA = filter(Cptdel, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
CA = mean(CptdelCA$Ch0..tot.Signal.intensity.)

CptdelTA = filter(Cptdel, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
CptdelTA= CptdelTA['Ch0..tot.Signal.intensity.']/CA
write.csv2(CptdelTA, "Filtered/Normalized/A405/CptdelTA.csv")

summary(CptdelTA$Ch0..tot.Signal.intensity.)
std.error(CptdelTA$Ch0..tot.Signal.intensity.)
sd(CptdelTA$Ch0..tot.Signal.intensity.)

CptdelLA = filter(Cptdel, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
CptdelLA= CptdelLA['Ch0..tot.Signal.intensity.']/CA
write.csv2(CptdelLA, "Filtered/Normalized/A405/CptdelLA.csv")

summary(CptdelLA$Ch0..tot.Signal.intensity.)
std.error(CptdelLA$Ch0..tot.Signal.intensity.)
sd(CptdelLA$Ch0..tot.Signal.intensity.)

CptdelAA = filter(Cptdel, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
CptdelAA= CptdelAA['Ch0..tot.Signal.intensity.']/CA
write.csv2(CptdelAA, "Filtered/Normalized/A405/CptdelAA.csv")

summary(CptdelAA$Ch0..tot.Signal.intensity.)
std.error(CptdelAA$Ch0..tot.Signal.intensity.)
sd(CptdelAA$Ch0..tot.Signal.intensity.)

CptdelCN = filter(Cptdel, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
CN = mean(CptdelCN$Ch0..tot.Signal.intensity.)
summary(CptdelCN$Ch0..tot.Signal.intensity.)

CptdelTN = filter(Cptdel, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
CptdelTN= CptdelTN['Ch0..tot.Signal.intensity.']/CN
write.csv2(CptdelTN, "Filtered/Normalized/A405/CptdelTN.csv")

summary(CptdelTN$Ch0..tot.Signal.intensity.)
std.error(CptdelTN$Ch0..tot.Signal.intensity.)
sd(CptdelTN$Ch0..tot.Signal.intensity.)

CptdelLN = filter(Cptdel, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
CptdelLN= CptdelLN['Ch0..tot.Signal.intensity.']/CN
write.csv2(CptdelLN, "Filtered/Normalized/A405/CptdelLN.csv")

summary(CptdelLN$Ch0..tot.Signal.intensity.)
std.error(CptdelLN$Ch0..tot.Signal.intensity.)
sd(CptdelLN$Ch0..tot.Signal.intensity.)

CptdelAN = filter(Cptdel, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
CptdelAN= CptdelAN['Ch0..tot.Signal.intensity.']/CN
write.csv2(CptdelAN, "Filtered/Normalized/A405/CptdelAN.csv")

summary(CptdelAN$Ch0..tot.Signal.intensity.)
std.error(CptdelAN$Ch0..tot.Signal.intensity.)
sd(CptdelAN$Ch0..tot.Signal.intensity.)

###MV

MVCA = filter(MV, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVA = mean(MVCA$Ch0..tot.Signal.intensity.)

MVTA = filter(MV, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVTA= MVTA['Ch0..tot.Signal.intensity.']/MVA
write.csv2(MVTA, "Filtered/Normalized/A405/MVTA.csv")

summary(MVTA$Ch0..tot.Signal.intensity.)
std.error(MVTA$Ch0..tot.Signal.intensity.)
sd(MVTA$Ch0..tot.Signal.intensity.)

MVLA = filter(MV, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVLA= MVLA['Ch0..tot.Signal.intensity.']/MVA
write.csv2(MVLA, "Filtered/Normalized/A405/MVLA.csv")

summary(MVLA$Ch0..tot.Signal.intensity.)
std.error(MVLA$Ch0..tot.Signal.intensity.)
sd(MVLA$Ch0..tot.Signal.intensity.)

MVAA = filter(MV, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
MVAA= MVAA['Ch0..tot.Signal.intensity.']/MVA
write.csv2(MVAA, "Filtered/Normalized/A405/MVAA.csv")

summary(MVAA$Ch0..tot.Signal.intensity.)
std.error(MVAA$Ch0..tot.Signal.intensity.)
sd(MVAA$Ch0..tot.Signal.intensity.)

MVCN = filter(MV, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
MVN = mean(MVCN$Ch0..tot.Signal.intensity.)
summary(MVCN$Ch0..tot.Signal.intensity.)

MVTN = filter(MV, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
MVTN= MVTN['Ch0..tot.Signal.intensity.']/MVN
write.csv2(MVTN, "Filtered/Normalized/A405/MVTN.csv")

summary(MVTN$Ch0..tot.Signal.intensity.)
std.error(MVTN$Ch0..tot.Signal.intensity.)
sd(MVTN$Ch0..tot.Signal.intensity.)

MVLN = filter(MV, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
MVLN= MVLN['Ch0..tot.Signal.intensity.']/MVN
write.csv2(MVLN, "Filtered/Normalized/A405/MVLN.csv")

summary(MVLN$Ch0..tot.Signal.intensity.)
std.error(MVLN$Ch0..tot.Signal.intensity.)
sd(MVLN$Ch0..tot.Signal.intensity.)

MVAN = filter(MV, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
MVAN= MVAN['Ch0..tot.Signal.intensity.']/MVN
write.csv2(MVAN, "Filtered/Normalized/A405/MVAN.csv")

summary(MVAN$Ch0..tot.Signal.intensity.)
std.error(MVAN$Ch0..tot.Signal.intensity.)
sd(MVAN$Ch0..tot.Signal.intensity.)


###dD2-2

dD2CA = filter(dD2, Feeding == "No Feed", Treatment == "A405+BODIPY", X..pixel. <= 256)
DA = mean(dD2CA$Ch0..tot.Signal.intensity.)

dD2TA = filter(dD2, Feeding == "Prop-Tyr", Treatment == "A405+BODIPY", X..pixel. <= 256)
dD2TA= dD2TA['Ch0..tot.Signal.intensity.']/DA
write.csv2(dD2TA, "Filtered/Normalized/A405/dD2TA.csv")

summary(dD2TA$Ch0..tot.Signal.intensity.)
std.error(dD2TA$Ch0..tot.Signal.intensity.)
sd(dD2TA$Ch0..tot.Signal.intensity.)

dD2LA = filter(dD2, Feeding == "Prop-Lys", Treatment == "A405+BODIPY", X..pixel. <= 256)
dD2LA= dD2LA['Ch0..tot.Signal.intensity.']/DA
write.csv2(dD2LA, "Filtered/Normalized/A405/dD2LA.csv")

summary(dD2LA$Ch0..tot.Signal.intensity.)
std.error(dD2LA$Ch0..tot.Signal.intensity.)
sd(dD2LA$Ch0..tot.Signal.intensity.)

dD2AA = filter(dD2, Feeding == "Phe-Az", Treatment == "A405+BODIPY", X..pixel. <= 256)
dD2AA= dD2AA['Ch0..tot.Signal.intensity.']/DA
write.csv2(dD2AA, "Filtered/Normalized/A405/dD2AA.csv")

summary(dD2AA$Ch0..tot.Signal.intensity.)
std.error(dD2AA$Ch0..tot.Signal.intensity.)
sd(dD2AA$Ch0..tot.Signal.intensity.)

dD2CN = filter(dD2, Feeding == "No Feed", Treatment == "No Fluorophore", X..pixel. <= 256)
DN = mean(dD2CN$Ch0..tot.Signal.intensity.)
summary(dD2CN$Ch0..tot.Signal.intensity.)

dD2TN = filter(dD2, Feeding == "Prop-Tyr", Treatment == "No Fluorophore", X..pixel. <= 256)
dD2TN= dD2TN['Ch0..tot.Signal.intensity.']/DN
write.csv2(dD2TN, "Filtered/Normalized/A405/dD2TN.csv")

summary(dD2TN$Ch0..tot.Signal.intensity.)
std.error(dD2TN$Ch0..tot.Signal.intensity.)
sd(dD2TN$Ch0..tot.Signal.intensity.)

dD2LN = filter(dD2, Feeding == "Prop-Lys", Treatment == "No Fluorophore", X..pixel. <= 256)
dD2LN= dD2LN['Ch0..tot.Signal.intensity.']/DN
write.csv2(dD2LN, "Filtered/Normalized/A405/dD2LN.csv")

summary(dD2LN$Ch0..tot.Signal.intensity.)
std.error(dD2LN$Ch0..tot.Signal.intensity.)
sd(dD2LN$Ch0..tot.Signal.intensity.)

dD2AN = filter(dD2, Feeding == "Phe-Az", Treatment == "No Fluorophore", X..pixel. <= 256)
dD2AN= dD2AN['Ch0..tot.Signal.intensity.']/DN
write.csv2(dD2AN, "Filtered/Normalized/A405/dD2AN.csv")

summary(dD2AN$Ch0..tot.Signal.intensity.)
std.error(dD2AN$Ch0..tot.Signal.intensity.)
sd(dD2AN$Ch0..tot.Signal.intensity.)

