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

## Only when the labeling with A405 and BODIPY is significant, plus A488 against AF

## Phe-Az does not react with A405 azide, the only blue fluorophore at our disposal for labeling modified peptides in the blue spectra 

###___________________________Col_index Pearsons Ratios_____________________________________________________________________________________________________

MaerP405 = filter(Maer, Treatment == "A405+BODIPY")
MaerP405$ID[MaerP405$ID == "Blue/Green"] = "Peptide-A405/Lipid" 
MaerP405$ID[MaerP405$ID == "Blue/Red"] = "Peptide-A405/AF" 
MaerP405$ID[MaerP405$ID == "Green/Red"] = "Lipid/AF"
MaerP405$Feeding[MaerP405$Feeding == "No Feed"] = "Control"
MaerP405 = subset.data.frame(MaerP405, ID == "Lipid/AF" & Feeding == "Phe-Az" |
                             ID == "Lipid/AF" & Feeding == "Prop-Lys" |
                             ID == "Lipid/AF" & Feeding == "Prop-Tyr" |   
                             ID == "Peptide-A405/AF" & Feeding == "Prop-Lys" |
                             ID == "Peptide-A405/AF" & Feeding == "Prop-Tyr" |
                             ID == "Peptide-A405/Lipid" & Feeding == "Prop-Lys" | 
                             ID == "Peptide-A405/Lipid" & Feeding == "Prop-Tyr")
MaerP488 = filter(Maer, Treatment == "A488+A405")
MaerP488$Treatment[MaerP488$Treatment == "A488+A405"] = "A488"
MaerP488$ID[MaerP488$ID == "Blue/Green"] = "Peptide/Lipid" 
MaerP488$ID[MaerP488$ID == "Blue/Red"] = "Peptide-A488/AF" 
MaerP488$ID[MaerP488$ID == "Green/Red"] = "Peptide-A488/AF"
MaerP488$Feeding[MaerP488$Feeding == "No Feed"] = "Control"
MaerP488 = subset.data.frame(MaerP488,
                              ID == "Peptide-A488/AF" & Feeding == "Phe-Az" |
                              ID == "Peptide-A488/AF" & Feeding == "Prop-Lys" |
                              ID == "Peptide-A488/AF" & Feeding == "Prop-Tyr")
MaerP = rbind(MaerP405, MaerP488)


P371P405 = filter(P371, Treatment == "A405+BODIPY")
P371P405$ID[P371P405$ID == "Blue/Green"] = "Peptide-A405/Lipid" 
P371P405$ID[P371P405$ID == "Blue/Red"] = "Peptide-A405/AF" 
P371P405$ID[P371P405$ID == "Green/Red"] = "Lipid/AF"
P371P405$Feeding[P371P405$Feeding == "No Feed"] = "Control"
P371P405 = subset.data.frame(P371P405, ID == "Lipid/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide-A405/AF" & Feeding == "Prop-Lys" |
                            ID == "Peptide-A405/AF" & Feeding == "Prop-Tyr" |
                            ID == "Peptide-A405/Lipid" & Feeding == "Prop-Lys")
P371P488 = filter(P371, Treatment == "A488+A405")
P371P488$Treatment[P371P488$Treatment == "A488+A405"] = "A488"
P371P488$ID[P371P488$ID == "Blue/Green"] = "Peptide/Lipid" 
P371P488$ID[P371P488$ID == "Blue/Red"] = "Peptide/AF" 
P371P488$ID[P371P488$ID == "Green/Red"] = "Peptide-A488/AF"
P371P488$Feeding[P371P488$Feeding == "No Feed"] = "Control"
P371P488 = subset.data.frame(P371P488,
                              ID == "Peptide-A488/AF" & Feeding == "Phe-Az" |
                              ID == "Peptide-A488/AF" & Feeding == "Prop-Lys" |
                              ID == "Peptide-A488/AF" & Feeding == "Prop-Tyr")
P371P = rbind(P371P405, P371P488)

