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


MaerN = ggarrange(R1a, G1a, B1a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MaerAL = ggarrange(R2a, G2a, B2a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MaerAT = ggarrange(R1b, G1b, B1b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MaerAA = ggarrange(R2b, G2b, B2b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

Maer = ggarrange(MaerN, MaerAA, MaerAL, MaerAT, ncol = 4) + ggtitle("M. aeruginosa") + theme(plot.title = element_text(face = "italic", hjust = 0.5, size = 30)) 

Maer


PCC6803N = ggarrange(R3a, G3a, B3a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
PCC6803AL = ggarrange(R4a, G4a, B4a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
PCC6803AT = ggarrange(R3b, G3b, B3b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
PCC6803AA = ggarrange(R4b, G4b, B4b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

PCC6803 = ggarrange(PCC6803N, PCC6803AA, PCC6803AL, PCC6803AT, ncol = 4) + ggtitle(expression(paste(italic("Synechocystis sp."), " PCC6803"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

PCC6803

P371N = ggarrange(R3a2, G3a2, B3a2, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
P371AL = ggarrange(R4a2, G4a2, B4a2, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
P371AT = ggarrange(R3b2, G3b2, B3b2, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
P371AA = ggarrange(R4b2, G4b2, B4b2, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

P371 = ggarrange(P371N, P371AA, P371AL, P371AT , ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," No371/1"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

P371


WTN = ggarrange(R9a, G9a, B9a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
WTAL = ggarrange(R10a, G10a, B10a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
WTAT = ggarrange(R9b, G9b, B9b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
WTAA = ggarrange(R10b, G10b, B10b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

WT = ggarrange(WTN, WTAA, WTAL, WTAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

WT


ApnkoN = ggarrange(R15a, G15a, B15a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
ApnkoAL = ggarrange(R16a, G16a, B16a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
ApnkoAT = ggarrange(R15b, G15b, B15b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
ApnkoAA = ggarrange(R16b, G16b, B16b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

Apnko = ggarrange(ApnkoN, ApnkoAA, ApnkoAL, ApnkoAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"~Delta~"apnC"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

Apnko


CptdelN = ggarrange(R70a, G70a, B70a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
CptdelAL = ggarrange(R69a, G69a, B69a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
CptdelAT = ggarrange(R68b, G68b, B68b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
CptdelAA = ggarrange(R69b, G69b, B69b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

Cptdel = ggarrange(CptdelN, CptdelAA, CptdelAL, CptdelAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"~Delta~"ociA"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

Cptdel



MVN = ggarrange(R74a, G74a, B74a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MVAL = ggarrange(R75a, G75a, B75a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MVAT = ggarrange(R74b, G74b, B74b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
MVAA = ggarrange(R75b, G75b, B75b, ncol=1) + ggtitle("Phe-Az") + theme(plot.title = element_text(hjust = 0.5, size = 20))

MV = ggarrange(MVN, MVAA, MVAL, MVAT, ncol = 4) + ggtitle(expression(paste(italic("P. aghardii")," CYA126/8"~Delta~"mvdC"))) + theme(plot.title = element_text(hjust = 0.5, size = 30))

MV


dD2N = ggarrange(R80a, G80a, B80a, ncol=1) + ggtitle("Control") + theme(plot.title = element_text(hjust = 0.5, size = 20))
dD2AL = ggarrange(R81a, G81a, B81a, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))
dD2AT = ggarrange(R80b, G80b, B80b, ncol=1) + ggtitle("Prop-Tyr") + theme(plot.title = element_text(hjust = 0.5, size = 20))
dD2AA = ggarrange(R81b, G81b, B81b, ncol=1) + ggtitle("Prop-Lys") + theme(plot.title = element_text(hjust = 0.5, size = 20))

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


