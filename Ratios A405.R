#LOAD PACKAGES FROM THE PACKAGES SCRIPT
#_______________________________________________________________________

Maer = read_delim("Intensities/Maer_2.csv", 
                  ";", escape_double = FALSE, trim_ws = TRUE)
Maer = Maer %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "Microcystis aeruginosa")
Maer$Treatment = as.character(Maer$Treatment)
Maer$Feeding = as.character(Maer$Feeding)
Maer$Specie = as.character(Maer$Specie)

PCC6803 = read_delim("Intensities/PCC6803.csv", 
                     ";", escape_double = FALSE, trim_ws = TRUE)
PCC6803 = PCC6803 %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "Synechocystis PCC6803")
PCC6803$Treatment = as.character(PCC6803$Treatment)
PCC6803$Feeding = as.character(PCC6803$Feeding)
PCC6803$Specie = as.character(PCC6803$Specie)


P371 = read_delim("Intensities/P371_2.csv", 
                  ";", escape_double = FALSE, trim_ws = TRUE)
P371 = P371 %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "371-1")
P371$Treatment = as.character(P371$Treatment)
P371$Feeding = as.character(P371$Feeding)
P371$Specie = as.character(P371$Specie)

WT = read_delim("Intensities/WT_2.csv", 
                ";", escape_double = FALSE, trim_ws = TRUE)
WT = WT %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8")
WT$Treatment = as.character(WT$Treatment)
WT$Feeding = as.character(WT$Feeding)
WT$Specie = as.character(WT$Specie)

Apnko = read_delim("Intensities/Apnko_2.csv", 
                   ";", escape_double = FALSE, trim_ws = TRUE)
Apnko = Apnko %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 ApnKO")
Apnko$Treatment = as.character(Apnko$Treatment)
Apnko$Feeding = as.character(Apnko$Feeding)
Apnko$Specie = as.character(Apnko$Specie)

Cptdel = read_delim("Intensities/Cptdel_2.csv", 
                    ";", escape_double = FALSE, trim_ws = TRUE)
Cptdel = Cptdel %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 Cptdel")
Cptdel$Treatment = as.character(Cptdel$Treatment)
Cptdel$Feeding = as.character(Cptdel$Feeding)
Cptdel$Specie = as.character(Cptdel$Specie)

MV = read_delim("Intensities/MV_2.csv", 
                ";", escape_double = FALSE, trim_ws = TRUE)
MV = MV %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 MV")
MV$Treatment = as.character(MV$Treatment)
MV$Feeding = as.character(MV$Feeding)
MV$Specie = as.character(MV$Specie)

dD2 = read_delim("Intensities/dD2_2.csv", 
                 ";", escape_double = FALSE, trim_ws = TRUE)
dD2 = dD2 %>% 
  mutate(Blue = Ch0..tot.Signal.intensity./Z..pixel., Green = Ch1..tot.Signal.intensity./Z..pixel., Red = Ch2..tot.Signal.intensity./Z..pixel., Specie = "126-8 dD2-2")
dD2$Treatment = as.character(dD2$Treatment)
dD2$Feeding = as.character(dD2$Feeding)
dD2$Specie = as.character(dD2$Specie)

###____________________________A488 Green Red Ratios_____________________________________________________________________________________________________


