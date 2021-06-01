#LOAD PACKAGES FROM THE PACKAGES SCRIPT
#_______________________________________________________________________

Maer = read_delim("Col_index/Maer_2.csv", 
                  ";", escape_double = FALSE, trim_ws = TRUE)
Maer$Treatment = as.character(Maer$Treatment)
Maer$Feeding = as.character(Maer$Feeding)
Maer$ID = as.character(Maer$ID)

PCC6803 = read_delim("Col_index/PCC6803.csv", 
                     ";", escape_double = FALSE, trim_ws = TRUE)
PCC6803$Treatment = as.character(PCC6803$Treatment)
PCC6803$Feeding = as.character(PCC6803$Feeding)
PCC6803$ID = as.character(PCC6803$ID)

P371 = read_delim("Col_index/P371_2.csv", 
                  ";", escape_double = FALSE, trim_ws = TRUE)
P371$Treatment = as.character(P371$Treatment)
P371$ID= as.character(P371$ID)

WT = read_delim("Col_index/WT_2.csv", 
                ";", escape_double = FALSE, trim_ws = TRUE)
WT$Treatment = as.character(WT$Treatment)
WT$Feeding = as.character(WT$Feeding)
WT$ID = as.character(WT$ID)

Apnko = read_delim("Col_index/Apnko_2.csv", 
                   ";", escape_double = FALSE, trim_ws = TRUE)
Apnko$Treatment = as.character(Apnko$Treatment)
Apnko$Feeding = as.character(Apnko$Feeding)
Apnko$ID = as.character(Apnko$ID)

Cptdel = read_delim("Col_index/Cptdel_2.csv", 
                    ";", escape_double = FALSE, trim_ws = TRUE)
Cptdel$Treatment = as.character(Cptdel$Treatment)
Cptdel$Feeding = as.character(Cptdel$Feeding)
Cptdel$ID = as.character(Cptdel$ID)

MV = read_delim("Col_index/MV_2.csv", 
                ";", escape_double = FALSE, trim_ws = TRUE)
MV$Treatment = as.character(MV$Treatment)
MV$Feeding = as.character(MV$Feeding)
MV$ID = as.character(MV$ID)

dD2 = read_delim("Col_index/dD2_2.csv", 
                 ";", escape_double = FALSE, trim_ws = TRUE)
dD2$Treatment = as.character(dD2$Treatment)
dD2$Feeding = as.character(dD2$Feeding)
dD2$ID = as.character(dD2$ID)


###___________________________Col_index Pearsons Ratios_____________________________________________________________________________________________________

