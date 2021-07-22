#LOAD PACKAGES FROM THE PACKAGES SCRIPT
#_______________________________________________________________________


###
##############################################################################################################
#PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS
##############################################################################################################
###

##Maer
#Lys488+405
R2apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/2aR.png"
G2apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/2aG.png"
B2apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/2aB.png"
#NoFeed488+405
R1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aR.png"
G1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aG.png"
B1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aB.png"

R2a = readPNG(R2apath)
G2a = readPNG(G2apath)
B2a = readPNG(B2apath) 

R2a = ggplot() + background_image(R2a) 
G2a = ggplot() + background_image(G2a)
B2a = ggplot() + background_image(B2a)

R1a = readPNG(R1apath)
G1a = readPNG(G1apath)
B1a = readPNG(B1apath)  

R1a = ggplot() + background_image(R1a)
G1a = ggplot() + background_image(G1a)
B1a = ggplot() + background_image(B1a)

MaerN = ggarrange(R1a, G1a, B1a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
MaerAL = ggarrange(R2a, G2a, B2a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

MaerL = ggarrange(MaerN, MaerAL, ncol = 2) + ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 20)) 
 
MaerL

##PCC6803
#Lys488+405
R4apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/4aR.png"
G4apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/4aG.png"
B4apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/4aB.png"
#NoFeed488+405
R3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aR.png"
G3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aG.png"
B3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aB.png"

R4a = readPNG(R4apath)
G4a = readPNG(G4apath)
B4a = readPNG(B4apath)   

R4a = ggplot() + background_image(R4a)
G4a = ggplot() + background_image(G4a)
B4a = ggplot() + background_image(B4a)

R3a = readPNG(R3apath)
G3a = readPNG(G3apath)
B3a = readPNG(B3apath)  

R3a = ggplot() + background_image(R3a) 
G3a = ggplot() + background_image(G3a)
B3a = ggplot() + background_image(B3a)