MaerBR = filter(Maer, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
MaerBR$Feeding[MaerBR$Feeding == "No Feed"] = "Control"
MaerBR$Treatment[MaerBR$Treatment == "A405+BODIPY"] = "ALEXA405"
MaerBR = subset.data.frame(MaerBR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

PCC6803BR = filter(PCC6803, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
PCC6803BR$Feeding[PCC6803BR$Feeding == "No Feed"] = "Control"
PCC6803BR$Treatment[PCC6803BR$Treatment == "A405+BODIPY"] = "ALEXA405"
PCC6803BR = subset.data.frame(PCC6803BR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

P371BR = filter(P371, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
P371BR$Feeding[P371BR$Feeding == "No Feed"] = "Control"
P371BR$Treatment[P371BR$Treatment == "A405+BODIPY"] = "ALEXA405"
P371BR = subset.data.frame(P371BR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

WTBR = filter(WT, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
WTBR$Feeding[WTBR$Feeding == "No Feed"] = "Control"
WTBR$Treatment[WTBR$Treatment == "A405+BODIPY"] = "ALEXA405"
WTBR = subset.data.frame(WTBR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

ApnkoBR = filter(Apnko, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
ApnkoBR$Feeding[ApnkoBR$Feeding == "No Feed"] = "Control"
ApnkoBR$Treatment[ApnkoBR$Treatment == "A405+BODIPY"] = "ALEXA405"
ApnkoBR = subset.data.frame(ApnkoBR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

CptdelBR = filter(Cptdel, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
CptdelBR$Feeding[CptdelBR$Feeding == "No Feed"] = "Control"
CptdelBR$Treatment[CptdelBR$Treatment == "A405+BODIPY"] = "ALEXA405"
CptdelBR = subset.data.frame(CptdelBR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

MVBR = filter(MV, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
MVBR$Feeding[MVBR$Feeding == "No Feed"] = "Control"
MVBR$Treatment[MVBR$Treatment == "A405+BODIPY"] = "ALEXA405"
MVBR = subset.data.frame(MVBR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

dD2BR = filter(dD2, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
dD2BR$Feeding[dD2BR$Feeding == "No Feed"] = "Control"
dD2BR$Treatment[dD2BR$Treatment == "A405+BODIPY"] = "ALEXA405"
dD2BR = subset.data.frame(dD2BR, Feeding == "Control" | Feeding == "Prop-Lys" | Feeding == "Prop-Tyr")

### Maer

mean.Maerbr.data <- MaerBR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.Maerbr.data



MaerPlotBR = ggplot(MaerBR %>%
                      group_by(Feeding, Treatment) %>%
                      mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 1.80) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank())  + 
  ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5)) 

MaerPlotBR

### PCC6803

mean.PCC6803br.data <- PCC6803BR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.PCC6803br.data

PCC6803PlotBR = ggplot(PCC6803BR %>%
                      group_by(Feeding, Treatment) %>%
                      mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 5.07) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank())  + 
  ggtitle(expression(paste(italic("Synechocystis"), " PCC6803"))) + theme(plot.title = element_text(hjust = 0.5))

PCC6803PlotBR

### P371

mean.P371br.data <- P371BR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.P371br.data

P371PlotBR = ggplot(P371BR %>%
                         group_by(Feeding, Treatment) %>%
                         mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 3.31) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + theme(plot.title = element_text(hjust = 0.5))

P371PlotBR

### WT

mean.WTbr.data <- WTBR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.WTbr.data

WTPlotBR = ggplot(WTBR %>%
                      group_by(Feeding, Treatment) %>%
                      mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +  
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 1.94) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8 WT"))) + theme(plot.title = element_text(hjust = 0.5))

WTPlotBR

### Apnko

mean.Apnkobr.data <- ApnkoBR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.Apnkobr.data

ApnkoPlotBR = ggplot(ApnkoBR %>%
                    group_by(Feeding, Treatment) %>%
                    mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 3.59) +
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + theme(plot.title = element_text(hjust = 0.5))

ApnkoPlotBR

### Cptdel

mean.Cptdelbr.data <- CptdelBR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.Cptdelbr.data

CptdelPlotBR = ggplot(CptdelBR %>%
                       group_by(Feeding, Treatment) %>%
                       mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 2.03) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + theme(plot.title =element_text(hjust = 0.5))

CptdelPlotBR

### MV

mean.MVbr.data <- MVBR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.MVbr.data

MVPlotBR = ggplot(MVBR %>%
                        group_by(Feeding, Treatment) %>%
                        mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 2.93) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + theme(plot.title = element_text(hjust = 0.5))

MVPlotBR

### dD2

mean.dD2br.data <- dD2BR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch0.2 = mean(Ratio.Ch0.2)
  )

mean.dD2br.data

dD2PlotBR = ggplot(dD2BR %>%
                group_by(Feeding, Treatment) %>%
                mutate(BR = mean(Ratio.Ch0.2)), aes(x=Feeding, y = Ratio.Ch0.2)) + ylim(0,9) +  
  geom_boxplot(aes(fill = BR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#66CCFF", midpoint = 2.26) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) + theme(plot.title = element_text(hjust = 0.5))

dD2PlotBR

#### Combined

CombinedBR = ggarrange(MaerPlotBR, PCC6803PlotBR, P371PlotBR, WTPlotBR,
                       ApnkoPlotBR, CptdelPlotBR, MVPlotBR, dD2PlotBR, labels = c("A", "B", "C", "D", "E", "F", "G", "H"),
                       ncol = 4, nrow = 2, common.legend = FALSE, legend = "right") 
CombinedBR = annotate_figure(CombinedBR, left = text_grob("ALEXA405/Autofluorescence Intensity Ratio", rot = 90, size = 18))

CombinedBR