MaerP = filter(Maer, Treatment == "A405+BODIPY")
MaerP$Treatment[MaerP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
MaerP$ID[MaerP$ID == "Blue/Green"] = "Peptide/Lipid" 
MaerP$ID[MaerP$ID == "Blue/Red"] = "Peptide/AF" 
MaerP$ID[MaerP$ID == "Green/Red"] = "Lipid/AF"
MaerP$Feeding[MaerP$Feeding == "No Feed"] = "Control"
MaerP = filter(MaerP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

PCC6803P = filter(PCC6803, Treatment == "A405+BODIPY")
PCC6803P$Treatment[PCC6803P$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
PCC6803P$ID[PCC6803P$ID == "Blue/Green"] = "Peptide/Lipid" 
PCC6803P$ID[PCC6803P$ID == "Blue/Red"] = "Peptide/AF" 
PCC6803P$ID[PCC6803P$ID == "Green/Red"] = "Lipid/AF"
PCC6803P$Feeding[PCC6803P$Feeding == "No Feed"] = "Control"
PCC6803P = filter(PCC6803P, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

P371P = filter(P371, Treatment == "A405+BODIPY")
P371P$Treatment[P371P$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
P371P$ID[P371P$ID == "Blue/Green"] = "Peptide/Lipid" 
P371P$ID[P371P$ID == "Blue/Red"] = "Peptide/AF" 
P371P$ID[P371P$ID == "Green/Red"] = "Lipid/AF"
P371P$Feeding[P371P$Feeding == "No Feed"] = "Control"
P371P = filter(P371P, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

WTP = filter(WT,Treatment == "A405+BODIPY")
WTP$Treatment[WTP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
WTP$ID[WTP$ID == "Blue/Green"] = "Peptide/Lipid" 
WTP$ID[WTP$ID == "Blue/Red"] = "Peptide/AF" 
WTP$ID[WTP$ID == "Green/Red"] = "Lipid/AF"
WTP$Feeding[WTP$Feeding == "No Feed"] = "Control"
WTP = filter(WTP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

ApnkoP = filter(Apnko, Treatment == "A405+BODIPY")
ApnkoP$Treatment[ApnkoP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
ApnkoP$ID[ApnkoP$ID == "Blue/Green"] = "Peptide/Lipid" 
ApnkoP$ID[ApnkoP$ID == "Blue/Red"] = "Peptide/AF" 
ApnkoP$ID[ApnkoP$ID == "Green/Red"] = "Lipid/AF"
ApnkoP$Feeding[ApnkoP$Feeding == "No Feed"] = "Control"
ApnkoP = filter(ApnkoP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

CptdelP = filter(Cptdel, Treatment == "A405+BODIPY")
CptdelP$Treatment[CptdelP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
CptdelP$ID[CptdelP$ID == "Blue/Green"] = "Peptide/Lipid" 
CptdelP$ID[CptdelP$ID == "Blue/Red"] = "Peptide/AF" 
CptdelP$ID[CptdelP$ID == "Green/Red"] = "Lipid/AF"
CptdelP$Feeding[CptdelP$Feeding == "No Feed"] = "Control"
CptdelP = filter(CptdelP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

MVP = filter(MV, Treatment == "A405+BODIPY")
MVP$Treatment[MVP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
MVP$ID[MVP$ID == "Blue/Green"] = "Peptide/Lipid" 
MVP$ID[MVP$ID == "Blue/Red"] = "Peptide/AF" 
MVP$ID[MVP$ID == "Green/Red"] = "Lipid/AF"
MVP$Feeding[MVP$Feeding == "No Feed"] = "Control"
MVP = filter(MVP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

dD2P = filter(dD2, Treatment == "A405+BODIPY")
dD2P$Treatment[dD2P$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
dD2P$ID[dD2P$ID == "Blue/Green"] = "Peptide/Lipid" 
dD2P$ID[dD2P$ID == "Blue/Red"] = "Peptide/AF" 
dD2P$ID[dD2P$ID == "Green/Red"] = "Lipid/AF"
dD2P$Feeding[dD2P$Feeding == "No Feed"] = "Control"
dD2P = filter(dD2P, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys" | Feeding == "Phe-Az" | Feeding == "Control")

### Maer

mean.MaerP.data <- MaerP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.MaerP.data

MaerPlotP = ggplot(MaerP %>%
                     group_by(Feeding, Treatment) %>%
                     mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) +
  ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5)) 

MaerPlotP

### PCC6803

mean.PCC6803P.data <- PCC6803P %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.PCC6803P.data

PCC6803PlotP = ggplot(PCC6803P %>%
                        group_by(Feeding, Treatment) %>%
                        mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) +
  ggtitle(expression(paste(italic("Synechocystis sp."), "PCC6803"))) +
  theme(plot.title = element_text(hjust = 0.5))

PCC6803PlotP

### P371

mean.P371P.data <- P371P %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.P371P.data

P371PlotP = ggplot(P371P %>%
                     group_by(Feeding, Treatment) %>%
                     mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) +
  ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) +
  theme(plot.title = element_text(hjust = 0.5))

P371PlotP

### 126/8 WT

mean.WTP.data <- WTP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.WTP.data

WTPlotP = ggplot(WTP %>%
                   group_by(Feeding, Treatment) %>%
                   mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8 WT"))) +
  theme(plot.title = element_text(hjust = 0.5))

WTPlotP

### 126/8 Apnko

mean.ApnkoP.data <- ApnkoP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.ApnkoP.data

ApnkoPlotP = ggplot(ApnkoP %>%
                      group_by(Feeding, Treatment) %>%
                      mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) +
  theme(plot.title = element_text(hjust = 0.5))

ApnkoPlotP

### 126/8 Cptdel

mean.CptdelP.data <- CptdelP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.CptdelP.data

CptdelPlotP = ggplot(CptdelP %>%
                       group_by(Feeding, Treatment) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) +
  theme(plot.title = element_text(hjust = 0.5))
CptdelPlotP

### 126/8 MV

mean.MVP.data <- MVP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.MVP.data

MVPlotP = ggplot(MVP %>%
                   group_by(Feeding, Treatment) %>%
                   mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) + 
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) +
  theme(plot.title = element_text(hjust = 0.5))

MVPlotP

### 126/8 dD2

mean.dD2P.data <- dD2P %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.dD2P.data

dD2PlotP = ggplot(dD2P %>%
                    group_by(Feeding, Treatment) %>%
                    mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = c("grey", "lightslateblue", "skyblue", "forestgreen")) + theme_test() + 
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") +
  facet_wrap(~ ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5))

dD2PlotP


#### Combined

CombinedP = ggarrange(MaerPlotP, PCC6803PlotP, P371PlotP, WTPlotP,
                       ApnkoPlotP, CptdelPlotP, MVPlotP, dD2PlotP, labels = c("A", "B", "C", "D", "E", "F", "G", "H"),
                       ncol = 4, nrow = 2, common.legend = TRUE)

CombinedP

##Without non producing strains

CombinedW = ggarrange(MaerPlotP, P371PlotP, WTPlotP, 
                      CptdelPlotP, MVPlotP, dD2PlotP,
                      labels= c("A", "B", "C", "D", "E", "F"),
                      ncol = 3, nrow = 2, common.legend = TRUE,
                      legend = "right")
CombinedW
CombinedW = annotate_figure(CombinedW, left = text_grob("Pearson colocalization coefficient", rot = 90, size = 18))
CombinedW



MaerControlBG = filter(Maer, Feeding == "No Feed" & ID == "Blue/Green")
MaerControlBG = MaerControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(MaerControlBG, "Filtered/Maer_ControlBG.csv")

MaerControlBR = filter(Maer, Feeding == "No Feed" & ID == "Blue/Red")
MaerControlBR = MaerControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerControlBR, "Filtered/Maer_ControlBR.csv")

MaerControlGR = filter(Maer, Feeding == "No Feed" & ID == "Green/Red")
MaerControlGR= MaerControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerControlGR, "Filtered/Maer_ControlGR.csv")

PCC6803ControlBG = filter(PCC6803, Feeding == "No Feed" & ID == "Blue/Green")
PCC6803ControlBG = PCC6803ControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803ControlBG, "Filtered/PCC6803_ControlBG.csv")

PCC6803ControlBR = filter(PCC6803, Feeding == "No Feed" & ID == "Blue/Red")
PCC6803ControlBR = PCC6803ControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803ControlBR, "Filtered/PCC6803_ControlBR.csv")

PCC6803ControlGR = filter(PCC6803, Feeding == "No Feed" & ID == "Green/Red")
PCC6803ControlGR= PCC6803ControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803ControlGR, "Filtered/PCC6803_ControlGR.csv")

P371ControlBG = filter(P371, Feeding == "No Feed" & ID == "Blue/Green")
P371ControlBG = P371ControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(P371ControlBG, "Filtered/P371_ControlBG.csv")

P371ControlBR = filter(P371, Feeding == "No Feed" & ID == "Blue/Red")
P371ControlBR = P371ControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(P371ControlBR, "Filtered/P371_ControlBR.csv")

P371ControlGR = filter(P371, Feeding == "No Feed" & ID == "Green/Red")
P371ControlGR= P371ControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(P371ControlGR, "Filtered/P371_ControlGR.csv")

WTControlBG = filter(WT, Feeding == "No Feed" & ID == "Blue/Green")
WTControlBG = WTControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(WTControlBG, "Filtered/WT_ControlBG.csv")

WTControlBR = filter(WT, Feeding == "No Feed" & ID == "Blue/Red")
WTControlBR = WTControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(WTControlBR, "Filtered/WT_ControlBR.csv")

WTControlGR = filter(WT, Feeding == "No Feed" & ID == "Green/Red")
WTControlGR= WTControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(WTControlGR, "Filtered/WT_ControlGR.csv")

ApnkoControlBG = filter(Apnko, Feeding == "No Feed" & ID == "Blue/Green")
ApnkoControlBG = ApnkoControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoControlBG, "Filtered/Apnko_ControlBG.csv")

ApnkoControlBR = filter(Apnko, Feeding == "No Feed" & ID == "Blue/Red")
ApnkoControlBR = ApnkoControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoControlBR, "Filtered/Apnko_ControlBR.csv")

ApnkoControlGR = filter(Apnko, Feeding == "No Feed" & ID == "Green/Red")
ApnkoControlGR= ApnkoControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoControlGR, "Filtered/Apnko_ControlGR.csv")

CptdelControlBG = filter(Cptdel, Feeding == "No Feed" & ID == "Blue/Green")
CptdelControlBG = CptdelControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelControlBG, "Filtered/Cptdel_ControlBG.csv")

CptdelControlBR = filter(Cptdel, Feeding == "No Feed" & ID == "Blue/Red")
CptdelControlBR = CptdelControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelControlBR, "Filtered/Cptdel_ControlBR.csv")

CptdelControlGR = filter(Cptdel, Feeding == "No Feed" & ID == "Green/Red")
CptdelControlGR= CptdelControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelControlGR, "Filtered/Cptdel_ControlGR.csv")

MVControlBG = filter(MV, Feeding == "No Feed" & ID == "Blue/Green")
MVControlBG = MVControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(MVControlBG, "Filtered/MV_ControlBG.csv")

MVControlBR = filter(MV, Feeding == "No Feed" & ID == "Blue/Red")
MVControlBR = MVControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(MVControlBR, "Filtered/MV_ControlBR.csv")

MVControlGR = filter(MV, Feeding == "No Feed" & ID == "Green/Red")
MVControlGR= MVControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(MVControlGR, "Filtered/MV_ControlGR.csv")

dD2ControlBG = filter(dD2, Feeding == "No Feed" & ID == "Blue/Green")
dD2ControlBG = dD2ControlBG[,c("Title","Pearson", "Treatment")]
write.csv2(dD2ControlBG, "Filtered/dD2_ControlBG.csv")

dD2ControlBR = filter(dD2, Feeding == "No Feed" & ID == "Blue/Red")
dD2ControlBR = dD2ControlBR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2ControlBR, "Filtered/dD2_ControlBR.csv")