CptdelP405 = filter(Cptdel, Treatment == "A405+BODIPY")
CptdelP405$ID[CptdelP405$ID == "Blue/Green"] = "Peptide-A405/Lipid" 
CptdelP405$ID[CptdelP405$ID == "Blue/Red"] = "Peptide-A405/AF" 
CptdelP405$ID[CptdelP405$ID == "Green/Red"] = "Lipid/AF"
CptdelP405$Feeding[CptdelP405$Feeding == "No Feed"] = "Control"
CptdelP405 = subset.data.frame(CptdelP405, 
                               ID == "Lipid/AF" & Feeding == "Phe-Az" |
                               ID == "Lipid/AF" & Feeding == "Prop-Lys" |
                               ID == "Lipid/AF" & Feeding == "Prop-Tyr" |
                               ID == "Peptide-A405/AF" & Feeding == "Prop-Lys" |
                               ID == "Peptide-A405/AF" & Feeding == "Prop-Tyr" |
                               ID == "Peptide-A405/Lipid" & Feeding == "Prop-Lys" |
                               ID == "Peptide-A405/Lipid" & Feeding == "Prop-Tyr")
CptdelP488 = filter(Cptdel, Treatment == "A488+A405")
CptdelP488$Treatment[CptdelP488$Treatment == "A488+A405"] = "A488"
CptdelP488$ID[CptdelP488$ID == "Blue/Green"] = "Peptide-A405/Lipid" 
CptdelP488$ID[CptdelP488$ID == "Blue/Red"] = "Peptide/AF" 
CptdelP488$ID[CptdelP488$ID == "Green/Red"] = "Peptide-A488/AF"
CptdelP488$Feeding[CptdelP488$Feeding == "No Feed"] = "Control"
CptdelP488 = subset.data.frame(CptdelP488,
                             ID == "Peptide-A488/AF" & Feeding == "Phe-Az" |
                             ID == "Peptide-A488/AF" & Feeding == "Prop-Lys" |
                             ID == "Peptide-A488/AF" & Feeding == "Prop-Tyr")
CptdelP = rbind(CptdelP405, CptdelP488)

dD2P405 = filter(dD2, Treatment == "A405+BODIPY")
dD2P405$ID[dD2P405$ID == "Blue/Green"] = "Peptide-A405/Lipid" 
dD2P405$ID[dD2P405$ID == "Blue/Red"] = "Peptide-A405/AF" 
dD2P405$ID[dD2P405$ID == "Green/Red"] = "Lipid/AF"
dD2P405$Feeding[dD2P405$Feeding == "No Feed"] = "Control"
dD2P405 = subset.data.frame(dD2P405, 
                              ID == "Lipid/AF" & Feeding == "Prop-Lys" |
                              ID == "Lipid/AF" & Feeding == "Prop-Tyr" |
                              ID == "Peptide-A405/AF" & Feeding == "Prop-Lys" |
                              ID == "Peptide-A405/AF" & Feeding == "Prop-Tyr" |
                              ID == "Peptide-A405/Lipid" & Feeding == "Prop-Lys" |
                              ID == "Peptide-A405/Lipid" & Feeding == "Prop-Tyr")
dD2P488 = filter(dD2, Treatment == "A488+A405")
dD2P488$Treatment[dD2P488$Treatment == "A488+A405"] = "A488"
dD2P488$ID[dD2P488$ID == "Blue/Green"] = "Peptide/Lipid" 
dD2P488$ID[dD2P488$ID == "Blue/Red"] = "Peptide/AF" 
dD2P488$ID[dD2P488$ID == "Green/Red"] = "Peptide-A488/AF"
dD2P488$Feeding[dD2P488$Feeding == "No Feed"] = "Control"
dD2P488 = subset.data.frame(dD2P488,
                              ID == "Peptide-A488/AF" & Feeding == "Phe-Az" |
                              ID == "Peptide-A488/AF" & Feeding == "Prop-Lys" |
                              ID == "Peptide-A488/AF" & Feeding == "Prop-Tyr")
dD2P = rbind(dD2P405, dD2P488)