PCC6803N = ggarrange(R3a, G3a, B3a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
PCC6803AL = ggarrange(R4a, G4a, B4a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

PCC6803L = ggarrange(PCC6803N, PCC6803AL, ncol = 2) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803L

##P371
#Lys488+405
R4a2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/4aR.png"
G4a2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/4aG.png"
B4a2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/4aB.png"
#NoFeed488+405
R3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aR.png"
G3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aG.png"
B3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aB.png"

R3a2 = readPNG(R3a2path)
G3a2 = readPNG(G3a2path)
B3a2 = readPNG(B3a2path)  

R3a2 = ggplot() + background_image(R3a2)
G3a2 = ggplot() + background_image(G3a2)
B3a2 = ggplot() + background_image(B3a2)

R4a2 = readPNG(R4a2bpath)
G4a2 = readPNG(G4a2bpath)
B4a2 = readPNG(B4a2bpath)   

R4a2 = ggplot() + background_image(R4a2) 
G4a2 = ggplot() + background_image(G4a2)
B4a2 = ggplot() + background_image(B4a2)

P371N = ggarrange(R3a2, G3a2, B3a2, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
P371AL = ggarrange(R4a2, G4a2, B4a2, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

P371L = ggarrange(P371N, P371AL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

P371L

##WT
#Lys488+405
R10apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/10aR.png"
G10apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/10aG.png"
B10apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/10aB.png"
#NoFeed488+405
R9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aR.png"
G9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aG.png"
B9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aB.png"

R10a = readPNG(R10apath)
G10a = readPNG(G10apath)
B10a = readPNG(B10apath)  

R10a = ggplot() + background_image(R10a)
G10a = ggplot() + background_image(G10a)
B10a = ggplot() + background_image(B10a)

R9a = readPNG(R9apath)
G9a = readPNG(G9apath)
B9a = readPNG(B9apath)

R9a = ggplot() + background_image(R9a) 
G9a = ggplot() + background_image(G9a)
B9a = ggplot() + background_image(B9a)

WTN = ggarrange(R9a, G9a, B9a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
WTAL = ggarrange(R10a, G10a, B10a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

WTL = ggarrange(WTN, WTAL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

WTL

##Apnko
#Lys488+405
R16apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16aR.png"
G16apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16aG.png"
B16apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16aB.png"
##NoFeed488+405
R15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aR.png"
G15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aG.png"
B15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aB.png"

R16a = readPNG(R16apath)
G16a = readPNG(G16apath)
B16a = readPNG(B16apath)

R16a = ggplot() + background_image(R16a)
G16a = ggplot() + background_image(G16a)
B16a = ggplot() + background_image(B16a)

R15a = readPNG(R15apath)
G15a = readPNG(G15apath)
B15a = readPNG(B15apath)   

R15a = ggplot() + background_image(R15a) 
G15a = ggplot() + background_image(G15a)
B15a = ggplot() + background_image(B15a)

ApnkoN = ggarrange(R15a, G15a, B15a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
ApnkoAL = ggarrange(R16a, G16a, B16a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

ApnkoL = ggarrange(ApnkoN, ApnkoAL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

ApnkoL

##Cptdel
#Lys488+405
R69apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/69aR.png"
G69apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/69aG.png"
B69apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/69aB.png"
#NoFeed488+405
R70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aR.png"
G70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aG.png"
B70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aB.png"

R69a = readPNG(R69apath)
G69a = readPNG(G69apath)
B69a = readPNG(B69apath) 

R69a = ggplot() + background_image(R69a) 
G69a = ggplot() + background_image(G69a)
B69a = ggplot() + background_image(B69a)

R70a = readPNG(R70apath)
G70a = readPNG(G70apath)
B70a = readPNG(B70apath)  

R70a = ggplot() + background_image(R70a)
G70a = ggplot() + background_image(G70a)
B70a = ggplot() + background_image(B70a)

CptdelN = ggarrange(R70a, G70a, B70a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
CptdelAL = ggarrange(R69a, G69a, B69a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

CptdelL = ggarrange(CptdelN, CptdelAL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

CptdelL

##MV
#Lys488+405
R75apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/75aR.png"
G75apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/75aG.png"
B75apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/75aB.png"
#NoFeed488+405
R74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aR.png"
G74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aG.png"
B74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aB.png"

R75a = readPNG(R75apath)
G75a = readPNG(G75apath)
B75a = readPNG(B75apath) 

R75a = ggplot() + background_image(R75a) 
G75a = ggplot() + background_image(G75a)
B75a = ggplot() + background_image(B75a)

R74a = readPNG(R74apath)
G74a = readPNG(G74apath)
B74a = readPNG(B74apath)

R74a = ggplot() + background_image(R74a)
G74a = ggplot() + background_image(G74a)
B74a = ggplot() + background_image(B74a)


MVN = ggarrange(R74a, G74a, B74a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
MVAL = ggarrange(R75a, G75a, B75a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

MVL = ggarrange(MVN, MVAL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

MVL

##dD2
#Lys488+405
R81apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/81aR.png"
G81apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/81aG.png"
B81apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/81aB.png"
#NoFeed488+405
R80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aR.png"
G80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aG.png"
B80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aB.png"

R81a = readPNG(R81apath)
G81a = readPNG(G81apath)
B81a = readPNG(B81apath)   

R81a = ggplot() + background_image(R81a) 
G81a = ggplot() + background_image(G81a)
B81a = ggplot() + background_image(B81a)

R80a = readPNG(R80apath)
G80a = readPNG(G80apath)
B80a = readPNG(B80apath)  

R80a = ggplot() + background_image(R80a)
G80a = ggplot() + background_image(G80a)
B80a = ggplot() + background_image(B80a)

dD2N = ggarrange(R80a, G80a, B80a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
dD2AL = ggarrange(R81a, G81a, B81a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5))

dD2L = ggarrange(dD2N, dD2AL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2L

############ COMBINED LYS

row1 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A488", angle = 90, size = 10) + theme_void()

row3 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


row = ggarrange(row1, row2, row3, ncol = 1)

row

CombinedL = row + MaerL + plot_spacer() + PCC6803L + plot_spacer() + P371L + plot_spacer() + WTL + 
  row + ApnkoL + plot_spacer() + CptdelL + plot_spacer() + MVL + plot_spacer() + dD2L +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

CombinedL



###
##############################################################################################################
#PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR
##############################################################################################################
###

##Maer
#Tyr488+405
R1bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1bR.png"
G1bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1bG.png"
B1bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1bB.png"
#NoFeed488+405
R1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aR.png"
G1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aG.png"
B1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aB.png"

R1b = readPNG(R1bpath)
G1b = readPNG(G1bpath)
B1b = readPNG(B1bpath) 

R1b = ggplot() + background_image(R1b) 
G1b = ggplot() + background_image(G1b)
B1b = ggplot() + background_image(B1b)

R1a = readPNG(R1apath)
G1a = readPNG(G1apath)
B1a = readPNG(B1apath)  

R1a = ggplot() + background_image(R1a)
G1a = ggplot() + background_image(G1a)
B1a = ggplot() + background_image(B1a)

MaerN = ggarrange(R1a, G1a, B1a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
MaerAT = ggarrange(R1b, G1b, B1b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

MaerT = ggarrange(MaerN, MaerAT, ncol = 2) + ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 20)) 

MaerT

##PCC6803
#Tyr488+405
R3bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3bR.png"
G3bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3bG.png"
B3bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3bB.png"
#NoFeed488+405
R3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aR.png"
G3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aG.png"
B3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aB.png"

R3b = readPNG(R3bpath)
G3b = readPNG(G3bpath)
B3b = readPNG(B3bpath)   

R3b = ggplot() + background_image(R3b)
G3b = ggplot() + background_image(G3b)
B3b = ggplot() + background_image(B3b)

R3a = readPNG(R3apath)
G3a = readPNG(G3apath)
B3a = readPNG(B3apath)  

R3a = ggplot() + background_image(R3a) 
G3a = ggplot() + background_image(G3a)
B3a = ggplot() + background_image(B3a)

PCC6803N = ggarrange(R3a, G3a, B3a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
PCC6803AT = ggarrange(R3b, G3b, B3b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

PCC6803T = ggarrange(PCC6803N, PCC6803AT, ncol = 2) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803T

##P371
#Tyr488+405
R3b2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3bR.png"
G3b2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3bG.png"
B3b2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3bB.png"
#NoFeed488+405
R3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aR.png"
G3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aG.png"
B3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aB.png"

R3a2 = readPNG(R3a2path)
G3a2 = readPNG(G3a2path)
B3a2 = readPNG(B3a2path)  

R3a2 = ggplot() + background_image(R3a2)
G3a2 = ggplot() + background_image(G3a2)
B3a2 = ggplot() + background_image(B3a2)

R3b2 = readPNG(R3b2bpath)
G3b2 = readPNG(G3b2bpath)
B3b2 = readPNG(B3b2bpath)   

R3b2 = ggplot() + background_image(R3b2) 
G3b2 = ggplot() + background_image(G3b2)
B3b2 = ggplot() + background_image(B3b2)

P371N = ggarrange(R3a2, G3a2, B3a2, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
P371AT = ggarrange(R3b2, G3b2, B3b2, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

P371T = ggarrange(P371N, P371AT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

P371T

##WT
#Tyr488+405
R9bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9bR.png"
G9bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9bG.png"
B9bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9bB.png"
#NoFeed488+405
R9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aR.png"
G9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aG.png"
B9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aB.png"

R9b = readPNG(R9bpath)
G9b = readPNG(G9bpath)
B9b = readPNG(B9bpath)  

R9b = ggplot() + background_image(R9b)
G9b = ggplot() + background_image(G9b)
B9b = ggplot() + background_image(B9b)

R9a = readPNG(R9apath)
G9a = readPNG(G9apath)
B9a = readPNG(B9apath)

R9a = ggplot() + background_image(R9a) 
G9a = ggplot() + background_image(G9a)
B9a = ggplot() + background_image(B9a)

WTN = ggarrange(R9a, G9a, B9a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
WTAT = ggarrange(R9b, G9b, B9b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

WTT = ggarrange(WTN, WTAT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

WTT

##Apnko
#Tyr488+405
R15bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15bR.png"
G15bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15bG.png"
B15bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15bB.png"
##NoFeed488+405
R15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aR.png"
G15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aG.png"
B15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aB.png"

R15b = readPNG(R15bpath)
G15b = readPNG(G15bpath)
B15b = readPNG(B15bpath)

R15b = ggplot() + background_image(R15b)
G15b = ggplot() + background_image(G15b)
B15b = ggplot() + background_image(B15b)

R15a = readPNG(R15apath)
G15a = readPNG(G15apath)
B15a = readPNG(B15apath)   

R15a = ggplot() + background_image(R15a) 
G15a = ggplot() + background_image(G15a)
B15a = ggplot() + background_image(B15a)

ApnkoN = ggarrange(R15a, G15a, B15a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
ApnkoAT = ggarrange(R15b, G15b, B15b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

ApnkoT = ggarrange(ApnkoN, ApnkoAT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

ApnkoT

##Cptdel
#Tyr488+405
R68bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/68bR.png"
G68bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/68bG.png"
B68bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/68bB.png"
#NoFeed488+405
R70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aR.png"
G70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aG.png"
B70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aB.png"

R68b = readPNG(R68bpath)
G68b = readPNG(G68bpath)
B68b = readPNG(B68bpath) 

R68b = ggplot() + background_image(R68b) 
G68b = ggplot() + background_image(G68b)
B68b = ggplot() + background_image(B68b)

R70a = readPNG(R70apath)
G70a = readPNG(G70apath)
B70a = readPNG(B70apath)  

R70a = ggplot() + background_image(R70a)
G70a = ggplot() + background_image(G70a)
B70a = ggplot() + background_image(B70a)

CptdelN = ggarrange(R70a, G70a, B70a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
CptdelAT = ggarrange(R68b, G68b, B68b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

CptdelT = ggarrange(CptdelN, CptdelAT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

CptdelT

##MV
#Tyr488+405
R74bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74bR.png"
G74bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74bG.png"
B74bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74bB.png"
#NoFeed488+405
R74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aR.png"
G74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aG.png"
B74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aB.png"

R74b = readPNG(R74bpath)
G74b = readPNG(G74bpath)
B74b = readPNG(B74bpath) 

R74b = ggplot() + background_image(R74b) 
G74b = ggplot() + background_image(G74b)
B74b = ggplot() + background_image(B74b)

R74a = readPNG(R74apath)
G74a = readPNG(G74apath)
B74a = readPNG(B74apath)

R74a = ggplot() + background_image(R74a)
G74a = ggplot() + background_image(G74a)
B74a = ggplot() + background_image(B74a)


MVN = ggarrange(R74a, G74a, B74a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
MVAT = ggarrange(R74b, G74b, B74b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

MVT = ggarrange(MVN, MVAT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

MVT

##dD2
#Tyr488+405
R80bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80bR.png"
G80bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80bG.png"
B80bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80bB.png"
#NoFeed488+405
R80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aR.png"
G80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aG.png"
B80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aB.png"

R80b = readPNG(R80bpath)
G80b = readPNG(G80bpath)
B80b = readPNG(B80bpath)   

R80b = ggplot() + background_image(R80b) 
G80b = ggplot() + background_image(G80b)
B80b = ggplot() + background_image(B80b)

R80a = readPNG(R80apath)
G80a = readPNG(G80apath)
B80a = readPNG(B80apath)  

R80a = ggplot() + background_image(R80a)
G80a = ggplot() + background_image(G80a)
B80a = ggplot() + background_image(B80a)

dD2N = ggarrange(R80a, G80a, B80a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
dD2AT = ggarrange(R80b, G80b, B80b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5))

dD2T = ggarrange(dD2N, dD2AT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2T

############ COMBINED TYR

row1 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A488", angle = 90, size = 10) + theme_void()

row3 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


row = ggarrange(row1, row2, row3, ncol = 1)

row

CombinedT = row + MaerT + plot_spacer() + PCC6803T + plot_spacer() + P371T + plot_spacer() + WTT + 
  row + ApnkoT + plot_spacer() + CptdelT + plot_spacer() + MVT + plot_spacer() + dD2T +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

CombinedT

###
##############################################################################################################
#PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ
##############################################################################################################
###

##Maer
#Az488+405
R2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/2bR.png"
G2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/2bG.png"
B2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/2bB.png"
#NoFeed488+405
R1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aR.png"
G1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aG.png"
B1apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/1aB.png"

R2b = readPNG(R2bpath)
G2b = readPNG(G2bpath)
B2b = readPNG(B2bpath) 

R2b = ggplot() + background_image(R2b) 
G2b = ggplot() + background_image(G2b)
B2b = ggplot() + background_image(B2b)

R1a = readPNG(R1apath)
G1a = readPNG(G1apath)
B1a = readPNG(B1apath)  

R1a = ggplot() + background_image(R1a)
G1a = ggplot() + background_image(G1a)
B1a = ggplot() + background_image(B1a)

MaerN = ggarrange(R1a, G1a, B1a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
MaerAA = ggarrange(R2b, G2b, B2b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

MaerA = ggarrange(MaerN, MaerAA, ncol = 2) + ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 20)) 

MaerA

##PCC6803
#Az488+405
R4bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/4bR.png"
G4bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/4bG.png"
B4bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/4bB.png"
#NoFeed488+405
R3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aR.png"
G3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aG.png"
B3apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/3aB.png"

R4b = readPNG(R4bpath)
G4b = readPNG(G4bpath)
B4b = readPNG(B4bpath)   

R4b = ggplot() + background_image(R4b)
G4b = ggplot() + background_image(G4b)
B4b = ggplot() + background_image(B4b)

R3a = readPNG(R3apath)
G3a = readPNG(G3apath)
B3a = readPNG(B3apath)  

R3a = ggplot() + background_image(R3a) 
G3a = ggplot() + background_image(G3a)
B3a = ggplot() + background_image(B3a)

PCC6803N = ggarrange(R3a, G3a, B3a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
PCC6803AA = ggarrange(R4b, G4b, B4b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

PCC6803A = ggarrange(PCC6803N, PCC6803AA, ncol = 2) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803A

##P371
#Az488+405
R4b2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/4bR.png"
G4b2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/4bG.png"
B4b2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/4bB.png"
#NoFeed488+405
R3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aR.png"
G3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aG.png"
B3a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/3aB.png"

R3b2 = readPNG(R3b2path)
G3b2 = readPNG(G3b2path)
B3b2 = readPNG(B3b2path)  

R3b2 = ggplot() + background_image(R3b2)
G3b2 = ggplot() + background_image(G3b2)
B3b2 = ggplot() + background_image(B3b2)

R4b2 = readPNG(R4b2bpath)
G4b2 = readPNG(G4b2bpath)
B4b2 = readPNG(B4b2bpath)   

R4b2 = ggplot() + background_image(R4b2) 
G4b2 = ggplot() + background_image(G4b2)
B4b2 = ggplot() + background_image(B4b2)

P371N = ggarrange(R3a2, G3a2, B3a2, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
P371AA = ggarrange(R4b2, G4b2, B4b2, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

P371A = ggarrange(P371N, P371AA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

P371A

##WT
#Az488+405
R10bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/10bR.png"
G10bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/10bG.png"
B10bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/10bB.png"
#NoFeed488+405
R9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aR.png"
G9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aG.png"
B9apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/9aB.png"

R10b = readPNG(R10bpath)
G10b = readPNG(G10bpath)
B10b = readPNG(B10bpath)  

R10b = ggplot() + background_image(R10b)
G10b = ggplot() + background_image(G10b)
B10b = ggplot() + background_image(B10b)

R9a = readPNG(R9apath)
G9a = readPNG(G9apath)
B9a = readPNG(B9apath)

R9a = ggplot() + background_image(R9a) 
G9a = ggplot() + background_image(G9a)
B9a = ggplot() + background_image(B9a)

WTN = ggarrange(R9a, G9a, B9a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
WTAA = ggarrange(R10b, G10b, B10b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

WTA = ggarrange(WTN, WTAA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

WTA

##Apnko
#Az488+405
R16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bR.png"
G16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bG.png"
B16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bB.png"
##NoFeed488+405
R15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aR.png"
G15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aG.png"
B15apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/15aB.png"

R16b = readPNG(R16bpath)
G16b = readPNG(G16bpath)
B16b = readPNG(B16bpath)

R16b = ggplot() + background_image(R16b)
G16b = ggplot() + background_image(G16b)
B16b = ggplot() + background_image(B16b)

R15a = readPNG(R15apath)
G15a = readPNG(G15apath)
B15a = readPNG(B15apath)   

R15a = ggplot() + background_image(R15a) 
G15a = ggplot() + background_image(G15a)
B15a = ggplot() + background_image(B15a)

ApnkoN = ggarrange(R15a, G15a, B15a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
ApnkoAA = ggarrange(R16b, G16b, B16b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

ApnkoA = ggarrange(ApnkoN, ApnkoAA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

ApnkoA

##Cptdel
#Az488+405
R69bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/69bR.png"
G69bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/69bG.png"
B69bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/69bB.png"
#NoFeed488+405
R70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aR.png"
G70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aG.png"
B70apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/70aB.png"

R69b = readPNG(R69bpath)
G69b = readPNG(G69bpath)
B69b = readPNG(B69bpath) 

R69b = ggplot() + background_image(R69b) 
G69b = ggplot() + background_image(G69b)
B69b = ggplot() + background_image(B69b)

R70a = readPNG(R70apath)
G70a = readPNG(G70apath)
B70a = readPNG(B70apath)  

R70a = ggplot() + background_image(R70a)
G70a = ggplot() + background_image(G70a)
B70a = ggplot() + background_image(B70a)

CptdelN = ggarrange(R70a, G70a, B70a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
CptdelAA = ggarrange(R69b, G69b, B69b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

CptdelA = ggarrange(CptdelN, CptdelAA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

CptdelA

##MV
#Az488+405
R75bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/75bR.png"
G75bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/75bG.png"
B75bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/75bB.png"
#NoFeed488+405
R74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aR.png"
G74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aG.png"
B74apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/74aB.png"

R75b = readPNG(R75bpath)
G75b = readPNG(G75bpath)
B75b = readPNG(B75bpath) 

R75b = ggplot() + background_image(R75b) 
G75b = ggplot() + background_image(G75b)
B75b = ggplot() + background_image(B75b)

R74a = readPNG(R74apath)
G74a = readPNG(G74apath)
B74a = readPNG(B74apath)

R74a = ggplot() + background_image(R74a)
G74a = ggplot() + background_image(G74a)
B74a = ggplot() + background_image(B74a)


MVN = ggarrange(R74a, G74a, B74a, ncol=1) + ggtitle("No Feed") + theme(plot.title = element_text(hjust = 0.5))
MVAA = ggarrange(R75b, G75b, B75b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

MVA = ggarrange(MVN, MVAA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

MVA

##dD2
#Az488+405
R81bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/81bR.png"
G81bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/81bG.png"
B81bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/81bB.png"
#NoFeed488+405
R80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aR.png"
G80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aG.png"
B80apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/80aB.png"

R81b = readPNG(R81bpath)
G81b = readPNG(G81bpath)
B81b = readPNG(B81bpath)   

R81b = ggplot() + background_image(R81b) 
G81b = ggplot() + background_image(G81b)
B81b = ggplot() + background_image(B81b)

R80a = readPNG(R80apath)
G80a = readPNG(G80apath)
B80a = readPNG(B80apath)  

R80a = ggplot() + background_image(R80a)
G80a = ggplot() + background_image(G80a)
B80a = ggplot() + background_image(B80a)

dD2N = ggarrange(R80a, G80a, B80a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5))
dD2AA = ggarrange(R81b, G81b, B81b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5))

dD2A = ggarrange(dD2N, dD2AA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) + theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2A

############ COMBINED Az

row1 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A488", angle = 90, size = 10) + theme_void()

row3 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


row = ggarrange(row1, row2, row3, ncol = 1)

row

CombinedA = row + MaerA + plot_spacer() + PCC6803A + plot_spacer() + P371A + plot_spacer() + WTA + 
  row + ApnkoA + plot_spacer() + CptdelA + plot_spacer() + MVA + plot_spacer() + dD2A +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

CombinedA

#####
### Combined all feeding conditions
#####


V = ggplot()  + theme_void() +
  annotate("text", x = 5, y = 5, size = 16, label = "n/a", fontface = "italic")

V

MaerN = ggarrange(R1a, G1a, B1a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MaerAL = ggarrange(R2a, G2a, B2a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MaerAT = ggarrange(R1b, G1b, B1b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MaerAA = ggarrange(R2b, G2b, #B2b
                   V, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

Maer = ggarrange(MaerN, MaerAA, MaerAL, MaerAT, ncol = 4) + ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 30)) 

Maer


PCC6803N = ggarrange(R3a, G3a, B3a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
PCC6803AL = ggarrange(R4a, G4a, B4a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
PCC6803AT = ggarrange(R3b, G3b, B3b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
PCC6803AA = ggarrange(R4b, G4b, #B4b, 
                      V, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803 = ggarrange(PCC6803N, PCC6803AA, PCC6803AL, PCC6803AT, ncol = 4) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

PCC6803

P371N = ggarrange(R3a2, G3a2, B3a2, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
P371AL = ggarrange(R4a2, G4a2, B4a2, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
P371AT = ggarrange(R3b2, G3b2, B3b2, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
P371AA = ggarrange(R4b2, G4b2, #B4b2, 
                   V, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

P371 = ggarrange(P371N, P371AA, P371AL, P371AT , ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," No371/1"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

P371


WTN = ggarrange(R9a, G9a, B9a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
WTAL = ggarrange(R10a, G10a, B10a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
WTAT = ggarrange(R9b, G9b, B9b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
WTAA = ggarrange(R10b, G10b, #B10b, 
                 V, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

WT = ggarrange(WTN, WTAA, WTAL, WTAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

WT


ApnkoN = ggarrange(R15a, G15a, B15a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
ApnkoAL = ggarrange(R16a, G16a, B16a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
ApnkoAT = ggarrange(R15b, G15b, B15b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
ApnkoAA = ggarrange(R16b, G16b, #B16b, 
                    V, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

Apnko = ggarrange(ApnkoN, ApnkoAA, ApnkoAL, ApnkoAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"~Delta~"apnC"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

Apnko


CptdelN = ggarrange(R70a, G70a, B70a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
CptdelAL = ggarrange(R69a, G69a, B69a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
CptdelAT = ggarrange(R68b, G68b, B68b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
CptdelAA = ggarrange(R69b, G69b, #B69b, 
                     V, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

Cptdel = ggarrange(CptdelN, CptdelAA, CptdelAL, CptdelAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"~Delta~"ociA"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

Cptdel



MVN = ggarrange(R74a, G74a, B74a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MVAL = ggarrange(R75a, G75a, B75a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MVAT = ggarrange(R74b, G74b, B74b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MVAA = ggarrange(R75b, G75b, #B75b, 
                 V, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

MV = ggarrange(MVN, MVAA, MVAL, MVAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"~Delta~"mvdC"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

MV


dD2N = ggarrange(R80a, G80a, B80a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
dD2AL = ggarrange(R81a, G81a, B81a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
dD2AT = ggarrange(R80b, G80b, B80b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
dD2AA = ggarrange(R81b, G81b, #B81b,
                  V, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2 = ggarrange(dD2N, dD2AA, dD2AL, dD2AT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"~Delta~"mcyD"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

dD2

######

row1 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A488", angle = 90, size = 10) + theme_void()

row3 = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


row = ggarrange(row1, row2, row3, ncol = 1)

Combined = row + Maer + plot_spacer() + PCC6803 + plot_spacer() + P371 + plot_spacer() + WT + 
  row + Apnko + plot_spacer() + Cptdel + plot_spacer() + MV + plot_spacer() + dD2 +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

Combined ##Save 4000/1768



######BODIOY IMAGES
################
##################
#####################
###########################
########################
###########################
#########################
#################################
################
##################
#####################
###########################
########################
###########################
#########################
#################################
################
##################
#####################
###########################
########################

###
##############################################################################################################
#CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL CONTROL
##############################################################################################################
###

##Maer
#Control+BODI
R10a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10aR.png"
G10a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10aG.png"
B10a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10aB.png"
#Negative Control
R6apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6aR.png"
G6apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6aG.png"
B6apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6aB.png"

R10a2 = readPNG(R10a2path)
G10a2 = readPNG(G10a2path)
B10a2 = readPNG(B10a2path)  

R10a2 = ggplot() + background_image(R10a2)
G10a2 = ggplot() + background_image(G10a2)
B10a2 = ggplot() + background_image(B10a2)

R6a = readPNG(R6apath)
G6a = readPNG(G6apath)
B6a = readPNG(B6apath)   

R6a = ggplot() + background_image(R6a) 
G6a = ggplot() + background_image(G6a)
B6a = ggplot() + background_image(B6a)

MaerNC = ggarrange(R6a, G6a, B6a, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MaerBC = ggarrange(R10a2, G10a2, B10a2, ncol=1) + ggtitle(" Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MaerCB = ggarrange(MaerNC, MaerBC, ncol = 2) + ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 20)) 

MaerCB

#PCC6803

#Control+BODI
R16a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16aR.png"
G16a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16aG.png"
B16a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16aB.png"
#Negative Control
R12apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12aR.png"
G12apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12aG.png"
B12apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12aB.png"

R16a2 = readPNG(R16a2path)
G16a2 = readPNG(G16a2path)
B16a2 = readPNG(B16a2path)  

R16a2 = ggplot() + background_image(R16a2)
G16a2 = ggplot() + background_image(G16a2)
B16a2 = ggplot() + background_image(B16a2)

R12a = readPNG(R12apath)
G12a = readPNG(G12apath)
B12a = readPNG(B12apath)   

R12a = ggplot() + background_image(R12a) 
G12a = ggplot() + background_image(G12a)
B12a = ggplot() + background_image(B12a)

PCC6803NC = ggarrange(R12a, G12a, B12a, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
PCC6803BC = ggarrange(R16a2, G16a2, B16a2, ncol=1) + ggtitle("Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

PCC6803CB = ggarrange(MaerNC, MaerBC, ncol = 2) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803CB

##P371
#Control+BODI

R5apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5aR.png"
G5apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5aG.png"
B5apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5aB.png"
#Negative Control
R1a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1aR.png"
G1a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1aG.png"
B1a2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1aB.png"

R5a = readPNG(R5apath)
G5a = readPNG(G5apath)
B5a = readPNG(B5apath)  

R5a = ggplot() + background_image(R5a)
G5a = ggplot() + background_image(G5a)
B5a = ggplot() + background_image(B5a)

R1a2 = readPNG(R1a2path)
G1a2 = readPNG(G1a2path)
B1a2 = readPNG(B1a2path)   

R1a2 = ggplot() + background_image(R1a2) 
G1a2 = ggplot() + background_image(G1a2)
B1a2 = ggplot() + background_image(B1a2)

P371NC = ggarrange(R1a2, G1a2, B1a2, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
P371BC = ggarrange(R5a, G5a, B5a, ncol=1) + ggtitle("Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

P371CB = ggarrange(P371NC, P371BC, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

P371CB


##WT
#Control + BODI
R11apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/11aR.png"
G11apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/11aG.png"
B11apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/11aB.png"
#Control Negative
R7apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/7aR.png"
G7apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/7aG.png"
B7apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/7aB.png"

R11a = readPNG(R11apath)
G11a = readPNG(G11apath)
B11a = readPNG(B11apath)  

R11a = ggplot() + background_image(R11a)
G11a = ggplot() + background_image(G11a)
B11a = ggplot() + background_image(B11a)

R7a = readPNG(R7apath)
G7a = readPNG(G7apath)
B7a = readPNG(B7apath)

R7a = ggplot() + background_image(R7a) 
G7a = ggplot() + background_image(G7a)
B7a = ggplot() + background_image(B7a)

WTNC = ggarrange(R7a, G7a, B7a, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
WTBC = ggarrange(R11a, G11a, B11a, ncol=1) + ggtitle("Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

WTCB = ggarrange(WTNC, WTBC, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

WTCB

##Apnko
#Control + BODI
R17apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/17aR.png"
G17apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/17aG.png"
B17apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/17aB.png"
##Control Negative
R13apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/13aR.png"
G13apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/13aG.png"
B13apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/13aB.png"

R17a = readPNG(R17apath)
G17a = readPNG(G17apath)
B17a = readPNG(B17apath)

R17a = ggplot() + background_image(R17a)
G17a = ggplot() + background_image(G17a)
B17a = ggplot() + background_image(B17a)

R13a = readPNG(R13apath)
G13a = readPNG(G13apath)
B13a = readPNG(B13apath)   

R13a = ggplot() + background_image(R13a) 
G13a = ggplot() + background_image(G13a)
B13a = ggplot() + background_image(B13a)

ApnkoNC = ggarrange(R13a, G13a, B13a, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
ApnkoBC = ggarrange(R17a, G17a, B17a, ncol=1) + ggtitle("Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

ApnkoCB = ggarrange(ApnkoNC, ApnkoBC, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

ApnkoCB

##Cptdel
#Control + BODI
R84apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/84aR.png"
G84apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/84aG.png"
B84apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/84aB.png"
#Control Negative
R66apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/66aR.png"
G66apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/66aG.png"
B66apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/66aB.png"

R84a = readPNG(R84apath)
G84a = readPNG(G84apath)
B84a = readPNG(B84apath) 

R84a = ggplot() + background_image(R84a) 
G84a = ggplot() + background_image(G84a)
B84a = ggplot() + background_image(B84a)

R66a = readPNG(R66apath)
G66a = readPNG(G66apath)
B66a = readPNG(B66apath)  

R66a = ggplot() + background_image(R66a)
G66a = ggplot() + background_image(G66a)
B66a = ggplot() + background_image(B66a)

CptdelNC = ggarrange(R66a, G66a, B66a, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
CptdelBC = ggarrange(R84a, G84a, B84a, ncol=1) + ggtitle("Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

CptdelCB = ggarrange(CptdelNC, CptdelBC, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

CptdelCB

##MV
#Control + BODI
R86apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/86aR.png"
G86apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/86aG.png"
B86apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/86aB.png"
#Control Negative
R72apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/72aR.png"
G72apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/72aG.png"
B72apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/72aB.png"

R86a = readPNG(R86apath)
G86a = readPNG(G86apath)
B86a = readPNG(B86apath) 

R86a = ggplot() + background_image(R86a) 
G86a = ggplot() + background_image(G86a)
B86a = ggplot() + background_image(B86a)

R72a = readPNG(R72apath)
G72a = readPNG(G72apath)
B72a = readPNG(B72apath)

R72a = ggplot() + background_image(R72a)
G72a = ggplot() + background_image(G72a)
B72a = ggplot() + background_image(B72a)


MVNC = ggarrange(R72a, G72a, B72a, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MVBC = ggarrange(R86a, G86a, B86a, ncol=1) + ggtitle("Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MVCB = ggarrange(MVNC, MVBC, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

MVCB

##dD2
#Control + BODI
R88apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/88aR.png"
G88apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/88aG.png"
B88apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/88aB.png"
#Control Negative
R78apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/78aR.png"
G78apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/78aG.png"
B78apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/78aB.png"

R88a = readPNG(R88apath)
G88a = readPNG(G88apath)
B88a = readPNG(B88apath)   

R88a = ggplot() + background_image(R88a) 
G88a = ggplot() + background_image(G88a)
B88a = ggplot() + background_image(B88a)

R78a = readPNG(R78apath)
G78a = readPNG(G78apath)
B78a = readPNG(B78apath)  

R78a = ggplot() + background_image(R78a)
G78a = ggplot() + background_image(G78a)
B78a = ggplot() + background_image(B78a)

dD2NC = ggarrange(R78a, G78a, B78a, ncol=1) + ggtitle("Control BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
dD2BC = ggarrange(R88a, G88a, B88a, ncol=1) + ggtitle("Control BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

dD2CB = ggarrange(dD2NC, dD2BC, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2CB

###Combined

row1b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "BODIPY", angle = 90, size = 10) + theme_void()

row3b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


rowb = ggarrange(row1b, row2b, row3b, ncol = 1)

rowb

CombinedBC = rowb + MaerCB + plot_spacer() + PCC6803CB + plot_spacer() + P371CB + plot_spacer() + WTCB + 
  rowb + ApnkoCB+ plot_spacer() + CptdelCB + plot_spacer() + MVCB + plot_spacer() + dD2CB +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

CombinedBC


###
##############################################################################################################
#PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR PROP TYR
##############################################################################################################
###

##Maer
#Tyr+BODI
R10b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10bR.png"
G10b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10bG.png"
B10b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10bB.png"
#Negative Tyr
R6bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6bR.png"
G6bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6bG.png"
B6bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6bB.png"

R10b2 = readPNG(R10b2path)
G10b2 = readPNG(G10b2path)
B10b2 = readPNG(B10b2path)  

R10b2 = ggplot() + background_image(R10b2)
G10b2 = ggplot() + background_image(G10b2)
B10b2 = ggplot() + background_image(B10b2)

R6b = readPNG(R6bpath)
G6b = readPNG(G6bpath)
B6b = readPNG(B6bpath)   

R6b = ggplot() + background_image(R6b) 
G6b = ggplot() + background_image(G6b)
B6b = ggplot() + background_image(B6b)

MaerNT = ggarrange(R6b, G6b, B6b, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MaerBT = ggarrange(R10b2, G10b2, B10b2, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MaerTB = ggarrange(MaerNT, MaerBT, ncol = 2) + ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 20)) 

MaerTB

#PCC6803

#Tyr+BODI
R16b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16bR.png"
G16b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16bG.png"
B16b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16bB.png"
#Tyr Control
R12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12bR.png"
G12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12bG.png"
B12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12bB.png"

R16b2 = readPNG(R16b2path)
G16b2 = readPNG(G16b2path)
B16b2 = readPNG(B16b2path)  

R16b2 = ggplot() + background_image(R16b2)
G16b2 = ggplot() + background_image(G16b2)
B16b2 = ggplot() + background_image(B16b2)

R12b = readPNG(R12bpath)
G12b = readPNG(G12bpath)
B12b = readPNG(B12bpath)   

R12b = ggplot() + background_image(R12b) 
G12b = ggplot() + background_image(G12b)
B12b = ggplot() + background_image(B12b)

PCC6803NT = ggarrange(R12b, G12b, B12b, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
PCC6803BT = ggarrange(R16b2, G16b2, B16b2, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

PCC6803TB = ggarrange(PCC6803NT, PCC6803BT, ncol = 2) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803TB

##P371
#Tyr+BODI

R5bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5bR.png"
G5bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5bG.png"
B5bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5bB.png"
#Tyr Control
R1b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1bR.png"
G1b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1bG.png"
B1b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1bB.png"

R5b = readPNG(R5bpath)
G5b = readPNG(G5bpath)
B5b = readPNG(B5bpath)  

R5b = ggplot() + background_image(R5b)
G5b = ggplot() + background_image(G5b)
B5b = ggplot() + background_image(B5b)

R1b2 = readPNG(R1b2path)
G1b2 = readPNG(G1b2path)
B1b2 = readPNG(B1b2path)   

R1b2 = ggplot() + background_image(R1b2) 
G1b2 = ggplot() + background_image(G1b2)
B1b2 = ggplot() + background_image(B1b2)

P371NT = ggarrange(R1b2, G1b2, B1b2, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
P371BT = ggarrange(R5b, G5b, B5b, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

P371TB = ggarrange(P371NT, P371BT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

P371TB


##WT
#Tyr + BODI
R11bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/11bR.png"
G11bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/11bG.png"
B11bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/11bB.png"
#Tyr Negative
R7bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/7bR.png"
G7bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/7bG.png"
B7bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/7bB.png"

R11b = readPNG(R11bpath)
G11b = readPNG(G11bpath)
B11b = readPNG(B11bpath)  

R11b = ggplot() + background_image(R11b)
G11b = ggplot() + background_image(G11b)
B11b = ggplot() + background_image(B11b)

R7b = readPNG(R7bpath)
G7b = readPNG(G7bpath)
B7b = readPNG(B7bpath)

R7b = ggplot() + background_image(R7b) 
G7b = ggplot() + background_image(G7b)
B7b = ggplot() + background_image(B7b)

WTNT = ggarrange(R7b, G7b, B7b, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
WTBT = ggarrange(R11b, G11b, B11b, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

WTTB = ggarrange(WTNT, WTBT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

WTTB

##Apnko
#Tyr + BODI
R17bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/17bR.png"
G17bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/17bG.png"
B17bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/17bB.png"
#Tyr Negative
R13bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/13bR.png"
G13bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/13bG.png"
B13bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/13bB.png"

R17b = readPNG(R17bpath)
G17b = readPNG(G17bpath)
B17b = readPNG(B17bpath)

R17b = ggplot() + background_image(R17b)
G17b = ggplot() + background_image(G17b)
B17b = ggplot() + background_image(B17b)

R13b = readPNG(R13bpath)
G13b = readPNG(G13bpath)
B13b = readPNG(B13bpath)   

R13b = ggplot() + background_image(R13b) 
G13b = ggplot() + background_image(G13b)
B13b = ggplot() + background_image(B13b)

ApnkoNT = ggarrange(R13b, G13b, B13b, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
ApnkoBT = ggarrange(R17b, G17b, B17b, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

ApnkoTB = ggarrange(ApnkoNT, ApnkoBT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

ApnkoTB

##Cptdel
#Tyr + BODI
R84bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/84bR.png"
G84bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/84bG.png"
B84bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/84bB.png"
#Tyr Negative
R66bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/66bR.png"
G66bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/66bG.png"
B66bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/66bB.png"

R84b = readPNG(R84bpath)
G84b = readPNG(G84bpath)
B84b = readPNG(B84bpath) 

R84b = ggplot() + background_image(R84b) 
G84b = ggplot() + background_image(G84b)
B84b = ggplot() + background_image(B84b)

R66b = readPNG(R66bpath)
G66b = readPNG(G66bpath)
B66b = readPNG(B66bpath)  

R66b = ggplot() + background_image(R66b)
G66b = ggplot() + background_image(G66b)
B66b = ggplot() + background_image(B66b)

CptdelNT = ggarrange(R66b, G66b, B66b, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
CptdelBT = ggarrange(R84b, G84b, B84b, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

CptdelTB = ggarrange(CptdelNT, CptdelBT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

CptdelTB

##MV
#Tyr + BODI
R86bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/86bR.png"
G86bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/86bG.png"
B86bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/86bB.png"
#Tyr Negative
R72bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/72bR.png"
G72bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/72bG.png"
B72bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/72bB.png"

R86b = readPNG(R86bpath)
G86b = readPNG(G86bpath)
B86b = readPNG(B86bpath) 

R86b = ggplot() + background_image(R86b) 
G86b = ggplot() + background_image(G86b)
B86b = ggplot() + background_image(B86b)

R72b = readPNG(R72bpath)
G72b = readPNG(G72bpath)
B72b = readPNG(B72bpath)

R72b = ggplot() + background_image(R72b)
G72b = ggplot() + background_image(G72b)
B72b = ggplot() + background_image(B72b)


MVNT = ggarrange(R72b, G72b, B72b, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MVBT = ggarrange(R86b, G86b, B86b, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MVTB = ggarrange(MVNT, MVBT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

MVTB

##dD2
#Tyr + BODI
R88bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/88bR.png"
G88bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/88bG.png"
B88bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/88bB.png"
#Tyr Negative
R78bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/78bR.png"
G78bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/78bG.png"
B78bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/78bB.png"

R88b = readPNG(R88bpath)
G88b = readPNG(G88bpath)
B88b = readPNG(B88bpath)   

R88b = ggplot() + background_image(R88b) 
G88b = ggplot() + background_image(G88b)
B88b = ggplot() + background_image(B88b)

R78b = readPNG(R78bpath)
G78b = readPNG(G78bpath)
B78b = readPNG(B78bpath)  

R78b = ggplot() + background_image(R78b)
G78b = ggplot() + background_image(G78b)
B78b = ggplot() + background_image(B78b)

dD2NT = ggarrange(R78b, G78b, B78b, ncol=1) + ggtitle("Prop-Tyr BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
dD2BT = ggarrange(R88b, G88b, B88b, ncol=1) + ggtitle("Prop-Tyr BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

dD2TB = ggarrange(dD2NT, dD2BT, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2TB

###Combined

row1b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "BODIPY", angle = 90, size = 10) + theme_void()

row3b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


rowb = ggarrange(row1b, row2b, row3b, ncol = 1)

rowb

CombinedBT = rowb + MaerTB + plot_spacer() + PCC6803TB + plot_spacer() + P371TB + plot_spacer() + WTTB + 
  rowb + ApnkoTB+ plot_spacer() + CptdelTB + plot_spacer() + MVTB + plot_spacer() + dD2TB +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

CombinedBT

###
##############################################################################################################
#PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS PROP LYS
##############################################################################################################
####

#Maer
#Lys+BODI
R10b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10bR.png"
G10b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10bG.png"
B10b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/10bB.png"
#Negative Lys
R6bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6bR.png"
G6bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6bG.png"
B6bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/6bB.png"

R10b2 = readPNG(R10b2path)
G10b2 = readPNG(G10b2path)
B10b2 = readPNG(B10b2path)  

R10b2 = ggplot() + background_image(R10b2)
G10b2 = ggplot() + background_image(G10b2)
B10b2 = ggplot() + background_image(B10b2)

R6b = readPNG(R6bpath)
G6b = readPNG(G6bpath)
B6b = readPNG(B6bpath)   

R6b = ggplot() + background_image(R6b) 
G6b = ggplot() + background_image(G6b)
B6b = ggplot() + background_image(B6b)

MaerNL = ggarrange(R6b, G6b, B6b, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MaerBL = ggarrange(R10b2, G10b2, B10b2, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MaerLB = ggarrange(MaerNL, MaerBL, ncol = 2) + ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 20)) 

MaerLB

#PCC6803

#Tyr+BODI
R16b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16bR.png"
G16b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16bG.png"
B16b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/16bB.png"
#Tyr Control
R12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12bR.png"
G12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12bG.png"
B12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/12bB.png"

R16b2 = readPNG(R16b2path)
G16b2 = readPNG(G16b2path)
B16b2 = readPNG(B16b2path)  

R16b2 = ggplot() + background_image(R16b2)
G16b2 = ggplot() + background_image(G16b2)
B16b2 = ggplot() + background_image(B16b2)

R12b = readPNG(R12bpath)
G12b = readPNG(G12bpath)
B12b = readPNG(B12bpath)   

R12b = ggplot() + background_image(R12b) 
G12b = ggplot() + background_image(G12b)
B12b = ggplot() + background_image(B12b)

PCC6803NL = ggarrange(R12b, G12b, B12b, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
PCC6803BL = ggarrange(R16b2, G16b2, B16b2, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

PCC6803LB = ggarrange(PCC6803NL, PCC6803BL, ncol = 2) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803LB

##P371
#Lys+BODI

R5bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5bR.png"
G5bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5bG.png"
B5bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/5bB.png"
#Lys Control
R1b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1bR.png"
G1b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1bG.png"
B1b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/1bB.png"

R5b = readPNG(R5bpath)
G5b = readPNG(G5bpath)
B5b = readPNG(B5bpath)  

R5b = ggplot() + background_image(R5b)
G5b = ggplot() + background_image(G5b)
B5b = ggplot() + background_image(B5b)

R1b2 = readPNG(R1b2path)
G1b2 = readPNG(G1b2path)
B1b2 = readPNG(B1b2path)   

R1b2 = ggplot() + background_image(R1b2) 
G1b2 = ggplot() + background_image(G1b2)
B1b2 = ggplot() + background_image(B1b2)

P371NL = ggarrange(R1b2, G1b2, B1b2, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
P371BL = ggarrange(R5b, G5b, B5b, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

P371LB = ggarrange(P371NL, P371BL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

P371LB


##WT
#Lys + BODI
R12apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/12aR.png"
G12apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/12aG.png"
B12apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/12aB.png"
#Lys Negative
R8apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/8aR.png"
G8apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/8aG.png"
B8apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/8aB.png"

R12a = readPNG(R12apath)
G12a = readPNG(G12apath)
B12a = readPNG(B12apath)  

R12a = ggplot() + background_image(R12a)
G12a = ggplot() + background_image(G12a)
B12a = ggplot() + background_image(B12a)

R8a = readPNG(R8apath)
G8a = readPNG(G8apath)
B8a = readPNG(B8apath)

R8a = ggplot() + background_image(R8a) 
G8a = ggplot() + background_image(G8a)
B8a = ggplot() + background_image(B8a)

WTNL = ggarrange(R8a, G8a, B8a, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
WTBL = ggarrange(R12a, G12a, B12a, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

WTLB = ggarrange(WTNL, WTBL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

WTLB

##Apnko
#Lys + BODI
R18apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/18aR.png"
G18apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/18aG.png"
B18apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/18aB.png"
#Lys Negative
R14apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/14aR.png"
G14apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/14aG.png"
B14apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/14aB.png"

R18a = readPNG(R18apath)
G18a = readPNG(G18apath)
B18a = readPNG(B18apath)

R18a = ggplot() + background_image(R18a)
G18a = ggplot() + background_image(G18a)
B18a = ggplot() + background_image(B18a)

R14a = readPNG(R14apath)
G14a = readPNG(G14apath)
B14a = readPNG(B14apath)   

R14a = ggplot() + background_image(R14a) 
G14a = ggplot() + background_image(G14a)
B14a = ggplot() + background_image(B14a)

ApnkoNL = ggarrange(R14a, G14a, B14a, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
ApnkoBL = ggarrange(R18a, G18a, B18a, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

ApnkoLB = ggarrange(ApnkoNL, ApnkoBL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

ApnkoLB

##Cptdel
#Lys + BODI
R85apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/85aR.png"
G85apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/85aG.png"
B85apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/85aB.png"
#Lys Negative
R67apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/67aR.png"
G67apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/67aG.png"
B67apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/67aB.png"

R85a = readPNG(R85apath)
G85a = readPNG(G85apath)
B85a = readPNG(B85apath) 

R85a = ggplot() + background_image(R85a) 
G85a = ggplot() + background_image(G85a)
B85a = ggplot() + background_image(B85a)

R67a = readPNG(R67apath)
G67a = readPNG(G67apath)
B67a = readPNG(B67apath)  

R67a = ggplot() + background_image(R67a)
G67a = ggplot() + background_image(G67a)
B67a = ggplot() + background_image(B67a)

CptdelNL = ggarrange(R67a, G67a, B67a, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
CptdelBL = ggarrange(R85a, G85a, B85a, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

CptdelLB = ggarrange(CptdelNL, CptdelBL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

CptdelLB

##MV
#Tyr + BODI
R87apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/87aR.png"
G87apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/87aG.png"
B87apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/87aB.png"
#Tyr Negative
R73apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/73aR.png"
G73apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/73aG.png"
B73apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/73aB.png"

R87a = readPNG(R87apath)
G87a = readPNG(G87apath)
B87a = readPNG(B87apath) 

R87a = ggplot() + background_image(R87a) 
G87a = ggplot() + background_image(G87a)
B87a = ggplot() + background_image(B87a)

R73a = readPNG(R73apath)
G73a = readPNG(G73apath)
B73a = readPNG(B73apath)

R73a = ggplot() + background_image(R73a)
G73a = ggplot() + background_image(G73a)
B73a = ggplot() + background_image(B73a)


MVNL = ggarrange(R73a, G73a, B73a, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MVBL = ggarrange(R87a, G87a, B87a, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MVLB = ggarrange(MVNL, MVBL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

MVLB

##dD2
#Lys + BODI
R89apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/89aR.png"
G89apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/89aG.png"
B89apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/89aB.png"
#Lys Negative
R79apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/79aR.png"
G79apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/79aG.png"
B79apath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/79aB.png"

R89a = readPNG(R89apath)
G89a = readPNG(G89apath)
B89a = readPNG(B89apath)   

R89a = ggplot() + background_image(R89a) 
G89a = ggplot() + background_image(G89a)
B89a = ggplot() + background_image(B89a)

R79a = readPNG(R79apath)
G79a = readPNG(G79apath)
B79a = readPNG(B79apath)  

R79a = ggplot() + background_image(R79a)
G79a = ggplot() + background_image(G79a)
B79a = ggplot() + background_image(B79a)

dD2NL = ggarrange(R79a, G79a, B79a, ncol=1) + ggtitle("Prop-Lys BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
dD2BL = ggarrange(R89a, G89a, B89a, ncol=1) + ggtitle("Prop-Lys BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

dD2LB = ggarrange(dD2NL, dD2BL, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2LB

###Combined

row1b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "BODIPY", angle = 90, size = 10) + theme_void()

row3b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


rowb = ggarrange(row1b, row2b, row3b, ncol = 1)

rowb

CombinedBL = rowb + MaerLB + plot_spacer() + PCC6803LB + plot_spacer() + P371LB + plot_spacer() + WTLB + 
  rowb + ApnkoLB+ plot_spacer() + CptdelLB + plot_spacer() + MVLB + plot_spacer() + dD2LB +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

CombinedBL

###
##############################################################################################################
#PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ PHE-AZ
##############################################################################################################
###

##Maer
#Phe-Az+BODI
R11b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/11bR.png"
G11b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/11bG.png"
B11b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/11bB.png"
#Negative Phe-Az
R7b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/7bR.png"
G7b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/7bG.png"
B7b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Maer/7bB.png"

R11b2 = readPNG(R11b2path)
G11b2 = readPNG(G11b2path)
B11b2 = readPNG(B11b2path)  

R11b2 = ggplot() + background_image(R11b2)
G11b2 = ggplot() + background_image(G11b2)
B11b2 = ggplot() + background_image(B11b2)

R7b2 = readPNG(R7b2path)
G7b2 = readPNG(G7b2path)
B7b2 = readPNG(B7b2path)   

R7b2 = ggplot() + background_image(R7b2) 
G7b2 = ggplot() + background_image(G7b2)
B7b2 = ggplot() + background_image(B7b2)

MaerNA = ggarrange(R7b2, G7b2, B7b2, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MaerBA = ggarrange(R11b2, G11b2, B11b2, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MaerAB = ggarrange(MaerNA, MaerBA, ncol = 2) + ggtitle("M. aeruginosa") + 
  theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 20)) 

MaerAB

#PCC6803

#Phe-Az+BODI
R17b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/17bR.png"
G17b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/17bG.png"
B17b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/17bB.png"
#Phe-Az Control
R13b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/13bR.png"
G13b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/13bG.png"
B13b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/PCC6803/13bB.png"

R17b2 = readPNG(R17b2path)
G17b2 = readPNG(G17b2path)
B17b2 = readPNG(B17b2path)  

R17b2 = ggplot() + background_image(R17b2)
G17b2 = ggplot() + background_image(G17b2)
B17b2 = ggplot() + background_image(B17b2)

R13b2 = readPNG(R13b2path)
G13b2 = readPNG(G13b2path)
B13b2 = readPNG(B13b2path)   

R13b2 = ggplot() + background_image(R13b2) 
G13b2 = ggplot() + background_image(G13b2)
B13b2 = ggplot() + background_image(B13b2)

PCC6803NA = ggarrange(R13b2, G13b2, B13b2, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
PCC6803BA = ggarrange(R17b2, G17b2, B17b2, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

PCC6803AB = ggarrange(PCC6803NA, PCC6803BA, ncol = 2) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803AB

##P371
#Phe-Az+BODI

R6b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/6bR.png"
G6b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/6bG.png"
B6b2path = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/6bB.png"
#Phe-Az Control
R2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/2bR.png"
G2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/2bG.png"
B2bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/371/2bB.png"

R6b2 = readPNG(R6b2path)
G6b2 = readPNG(G6b2path)
B6b2 = readPNG(B6b2path)  

R6b2 = ggplot() + background_image(R6b2)
G6b2 = ggplot() + background_image(G6b2)
B6b2 = ggplot() + background_image(B6b2)

R2b = readPNG(R2bpath)
G2b = readPNG(G2bpath)
B2b = readPNG(B2bpath)   

R2b = ggplot() + background_image(R2b) 
G2b = ggplot() + background_image(G2b)
B2b = ggplot() + background_image(B2b)

P371NA = ggarrange(R2b, G2b, B2b, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
P371BA = ggarrange(R6b2, G6b2, B6b2, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

P371AB = ggarrange(P371NA, P371BA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," No371/1"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

P371AB

##WT
#Tyr + BODI
R12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/12bR.png"
G12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/12bG.png"
B12bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/12bB.png"
#Tyr Negative
R8bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/8bR.png"
G8bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/8bG.png"
B8bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/126-8/8bB.png"

R12b = readPNG(R12bpath)
G12b = readPNG(G12bpath)
B12b = readPNG(B12bpath)  

R12b = ggplot() + background_image(R12b)
G12b = ggplot() + background_image(G12b)
B12b = ggplot() + background_image(B12b)

R8b = readPNG(R8bpath)
G8b = readPNG(G8bpath)
B8b = readPNG(B8bpath)

R8b = ggplot() + background_image(R8b) 
G8b = ggplot() + background_image(G8b)
B8b = ggplot() + background_image(B8b)

WTNA = ggarrange(R8b, G8b, B8b, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
WTBA = ggarrange(R12b, G12b, B12b, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

WTAB = ggarrange(WTNA, WTBA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

WTAB

##Apnko
#Phe-Az + BODI
R16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bR.png"
G16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bG.png"
B16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bB.png"
#Phe-Az NegatiVE
R16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bR.png"
G16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bG.png"
B16bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Apnko/16bB.png"

R16b = readPNG(R16bpath)
G16b = readPNG(G16bpath)
B16b = readPNG(B16bpath)

R16b = ggplot() + background_image(R16b)
G16b = ggplot() + background_image(G16b)
B16b = ggplot() + background_image(B16b)

R16b = readPNG(R16bpath)
G16b = readPNG(G16bpath)
B16b = readPNG(B16bpath)   

R16b = ggplot() + background_image(R16b) 
G16b = ggplot() + background_image(G16b)
B16b = ggplot() + background_image(B16b)

ApnkoNA = ggarrange(R16b, G16b, B16b, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
ApnkoBA = ggarrange(R16b, G16b, B16b, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

ApnkoAB = ggarrange(ApnkoNA, ApnkoBA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"apnC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

ApnkoAB

##Cptdel
#Phe-Az + BODI
R85bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/85bR.png"
G85bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/85bG.png"
B85bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/85bB.png"
#Phe-Az Negative
R67bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/67bR.png"
G67bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/67bG.png"
B67bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/Cptdel/67bB.png"

R85b = readPNG(R85bpath)
G85b = readPNG(G85bpath)
B85b = readPNG(B85bpath) 

R85b = ggplot() + background_image(R85b) 
G85b = ggplot() + background_image(G85b)
B85b = ggplot() + background_image(B85b)

R67b = readPNG(R67bpath)
G67b = readPNG(G67bpath)
B67b = readPNG(B67bpath)  

R67b = ggplot() + background_image(R67b)
G67b = ggplot() + background_image(G67b)
B67b = ggplot() + background_image(B67b)

CptdelNA = ggarrange(R67b, G67b, B67b, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
CptdelBA = ggarrange(R85b, G85b, B85b, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

CptdelAB = ggarrange(CptdelNA, CptdelBA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"ociA"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

CptdelAB

##MV
#Phe-Az + BODI
R77bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/77bR.png"
G77bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/77bG.png"
B77bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/77bB.png"
#Phe-Az Negative
R73bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/73bR.png"
G73bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/73bG.png"
B73bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/MV/73bB.png"

R77b = readPNG(R77bpath)
G77b = readPNG(G77bpath)
B77b = readPNG(B77bpath) 

R77b = ggplot() + background_image(R77b) 
G77b = ggplot() + background_image(G77b)
B77b = ggplot() + background_image(B77b)

R73b = readPNG(R73bpath)
G73b = readPNG(G73bpath)
B73b = readPNG(B73bpath)

R73b = ggplot() + background_image(R73b)
G73b = ggplot() + background_image(G73b)
B73b = ggplot() + background_image(B73b)


MVNA = ggarrange(R73b, G73b, B73b, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
MVBA = ggarrange(R77b, G77b, B77b, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

MVAB = ggarrange(MVNA, MVBA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mvdC"))) + 
  theme(plot.title = element_text(hjust = 0.5, size = 20))

MVAB

##dD2
#Phe-Az + BODI
R89bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/89bR.png"
G89bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/89bG.png"
B89bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/89bB.png"
#Phe-Az Negative
R79bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/79bR.png"
G79bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/79bG.png"
B79bpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/dD2/79bB.png"

R89b = readPNG(R89bpath)
G89b = readPNG(G89bpath)
B89b = readPNG(B89bpath)   

R89b = ggplot() + background_image(R89b) 
G89b = ggplot() + background_image(G89b)
B89b = ggplot() + background_image(B89b)

R79b = readPNG(R79bpath)
G79b = readPNG(G79bpath)
B79b = readPNG(B79bpath)  

R79b = ggplot() + background_image(R79b)
G79b = ggplot() + background_image(G79b)
B79b = ggplot() + background_image(B79b)

dD2NA = ggarrange(R79b, G79b, B79b, ncol=1) + ggtitle("Phe-Az BODIPY(-)") + theme(plot.title = element_text(hjust = 0.5))
dD2BA = ggarrange(R88b, G88b, B88b, ncol=1) + ggtitle("Phe-Az BODIPY(+)") + theme(plot.title = element_text(hjust = 0.5))

dD2AB = ggarrange(dD2NA, dD2BA, ncol = 2) + ggtitle(expression(paste(italic("P. agardhii")," CYA126/8"~Delta~"mcyD"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

dD2AB

###Combined

row1b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "BODIPY", angle = 90, size = 10) + theme_void()

row3b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


rowb = ggarrange(row1b, row2b, row3b, ncol = 1)

rowb

CombinedBA = rowb + MaerAB + plot_spacer() + PCC6803AB + plot_spacer() + P371AB + plot_spacer() + WTAB + 
  rowb + ApnkoAB + plot_spacer() + CptdelAB + plot_spacer() + MVAB + plot_spacer() + dD2AB +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

CombinedBA

############################

scalebarpath = "D:/SLOT Project/SLOT -- R Analysis/SLOT/Microscopy Images/scalebar.png"
scalebar = readPNG(scalebarpath)   
scalebar = ggplot() + background_image(scalebar) 

scalebar

scalebarL = ggarrange(scalebar, scalebar, scalebar, ncol=1) + ggtitle("scalebar(-)") + theme(plot.title = element_text(hjust = 0.5))
scalebarR = ggarrange(scalebar, scalebar, scalebar, ncol=1) + ggtitle("scalebar(+)") + theme(plot.title = element_text(hjust = 0.5))

scalebarT = ggarrange(scalebarL, scalebarR, ncol = 2) + ggtitle(expression(paste(italic("scalebar")," scalebar"~Delta~"scalebar"))) +
  theme(plot.title = element_text(hjust = 0.5, size = 20))

row1b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "AF", angle = 90, size = 10) + theme_void()

row2b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "BODIPY", angle = 90, size = 10) + theme_void()

row3b = ggplot() + annotate(geom = "text" ,x = 3, y = 3, label = "A405", angle = 90, size = 10) + theme_void()


rowb = ggarrange(row1b, row2b, row3b, ncol = 1)

rowb
Combinedscale = rowb + scalebarT + plot_spacer() + scalebarT + plot_spacer() + scalebarT + plot_spacer() + scalebarT + 
  rowb + scalebarT + plot_spacer() + scalebarT + plot_spacer() + scalebarT + plot_spacer() + scalebarT +
  plot_layout(ncol = 8, widths = c(0.1,1,0.01,1,0.01,1,0.01,1))

Combinedscale