dD2ControlGR = filter(MV, Feeding == "No Feed" & ID == "Green/Red")
dD2ControlGR= dD2ControlGR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2ControlGR, "Filtered/dD2_ControlGR.csv")

MaerTyrBG = filter(Maer, Feeding == "Prop-Tyr" & ID == "Blue/Green")
MaerTyrBG = MaerTyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(MaerTyrBG, "Filtered/Maer_TyrBG.csv")

MaerTyrBR = filter(Maer, Feeding == "Prop-Tyr" & ID == "Blue/Red")
MaerTyrBR = MaerTyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerTyrBR, "Filtered/Maer_TyrBR.csv")

MaerTyrGR = filter(Maer, Feeding == "Prop-Tyr" & ID == "Green/Red")
MaerTyrGR= MaerTyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerTyrGR, "Filtered/Maer_TyrGR.csv")

PCC6803TyrBG = filter(PCC6803, Feeding == "Prop-Tyr" & ID == "Blue/Green")
PCC6803TyrBG = PCC6803TyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803TyrBG, "Filtered/PCC6803_TyrBG.csv")

PCC6803TyrBR = filter(PCC6803, Feeding == "Prop-Tyr" & ID == "Blue/Red")
PCC6803TyrBR = PCC6803TyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803TyrBR, "Filtered/PCC6803_TyrBR.csv")