MaerP3 = subset.data.frame(MaerP, ID == "Peptide-A405/AF" | ID == "Peptide-A405/Lipid")
MaerP3 = MaerP3 %>% add_row(ID = "Peptide-A405/AF", Feeding = "Phe-Az")
MaerP3 = MaerP3 %>% add_row(ID = "Peptide-A405/Lipid", Feeding = "Phe-Az")
P371P3 = subset.data.frame(P371P, ID == "Peptide-A405/AF" | ID == "Peptide-A405/Lipid")
P371P3 = P371P3 %>% add_row(ID = "Peptide-A405/AF", Feeding = "Phe-Az")
P371P3 = P371P3 %>% add_row(ID = "Peptide-A405/Lipid", Feeding = "Phe-Az")
P371P3 = P371P3 %>% add_row(ID = "Peptide-A405/Lipid", Feeding = "Prop-Tyr")
CptdelP3 = subset.data.frame(CptdelP, ID == "Peptide-A405/AF" | ID == "Peptide-A405/Lipid")
CptdelP3 = CptdelP3 %>% add_row(ID = "Peptide-A405/AF", Feeding = "Phe-Az")
CptdelP3 = CptdelP3 %>% add_row(ID = "Peptide-A405/Lipid", Feeding = "Phe-Az")
dD2P3 = subset.data.frame(dD2P, ID == "Peptide-A405/AF" | ID == "Peptide-A405/Lipid")
dD2P3 = dD2P3 %>% add_row(ID = "Peptide-A405/AF", Feeding = "Phe-Az")
dD2P3 = dD2P3 %>% add_row(ID = "Peptide-A405/Lipid", Feeding = "Phe-Az")


MaerP5 = subset.data.frame(MaerP, ID == "Lipid/AF" | ID == "Peptide-A488/AF")
P371P5 = subset.data.frame(P371P, ID == "Lipid/AF" | ID == "Peptide-A488/AF")
CptdelP5 = subset.data.frame(CptdelP, ID == "Lipid/AF" | ID == "Peptide-A488/AF")
dD2P5 = subset.data.frame(dD2P, ID == "Lipid/AF" | ID == "Peptide-A488/AF")



Colors = c("Control" = "grey", "Phe-Az" = "lightslateblue", "Prop-Lys" = "skyblue", "Prop-Tyr" = "forestgreen")

###########################################Rearrange#############################
##############################################################################
##################################################################################


##Maer

MaerP31 = filter(MaerP3, ID == "Peptide-A405/AF")

MaerP31s = MaerP31 %>% filter(!is.na(Pearson))
summary(MaerP31s$Pearson) 
sd(MaerP31s$Pearson)

MaerP32 = filter(MaerP3, ID == "Peptide-A405/Lipid")
MaerP32

MaerP32s = MaerP32 %>% filter(!is.na(Pearson))
summary(MaerP32s$Pearson) 
sd(MaerP32s$Pearson)

mean.MaerP31.data <- MaerP31 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.MaerP31.data

