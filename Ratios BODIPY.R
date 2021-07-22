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

###____________________________BODIPY Green Red Ratios_____________________________________________________________________________________________________

MaerGR = filter(Maer, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
MaerGR$Treatment[MaerGR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
MaerGR$Feeding[MaerGR$Feeding == "No Feed"] = "Control"

PCC6803GR = filter(PCC6803, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
PCC6803GR$Treatment[PCC6803GR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
PCC6803GR$Feeding[PCC6803GR$Feeding == "No Feed"] = "Control"

P371GR = filter(P371, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
P371GR$Treatment[P371GR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
P371GR$Feeding[P371GR$Feeding == "No Feed"] = "Control"

WTGR = filter(WT, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
WTGR$Treatment[WTGR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
WTGR$Feeding[WTGR$Feeding == "No Feed"] = "Control"

ApnkoGR = filter(Apnko, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
ApnkoGR$Treatment[ApnkoGR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
ApnkoGR$Feeding[ApnkoGR$Feeding == "No Feed"] = "Control"
ApnkoGR = ApnkoGR %>% add_row(Feeding = "Phe-Az", Treatment = "BODIPY 505/515")

CptdelGR = filter(Cptdel, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
CptdelGR$Treatment[CptdelGR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
CptdelGR$Feeding[CptdelGR$Feeding == "No Feed"] = "Control"

MVGR = filter(MV, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
MVGR$Treatment[MVGR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
MVGR$Feeding[MVGR$Feeding == "No Feed"] = "Control"

dD2GR = filter(dD2, Treatment == "A405+BODIPY" | Treatment == "No Fluorophore")
dD2GR$Treatment[dD2GR$Treatment == "A405+BODIPY"] = "BODIPY 505/515"
dD2GR$Feeding[dD2GR$Feeding == "No Feed"] = "Control"

### Maer

mean.Maergr.data <- MaerGR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.Maergr.data


MaerPlotGR = ggplot(MaerGR %>%
                      group_by(Feeding, Treatment) %>%
                      mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,4) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(.~Treatment) + 
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.294) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank())  +
  ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5)) 

MaerPlotGR

### PCC6803

mean.PCC6803gr.data <- PCC6803GR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.PCC6803gr.data

PCC6803PlotGR = ggplot(PCC6803GR %>%
                         group_by(Feeding, Treatment) %>%
                         mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,4) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(.~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.311) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) + 
  ggtitle(expression(paste(italic("Synechocystis"), " PCC6803"))) + theme(plot.title = element_text(hjust = 0.5))

PCC6803PlotGR

### P371

mean.P371gr.data <- P371GR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.P371gr.data

P371PlotGR = ggplot(P371GR %>%
                      group_by(Feeding, Treatment) %>%
                      mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,1.25) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.294)+ 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) + 
  ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + theme(plot.title = element_text(hjust = 0.5))

P371PlotGR

### WT

mean.WTgr.data <- WTGR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.WTgr.data

WTPlotGR = ggplot(WTGR %>%
                    group_by(Feeding, Treatment) %>%
                    mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,1) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.137) +
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank())+ 
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8 WT"))) + theme(plot.title = element_text(hjust = 0.5))

WTPlotGR

### Apnko

mean.Apnkogr.data <- ApnkoGR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.Apnkogr.data

ApnkoPlotGR = ggplot(ApnkoGR %>%
                       group_by(Feeding, Treatment) %>%
                       mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,1) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.232) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) + 
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + theme(plot.title = element_text(hjust = 0.5)) +
  annotate("text", x = "Phe-Az", y = 0.5, label = "n/d", fontface = "italic")

ApnkoPlotGR

### Cptdel

mean.Cptdelgr.data <- CptdelGR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.Cptdelgr.data

CptdelPlotGR = ggplot(CptdelGR %>%
                        group_by(Feeding, Treatment) %>%
                        mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,1) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(. ~Treatment) +  
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.110) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) + 
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + theme(plot.title =element_text(hjust = 0.5))

CptdelPlotGR

### MV

mean.MVgr.data <- MVGR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.MVgr.data

MVPlotGR = ggplot(MVGR %>%
                    group_by(Feeding, Treatment) %>%
                    mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,1) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.378) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) + 
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + theme(plot.title = element_text(hjust = 0.5))


MVPlotGR

### dD2

mean.dD2gr.data <- dD2GR %>%
  group_by(Feeding, Treatment) %>%
  summarise(
    Ratio.Ch1.2 = mean(Ratio.Ch1.2)
  )

mean.dD2gr.data

dD2PlotGR = ggplot(dD2GR %>%
                     group_by(Feeding, Treatment) %>%
                     mutate(GR = mean(Ratio.Ch1.2)), aes(x=Feeding, y = Ratio.Ch1.2)) + ylim(0,1) +
  geom_boxplot(aes(fill = GR), outlier.shape = NA) + facet_grid(. ~Treatment) +
  scale_fill_gradient2(low= "grey", mid = "grey", high= "#00E64D", midpoint = 0.187) + 
  theme_classic() + theme(axis.text.x = element_text(angle = 60, hjust = 1, size = 12), axis.text.y = element_text(size = 12)) +
  theme(axis.title.x=element_blank(), axis.ticks.x=element_blank(), axis.title.y=element_blank(), axis.ticks.y = element_blank()) +
  ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) + theme(plot.title = element_text(hjust = 0.5))

dD2PlotGR

#### Combined


CombinedGR = ggarrange(MaerPlotGR, PCC6803PlotGR, P371PlotGR, WTPlotGR,
    ApnkoPlotGR, CptdelPlotGR, MVPlotGR, dD2PlotGR, labels = c("A", "B", "C", "D", "E", "F", "G", "H"),
    ncol = 4, nrow = 2, common.legend = FALSE, legend = "right") 
CombinedGR = annotate_figure(CombinedGR, left = text_grob("BODIPY505-515/Autofluorescence Signal Ratio", rot = 90, size = 18))

CombinedGR