PCC6803TyrGR = filter(PCC6803, Feeding == "Prop-Tyr" & ID == "Green/Red")
PCC6803TyrGR= PCC6803TyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803TyrGR, "Filtered/PCC6803_TyrGR.csv")

P371TyrBG = filter(P371, Feeding == "Prop-Tyr" & ID == "Blue/Green")
P371TyrBG = P371TyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(P371TyrBG, "Filtered/P371_TyrBG.csv")

P371TyrBR = filter(P371, Feeding == "Prop-Tyr" & ID == "Blue/Red")
P371TyrBR = P371TyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(P371TyrBR, "Filtered/P371_TyrBR.csv")

P371TyrGR = filter(P371, Feeding == "Prop-Tyr" & ID == "Green/Red")
P371TyrGR= P371TyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(P371TyrGR, "Filtered/P371_TyrGR.csv")

WTTyrBG = filter(WT, Feeding == "Prop-Tyr" & ID == "Blue/Green")
WTTyrBG = WTTyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(WTTyrBG, "Filtered/WT_TyrBG.csv")

WTTyrBR = filter(WT, Feeding == "Prop-Tyr" & ID == "Blue/Red")
WTTyrBR = WTTyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(WTTyrBR, "Filtered/WT_TyrBR.csv")

WTTyrGR = filter(WT, Feeding == "Prop-Tyr" & ID == "Green/Red")
WTTyrGR= WTTyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(WTTyrGR, "Filtered/WT_TyrGR.csv")

ApnkoTyrBG = filter(Apnko, Feeding == "Prop-Tyr" & ID == "Blue/Green")
ApnkoTyrBG = ApnkoTyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoTyrBG, "Filtered/Apnko_TyrBG.csv")

ApnkoTyrBR = filter(Apnko, Feeding == "Prop-Tyr" & ID == "Blue/Red")
ApnkoTyrBR = ApnkoTyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoTyrBR, "Filtered/Apnko_TyrBR.csv")

ApnkoTyrGR = filter(Apnko, Feeding == "Prop-Tyr" & ID == "Green/Red")
ApnkoTyrGR= ApnkoTyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoTyrGR, "Filtered/Apnko_TyrGR.csv")

CptdelTyrBG = filter(Cptdel, Feeding == "Prop-Tyr" & ID == "Blue/Green")
CptdelTyrBG = CptdelTyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelTyrBG, "Filtered/Cptdel_TyrBG.csv")

CptdelTyrBR = filter(Cptdel, Feeding == "Prop-Tyr" & ID == "Blue/Red")
CptdelTyrBR = CptdelTyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelTyrBR, "Filtered/Cptdel_TyrBR.csv")

CptdelTyrGR = filter(Cptdel, Feeding == "Prop-Tyr" & ID == "Green/Red")
CptdelTyrGR= CptdelTyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelTyrGR, "Filtered/Cptdel_TyrGR.csv")

MVTyrBG = filter(MV, Feeding == "Prop-Tyr" & ID == "Blue/Green")
MVTyrBG = MVTyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(MVTyrBG, "Filtered/MV_TyrBG.csv")

MVTyrBR = filter(MV, Feeding == "Prop-Tyr" & ID == "Blue/Red")
MVTyrBR = MVTyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(MVTyrBR, "Filtered/MV_TyrBR.csv")

MVTyrGR = filter(MV, Feeding == "Prop-Tyr" & ID == "Green/Red")
MVTyrGR= MVTyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(MVTyrGR, "Filtered/MV_TyrGR.csv")

dD2TyrBG = filter(dD2, Feeding == "Prop-Tyr" & ID == "Blue/Green")
dD2TyrBG = dD2TyrBG[,c("Title","Pearson", "Treatment")]
write.csv2(dD2TyrBG, "Filtered/dD2_TyrBG.csv")

dD2TyrBR = filter(dD2, Feeding == "Prop-Tyr" & ID == "Blue/Red")
dD2TyrBR = dD2TyrBR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2TyrBR, "Filtered/dD2_TyrBR.csv")

dD2TyrGR = filter(dD2, Feeding == "Prop-Tyr" & ID == "Green/Red")
dD2TyrGR= dD2TyrGR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2TyrGR, "Filtered/dD2_TyrGR.csv")

MaerLysBG = filter(Maer, Feeding == "Prop-Lys" & ID == "Blue/Green")
MaerLysBG = MaerLysBG[,c("Title","Pearson", "Treatment")]
write.csv2(MaerLysBG, "Filtered/Maer_LysBG.csv")

MaerLysBR = filter(Maer, Feeding == "Prop-Lys" & ID == "Blue/Red")
MaerLysBR = MaerLysBR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerLysBR, "Filtered/Maer_LysBR.csv")

MaerLysGR = filter(Maer, Feeding == "Prop-Lys" & ID == "Green/Red")
MaerLysGR= MaerLysGR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerLysGR, "Filtered/Maer_LysGR.csv")