MaerPlotP31 = ggplot(MaerP31 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic")

MaerPlotP31

mean.MaerP32.data <- MaerP32 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.MaerP32.data

MaerPlotP32 = ggplot(MaerP32 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic")

MaerPlotP32


MaerP51 = filter(MaerP5, ID == "Peptide-A488/AF")
MaerP51

MaerP51s = MaerP51 %>% filter(!is.na(Pearson))
summary(MaerP51s$Pearson) 
sd(MaerP51s$Pearson)

MaerP52 = filter(MaerP5, ID == "Lipid/AF")
MaerP52

MaerP52s = MaerP52 %>% filter(!is.na(Pearson))
summary(MaerP52s$Pearson) 
sd(MaerP52s$Pearson)

mean.MaerP51.data <- MaerP51 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.MaerP51.data

MaerPlotP51 = ggplot(MaerP51 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") 

MaerPlotP51

mean.MaerP52.data <- MaerP52 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

MaerPlotP51

mean.MaerP52.data

MaerPlotP52 = ggplot(MaerP52 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") 

MaerPlotP52

######################################################################################################################

Maerlabel = expression(paste(italic("M. aeruginosa")))

MaerTotal = ggarrange(MaerPlotP51, MaerPlotP52, MaerPlotP31,MaerPlotP32, ncol = 4)

MaerTotal = annotate_figure(MaerTotal, top = text_grob(Maerlabel, size = 14))

MaerTotal

##P371

P371P31 = filter(P371P3, ID == "Peptide-A405/AF")
P371P31 

P371P31s = P371P31 %>% filter(!is.na(Pearson))
summary(P371P31s$Pearson) 
sd(P371P31s$Pearson)

P371P32 = filter(P371P3, ID == "Peptide-A405/Lipid")
P371P32

P371P32s = P371P32 %>% filter(!is.na(Pearson))
summary(P371P32s$Pearson) 
sd(P371P32s$Pearson)

mean.P371P31.data <- P371P31 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.P371P31.data

P371PlotP31 = ggplot(P371P31 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + 
  theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic")

P371PlotP31

mean.P371P32.data <- P371P32 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.P371P32.data

P371PlotP32 = ggplot(P371P32 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic") +  annotate("text", x = "Prop-Tyr", y = 0.5, label = "n/d", fontface = "italic")

P371PlotP32


P371P51 = filter(P371P5, ID == "Peptide-A488/AF")
P371P51

P371P51s = P371P51 %>% filter(!is.na(Pearson))
summary(P371P51s$Pearson) 
sd(P371P51s$Pearson)

P371P52 = filter(P371P5, ID == "Lipid/AF")
P371P52

P371P52s = P371P52 %>% filter(!is.na(Pearson))
summary(P371P52s$Pearson) 
sd(P371P52s$Pearson)

mean.P371P51.data <- P371P51 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.P371P51.data

P371PlotP51 = ggplot(P371P51 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + 
  theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none") 

P371PlotP51

mean.P371P52.data <- P371P52 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.P371P52.data

P371PlotP52 = ggplot(P371P52 %>%
                       group_by(Feeding, ID) %>%
                       mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = c("Phe-Az", "Prop-Tyr"), y = 0.5, label = "n/d", fontface = "italic")

P371PlotP52

#######################################################


P371label = expression(paste(italic("P. agardhii"), " No371/1"))

P371Total = ggarrange(P371PlotP51, P371PlotP52, P371PlotP31, P371PlotP32, ncol = 4)

P371Total = annotate_figure(P371Total, top = text_grob(P371label, size = 14))

P371Total

### Cptdel

CptdelP31 = filter(CptdelP3, ID == "Peptide-A405/AF")
CptdelP31 

CptdelP31s = CptdelP31 %>% filter(!is.na(Pearson))
summary(CptdelP31s$Pearson) 
sd(CptdelP31s$Pearson)

CptdelP32 = filter(CptdelP3, ID == "Peptide-A405/Lipid")
CptdelP32

CptdelP32s = CptdelP32 %>% filter(!is.na(Pearson))
summary(CptdelP32s$Pearson) 
sd(CptdelP32s$Pearson)

mean.CptdelP31.data <- CptdelP31 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.CptdelP31.data

CptdelPlotP31 = ggplot(CptdelP31 %>%
                         group_by(Feeding, ID) %>%
                         mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + 
  theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic")

CptdelPlotP31

mean.CptdelP32.data <- CptdelP32 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.CptdelP32.data

CptdelPlotP32 = ggplot(CptdelP32 %>%
                         group_by(Feeding, ID) %>%
                         mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) +
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic")

CptdelPlotP32

CptdelP51 = filter(CptdelP5, ID == "Peptide-A488/AF")
CptdelP51

CptdelP51s = CptdelP51 %>% filter(!is.na(Pearson))
summary(CptdelP51s$Pearson) 
sd(CptdelP51s$Pearson)

CptdelP52 = filter(CptdelP5, ID == "Lipid/AF")
CptdelP52

CptdelP52s = CptdelP52 %>% filter(!is.na(Pearson))
summary(CptdelP52s$Pearson) 
sd(CptdelP52s$Pearson)

mean.CptdelP51.data <- CptdelP51 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.CptdelP51.data

CptdelPlotP51 = ggplot(CptdelP51 %>%
                         group_by(Feeding, ID) %>%
                         mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + 
  theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none") 

CptdelPlotP51

mean.CptdelP52.data <- CptdelP52 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.CptdelP52.data

CptdelPlotP52 = ggplot(CptdelP52 %>%
                         group_by(Feeding, ID) %>%
                         mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) +
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") 

CptdelPlotP52

#########################################################

Cptdellabel = expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))

CptdelTotal = ggarrange(CptdelPlotP51, CptdelPlotP52, CptdelPlotP31, CptdelPlotP32, ncol = 4)


CptdelTotal = annotate_figure(CptdelTotal, top = text_grob(Cptdellabel, size = 14))

CptdelTotal


###dD2


dD2P31 = filter(dD2P3, ID == "Peptide-A405/AF")
dD2P31 

dD2P31s = dD2P31 %>% filter(!is.na(Pearson))
summary(dD2P31s$Pearson) 
sd(dD2P31s$Pearson)

dD2P32 = filter(dD2P3, ID == "Peptide-A405/Lipid")
dD2P32

dD2P32s = dD2P32 %>% filter(!is.na(Pearson))
summary(dD2P32s$Pearson) 
sd(dD2P32s$Pearson)

mean.dD2P31.data <- dD2P31 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.dD2P31.data

dD2PlotP31 = ggplot(dD2P31 %>%
                      group_by(Feeding, ID) %>%
                      mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic")

dD2PlotP31

mean.dD2P32.data <- dD2P32 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.dD2P32.data

dD2PlotP32 = ggplot(dD2P32 %>%
                      group_by(Feeding, ID) %>%
                      mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/a", fontface = "italic")

dD2PlotP32

dD2P51 = filter(dD2P5, ID == "Peptide-A488/AF")
dD2P51

dD2P51s = dD2P51 %>% filter(!is.na(Pearson))
summary(dD2P51s$Pearson) 
sd(dD2P51s$Pearson)

dD2P52 = filter(dD2P5, ID == "Lipid/AF")
dD2P52

dD2P52s = dD2P52 %>% filter(!is.na(Pearson))
summary(dD2P52s$Pearson) 
sd(dD2P52s$Pearson)

mean.dD2P51.data <- dD2P51 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )

mean.dD2P51.data

dD2PlotP51 = ggplot(dD2P51 %>%
                      group_by(Feeding, ID) %>%
                      mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none") 

dD2PlotP51

mean.dD2P52.data <- dD2P52 %>%
  group_by(Feeding, ID) %>%
  summarise(
    Pearson = mean(Pearson)
  )
mean.dD2P52.data

dD2PlotP52 = ggplot(dD2P52 %>%
                      group_by(Feeding, ID) %>%
                      mutate(p = mean(Pearson)), aes(x=Feeding, y = Pearson, fill = Feeding)) + geom_boxplot(outlier.shape = NA) + ylim(0,1) +
  scale_fill_manual(values = Colors) + theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank(), axis.text.y = element_blank()) +
  labs(y = "Pearson colocalization coefficient") + facet_grid(.~ID) +
  #ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5)) + theme(legend.position = "none") +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/d", fontface = "italic")

dD2PlotP52

###########################################

dD2label = expression(paste(italic("P. agardhii"), " CYA126/8"~Delta~"mcyD"))

dD2Total = ggarrange(dD2PlotP51, dD2PlotP52, dD2PlotP31, dD2PlotP32, ncol = 4)

dD2Total = annotate_figure(dD2Total, top = text_grob(dD2label, size = 14))

dD2Total

#######################################################################
#######################################################################
#######################################################################

Total  = ggarrange(MaerTotal, P371Total, CptdelTotal, dD2Total, ncol = 2, nrow = 2,
                   labels = c("A", "B", "C", "D"))

Total = annotate_figure(Total, left = text_grob("Pearson colocalization coefficient", rot = 90, size = 18))

Total