PCC6803LysBG = filter(PCC6803, Feeding == "Prop-Lys" & ID == "Blue/Green")
PCC6803LysBG = PCC6803LysBG[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803LysBG, "Filtered/PCC6803_LysBG.csv")

PCC6803LysBR = filter(PCC6803, Feeding == "Prop-Lys" & ID == "Blue/Red")
PCC6803LysBR = PCC6803LysBR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803LysBR, "Filtered/PCC6803_LysBR.csv")

PCC6803LysGR = filter(PCC6803, Feeding == "Prop-Lys" & ID == "Green/Red")
PCC6803LysGR= PCC6803LysGR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803LysGR, "Filtered/PCC6803_LysGR.csv")

P371LysBG = filter(P371, Feeding == "Prop-Lys" & ID == "Blue/Green")
P371LysBG = P371LysBG[,c("Title","Pearson", "Treatment")]
write.csv2(P371LysBG, "Filtered/P371_LysBG.csv")

P371LysBR = filter(P371, Feeding == "Prop-Lys" & ID == "Blue/Red")
P371LysBR = P371LysBR[,c("Title","Pearson", "Treatment")]
write.csv2(P371LysBR, "Filtered/P371_LysBR.csv")

P371LysGR = filter(P371, Feeding == "Prop-Lys" & ID == "Green/Red")
P371LysGR= P371LysGR[,c("Title","Pearson", "Treatment")]
write.csv2(P371LysGR, "Filtered/P371_LysGR.csv")

WTLysBG = filter(WT, Feeding == "Prop-Lys" & ID == "Blue/Green")
WTLysBG = WTLysBG[,c("Title","Pearson", "Treatment")]
write.csv2(WTLysBG, "Filtered/WT_LysBG.csv")

WTLysBR = filter(WT, Feeding == "Prop-Lys" & ID == "Blue/Red")
WTLysBR = WTLysBR[,c("Title","Pearson", "Treatment")]
write.csv2(WTLysBR, "Filtered/WT_LysBR.csv")

WTLysGR = filter(WT, Feeding == "Prop-Lys" & ID == "Green/Red")
WTLysGR= WTLysGR[,c("Title","Pearson", "Treatment")]
write.csv2(WTLysGR, "Filtered/WT_LysGR.csv")

ApnkoLysBG = filter(Apnko, Feeding == "Prop-Lys" & ID == "Blue/Green")
ApnkoLysBG = ApnkoLysBG[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoLysBG, "Filtered/Apnko_LysBG.csv")

ApnkoLysBR = filter(Apnko, Feeding == "Prop-Lys" & ID == "Blue/Red")
ApnkoLysBR = ApnkoLysBR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoLysBR, "Filtered/Apnko_LysBR.csv")

ApnkoLysGR = filter(Apnko, Feeding == "Prop-Lys" & ID == "Green/Red")
ApnkoLysGR= ApnkoLysGR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoLysGR, "Filtered/Apnko_LysGR.csv")

CptdelLysBG = filter(Cptdel, Feeding == "Prop-Lys" & ID == "Blue/Green")
CptdelLysBG = CptdelLysBG[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelLysBG, "Filtered/Cptdel_LysBG.csv")

CptdelLysBR = filter(Cptdel, Feeding == "Prop-Lys" & ID == "Blue/Red")
CptdelLysBR = CptdelLysBR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelLysBR, "Filtered/Cptdel_LysBR.csv")

CptdelLysGR = filter(Cptdel, Feeding == "Prop-Lys" & ID == "Green/Red")
CptdelLysGR= CptdelLysGR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelLysGR, "Filtered/Cptdel_LysGR.csv")

MVLysBG = filter(MV, Feeding == "Prop-Lys" & ID == "Blue/Green")
MVLysBG = MVLysBG[,c("Title","Pearson", "Treatment")]
write.csv2(MVLysBG, "Filtered/MV_LysBG.csv")

MVLysBR = filter(MV, Feeding == "Prop-Lys" & ID == "Blue/Red")
MVLysBR = MVLysBR[,c("Title","Pearson", "Treatment")]
write.csv2(MVLysBR, "Filtered/MV_LysBR.csv")

MVLysGR = filter(MV, Feeding == "Prop-Lys" & ID == "Green/Red")
MVLysGR= MVLysGR[,c("Title","Pearson", "Treatment")]
write.csv2(MVLysGR, "Filtered/MV_LysGR.csv")

dD2LysBG = filter(dD2, Feeding == "Prop-Lys" & ID == "Blue/Green")
dD2LysBG = dD2LysBG[,c("Title","Pearson", "Treatment")]
write.csv2(dD2LysBG, "Filtered/dD2_LysBG.csv")

dD2LysBR = filter(dD2, Feeding == "Prop-Lys" & ID == "Blue/Red")
dD2LysBR = dD2LysBR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2LysBR, "Filtered/dD2_LysBR.csv")

dD2LysGR = filter(dD2, Feeding == "Prop-Lys" & ID == "Green/Red")
dD2LysGR= dD2LysGR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2LysGR, "Filtered/dD2_LysGR.csv")

MaerAzBG = filter(Maer, Feeding == "Phe-Az" & ID == "Blue/Green")
MaerAzBG = MaerAzBG[,c("Title","Pearson", "Treatment")]
write.csv2(MaerAzBG, "Filtered/Maer_AzBG.csv")

MaerAzBR = filter(Maer, Feeding == "Phe-Az" & ID == "Blue/Red")
MaerAzBR = MaerAzBR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerAzBR, "Filtered/Maer_AzBR.csv")

MaerAzGR = filter(Maer, Feeding == "Phe-Az" & ID == "Green/Red")
MaerAzGR= MaerAzGR[,c("Title","Pearson", "Treatment")]
write.csv2(MaerAzGR, "Filtered/Maer_AzGR.csv")

PCC6803AzBG = filter(PCC6803, Feeding == "Phe-Az" & ID == "Blue/Green")
PCC6803AzBG = PCC6803AzBG[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803AzBG, "Filtered/PCC6803_AzBG.csv")

PCC6803AzBR = filter(PCC6803, Feeding == "Phe-Az" & ID == "Blue/Red")
PCC6803AzBR = PCC6803AzBR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803AzBR, "Filtered/PCC6803_AzBR.csv")

PCC6803AzGR = filter(PCC6803, Feeding == "Phe-Az" & ID == "Green/Red")
PCC6803AzGR= PCC6803AzGR[,c("Title","Pearson", "Treatment")]
write.csv2(PCC6803AzGR, "Filtered/PCC6803_AzGR.csv")

P371AzBG = filter(P371, Feeding == "Phe-Az" & ID == "Blue/Green")
P371AzBG = P371AzBG[,c("Title","Pearson", "Treatment")]
write.csv2(P371AzBG, "Filtered/P371_AzBG.csv")

P371AzBR = filter(P371, Feeding == "Phe-Az" & ID == "Blue/Red")
P371AzBR = P371AzBR[,c("Title","Pearson", "Treatment")]
write.csv2(P371AzBR, "Filtered/P371_AzBR.csv")

P371AzGR = filter(P371, Feeding == "Phe-Az" & ID == "Green/Red")
P371AzGR= P371AzGR[,c("Title","Pearson", "Treatment")]
write.csv2(P371AzGR, "Filtered/P371_AzGR.csv")

WTAzBG = filter(WT, Feeding == "Phe-Az" & ID == "Blue/Green")
WTAzBG = WTAzBG[,c("Title","Pearson", "Treatment")]
write.csv2(WTAzBG, "Filtered/WT_AzBG.csv")

WTAzBR = filter(WT, Feeding == "Phe-Az" & ID == "Blue/Red")
WTAzBR = WTAzBR[,c("Title","Pearson", "Treatment")]
write.csv2(WTAzBR, "Filtered/WT_AzBR.csv")

WTAzGR = filter(WT, Feeding == "Phe-Az" & ID == "Green/Red")
WTAzGR= WTAzGR[,c("Title","Pearson", "Treatment")]
write.csv2(WTAzGR, "Filtered/WT_AzGR.csv")

ApnkoAzBG = filter(Apnko, Feeding == "Phe-Az" & ID == "Blue/Green")
ApnkoAzBG = ApnkoAzBG[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoAzBG, "Filtered/Apnko_AzBG.csv")

ApnkoAzBR = filter(Apnko, Feeding == "Phe-Az" & ID == "Blue/Red")
ApnkoAzBR = ApnkoAzBR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoAzBR, "Filtered/Apnko_AzBR.csv")

ApnkoAzGR = filter(Apnko, Feeding == "Phe-Az" & ID == "Green/Red")
ApnkoAzGR= ApnkoAzGR[,c("Title","Pearson", "Treatment")]
write.csv2(ApnkoAzGR, "Filtered/Apnko_AzGR.csv")

CptdelAzBG = filter(Cptdel, Feeding == "Phe-Az" & ID == "Blue/Green")
CptdelAzBG = CptdelAzBG[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelAzBG, "Filtered/Cptdel_AzBG.csv")

CptdelAzBR = filter(Cptdel, Feeding == "Phe-Az" & ID == "Blue/Red")
CptdelAzBR = CptdelAzBR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelAzBR, "Filtered/Cptdel_AzBR.csv")

CptdelAzGR = filter(Cptdel, Feeding == "Phe-Az" & ID == "Green/Red")
CptdelAzGR= CptdelAzGR[,c("Title","Pearson", "Treatment")]
write.csv2(CptdelAzGR, "Filtered/Cptdel_AzGR.csv")

MVAzBG = filter(MV, Feeding == "Phe-Az" & ID == "Blue/Green")
MVAzBG = MVAzBG[,c("Title","Pearson", "Treatment")]
write.csv2(MVAzBG, "Filtered/MV_AzBG.csv")

MVAzBR = filter(MV, Feeding == "Phe-Az" & ID == "Blue/Red")
MVAzBR = MVAzBR[,c("Title","Pearson", "Treatment")]
write.csv2(MVAzBR, "Filtered/MV_AzBR.csv")

MVAzGR = filter(MV, Feeding == "Phe-Az" & ID == "Green/Red")
MVAzGR= MVAzGR[,c("Title","Pearson", "Treatment")]
write.csv2(MVAzGR, "Filtered/MV_AzGR.csv")

dD2AzBG = filter(dD2, Feeding == "Phe-Az" & ID == "Blue/Green")
dD2AzBG = dD2AzBG[,c("Title","Pearson", "Treatment")]
write.csv2(dD2AzBG, "Filtered/dD2_AzBG.csv")

dD2AzBR = filter(dD2, Feeding == "Phe-Az" & ID == "Blue/Red")
dD2AzBR = dD2AzBR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2AzBR, "Filtered/dD2_AzBR.csv")

dD2AzGR = filter(dD2, Feeding == "Phe-Az" & ID == "Green/Red")
dD2AzGR= dD2AzGR[,c("Title","Pearson", "Treatment")]
write.csv2(dD2AzGR, "Filtered/dD2_AzGR.csv")


## Only when the labeling with A405 and BODIPY is significant

## Phe-Az does not react with A405 azide, the only blue fluorophore at our disposal for labeling modified peptides in the blue spectra 

###___________________________Col_index Pearsons Ratios_____________________________________________________________________________________________________

MaerP = filter(Maer, Treatment == "A405+BODIPY")
MaerP$Treatment[MaerP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
MaerP$ID[MaerP$ID == "Blue/Green"] = "Peptide/Lipid" 
MaerP$ID[MaerP$ID == "Blue/Red"] = "Peptide/AF" 
MaerP$ID[MaerP$ID == "Green/Red"] = "Lipid/AF"
MaerP$Feeding[MaerP$Feeding == "No Feed"] = "Control"
MaerP = subset.data.frame(MaerP, ID == "Lipid/AF" |
                             ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                             ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                             ID == "Peptide/Lipid" & Feeding == "Prop-Lys" | 
                             ID == "Peptide/Lipid" & Feeding == "Prop-Tyr")
#MaerPO = filter(Maer, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys")

PCC6803P = filter(PCC6803, Treatment == "A405+BODIPY")
PCC6803P$Treatment[PCC6803P$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
PCC6803P$ID[PCC6803P$ID == "Blue/Green"] = "Peptide/Lipid" 
PCC6803P$ID[PCC6803P$ID == "Blue/Red"] = "Peptide/AF" 
PCC6803P$ID[PCC6803P$ID == "Green/Red"] = "Lipid/AF"
PCC6803P$Feeding[PCC6803P$Feeding == "No Feed"] = "Control"
PCC6803P = subset.data.frame(PCC6803P, ID == "Lipid/AF" |
                            ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                            ID == "Peptide/Lipid" & Feeding == "Prop-Lys" | 
                            ID == "Peptide/Lipid" & Feeding == "Prop-Tyr")
#PCC6803P = filter(PCC6803P, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys")

P371P = filter(P371, Treatment == "A405+BODIPY")
P371P$Treatment[P371P$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
P371P$ID[P371P$ID == "Blue/Green"] = "Peptide/Lipid" 
P371P$ID[P371P$ID == "Blue/Red"] = "Peptide/AF" 
P371P$ID[P371P$ID == "Green/Red"] = "Lipid/AF"
P371P$Feeding[P371P$Feeding == "No Feed"] = "Control"
P371P = subset.data.frame(P371P, ID == "Lipid/AF" & Feeding == "Control" |
                            ID == "Lipid/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                            ID == "Peptide/Lipid" & Feeding == "Prop-Lys")
#P371P = filter(P371P, Feeding == "Prop-Lys")

WTP = filter(WT,Treatment == "A405+BODIPY")
WTP$Treatment[WTP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
WTP$ID[WTP$ID == "Blue/Green"] = "Peptide/Lipid" 
WTP$ID[WTP$ID == "Blue/Red"] = "Peptide/AF" 
WTP$ID[WTP$ID == "Green/Red"] = "Lipid/AF"
WTP$Feeding[WTP$Feeding == "No Feed"] = "Control"
WTP = subset.data.frame(WTP, ID == "Lipid/AF" |
                            ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                            ID == "Peptide/Lipid" & Feeding == "Prop-Lys" | 
                            ID == "Peptide/Lipid" & Feeding == "Prop-Tyr")
#WTP = filter(WTP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys")

ApnkoP = filter(Apnko, Treatment == "A405+BODIPY")
ApnkoP$Treatment[ApnkoP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
ApnkoP$ID[ApnkoP$ID == "Blue/Green"] = "Peptide/Lipid" 
ApnkoP$ID[ApnkoP$ID == "Blue/Red"] = "Peptide/AF" 
ApnkoP$ID[ApnkoP$ID == "Green/Red"] = "Lipid/AF"
ApnkoP$Feeding[ApnkoP$Feeding == "No Feed"] = "Control"
ApnkorP = subset.data.frame(ApnkoP, ID == "Lipid/AF" |
                            ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                            ID == "Peptide/Lipid" & Feeding == "Prop-Lys" | 
                            ID == "Peptide/Lipid" & Feeding == "Prop-Tyr")
#ApnkoP = filter(ApnkoP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys")

CptdelP = filter(Cptdel, Treatment == "A405+BODIPY")
CptdelP$Treatment[CptdelP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
CptdelP$ID[CptdelP$ID == "Blue/Green"] = "Peptide/Lipid" 
CptdelP$ID[CptdelP$ID == "Blue/Red"] = "Peptide/AF" 
CptdelP$ID[CptdelP$ID == "Green/Red"] = "Lipid/AF"
CptdelP$Feeding[CptdelP$Feeding == "No Feed"] = "Control"
CptdelP = subset.data.frame(CptdelP, ID == "Lipid/AF" |
                            ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                            ID == "Peptide/Lipid" & Feeding == "Prop-Lys" | 
                            ID == "Peptide/Lipid" & Feeding == "Prop-Tyr")
#CptdelP = filter(CptdelP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys")

MVP = filter(MV, Treatment == "A405+BODIPY")
MVP$Treatment[MVP$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
MVP$ID[MVP$ID == "Blue/Green"] = "Peptide/Lipid" 
MVP$ID[MVP$ID == "Blue/Red"] = "Peptide/AF" 
MVP$ID[MVP$ID == "Green/Red"] = "Lipid/AF"
MVP$Feeding[MVP$Feeding == "No Feed"] = "Control"
MVP = subset.data.frame(MVP, ID == "Lipid/AF" |
                            ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                            ID == "Peptide/Lipid" & Feeding == "Prop-Lys" | 
                            ID == "Peptide/Lipid" & Feeding == "Prop-Tyr")
#MVP = filter(MVP, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys")

dD2P = filter(dD2, Treatment == "A405+BODIPY")
dD2P$Treatment[dD2P$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
dD2P$ID[dD2P$ID == "Blue/Green"] = "Peptide/Lipid" 
dD2P$ID[dD2P$ID == "Blue/Red"] = "Peptide/AF" 
dD2P$ID[dD2P$ID == "Green/Red"] = "Lipid/AF"
dD2P$Feeding[dD2P$Feeding == "No Feed"] = "Control"
dD2P = subset.data.frame(dD2P, ID == "Lipid/AF" & Feeding == "Control" |
                           ID == "Lipid/AF" & Feeding == "Prop-Tyr" |
                           ID == "Lipid/AF" & Feeding == "Prop-Lys" |
                           ID == "Peptide/AF" & Feeding == "Prop-Lys" |
                           ID == "Peptide/AF" & Feeding == "Prop-Tyr" |
                           ID == "Peptide/Lipid" & Feeding == "Prop-Lys" | 
                           ID == "Peptide/Lipid" & Feeding == "Prop-Tyr")
                           
#dD2P = filter(dD2P, Feeding == "Prop-Tyr" | Feeding == "Prop-Lys")

Colors = c("Control" = "grey", "Phe-Az" = "lightslateblue", "Prop-Lys" = "skyblue", "Prop-Tyr" = "forestgreen")

### Maer

mean.MaerP.data <- MaerP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.MaerP.data

MaerPlotP = ggplot(MaerP %>%
                     group_by(Feeding, ID) %>%
                     mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5)) +
  theme(legend.title = element_text(size = 20),
        legend.text = element_text(size = 18),
        legend.background = element_rect(fill="white",
                                         size=0.5, linetype="solid", 
                                         colour ="black"))

MaerPlotP

### PCC6803

mean.PCC6803P.data <- PCC6803P %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.PCC6803P.data

PCC6803PlotP = ggplot(PCC6803P %>%
                        group_by(Feeding, ID) %>%
                        mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle(expression(paste(italic("Synechocystis sp."), "PCC6803"))) +
  theme(plot.title = element_text(hjust = 0.5))

PCC6803PlotP

### P371

mean.P371P.data <- P371P %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.P371P.data

P371PlotP = ggplot(P371P %>%
                     group_by(Feeding, ID) %>%
                     mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) +
  theme(plot.title = element_text(hjust = 0.5))

P371PlotP

### 126/8 WT

mean.WTP.data <- WTP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.WTP.data

WTPlotP = ggplot(WTP %>%
                   group_by(Feeding, ID) %>%
                   mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8 WT"))) +
  theme(plot.title = element_text(hjust = 0.5))

WTPlotP

### 126/8 Apnko

mean.ApnkoP.data <- ApnkoP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.ApnkoP.data

ApnkoPlotP = ggplot(ApnkoP %>%
                      group_by(Feeding, ID) %>%
                      mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = ) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) +
  theme(plot.title = element_text(hjust = 0.5))

ApnkoPlotP

### 126/8 Cptdel

mean.CptdelP.data <- CptdelP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.CptdelP.data

CptdelPlotP = ggplot(CptdelP %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) +
  theme(plot.title = element_text(hjust = 0.5))
CptdelPlotP

### 126/8 MV

mean.MVP.data <- MVP %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.MVP.data

MVPlotP = ggplot(MVP %>%
                   group_by(Feeding, ID) %>%
                   mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) +
  theme(plot.title = element_text(hjust = 0.5))

MVPlotP

### 126/8 dD2

mean.dD2P.data <- dD2P %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.dD2P.data

dD2PlotP = ggplot(dD2P %>%
                    group_by(Feeding, ID) %>%
                    mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.text.x = element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5))

dD2PlotP

CombinedS = ggarrange(MaerPlotP, 
                      P371PlotP, #WTPlotP, 
                      CptdelPlotP, #MVPlotP, 
                      dD2PlotP,
                      labels= c("A", "B", "C", "D", "E", "F"),
                      ncol = 2, nrow = 2, common.legend = TRUE,
                      legend = "bottom") 

CombinedS =  annotate_figure(CombinedS, left = text_grob("Pearson colocalization coefficient", rot = 90, size = 18))

CombinedS
