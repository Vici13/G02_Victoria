#Power analysis
pwr.r.test
pwr.r.test(n=800, r=0.1, sig.level = 0.05, power = NULL, alternative = c("two.sided"))
pwr.r.test(n=800, r=0.3, sig.level = 0.05, power = NULL, alternative = c("two.sided"))
pwr.r.test(n=800, r=0.5, sig.level = 0.05, power = NULL, alternative = c("two.sided"))


pwr.r.test(n=800, r=0.1, sig.level = 0.005, power = NULL, alternative = c("two.sided"))
pwr.r.test(n=800, r=0.3, sig.level = 0.005, power = NULL, alternative = c("two.sided"))
pwr.r.test(n=800, r=0.5, sig.level = 0.005, power = NULL, alternative = c("two.sided"))


pwr.r.test(n=NULL, r=0.1, sig.level = 0.005, power = 0.9, alternative = c("two.sided"))
pwr.r.test(n=NULL, r=0.3, sig.level = 0.005, power = 0.9, alternative = c("two.sided"))
pwr.r.test(n=NULL, r=0.5, sig.level = 0.005, power = 0.9, alternative = c("two.sided"))

pwr.r.test(n=250, r=0.1, sig.level = 0.05, power = NULL, alternative = c("two.sided"))
pwr.r.test(n=250, r=0.3, sig.level = 0.05, power = NULL, alternative = c("two.sided"))
pwr.r.test(n=250, r=0.5, sig.level = 0.05, power = NULL, alternative = c("two.sided"))

#Datenansicht und Grundstatistiken

#Daten einlesen und Verzeichnis setzen

setwd("\\Users\\victo\\OneDrive - Universität Basel\\Dokumente\\gittest\\G02_Victoria")
mydata <- read.table("mydata.txt", header=T, sep="\t")

#Datenansicht und Grundstatistiken
View(mydata)
summary(mydata)

#t-Test für Extraversion nach Geschlecht
t.test(mydata$Extraversion ~ mydata$Sex)
plot(mydata$Extraversion ~ mydata$Sex)
summary(mydata$Extraversion[mydata$Sex==0])
summary(mydata$Extraversion[mydata$Sex==1])

#Umkodierung und Zusammenfassung von Sex
mydata$Sex_ch <- factor(mydata$Sex, levels=c(0,1), labels=c("female", "male"))
summary(mydata)

#Lineares Modell für Episodic Memory und Geschlecht
summary(lm(EM_SD ~ Sex_ch, data=mydata))
summary(lm(EM_LD ~ Sex_ch, data=mydata))

#Umwandlung von Sex und Filter in Faktoren
mydata$Sex <- as.factor(mydata$Sex)
mydata$Filter <- as.factor(mydata$Filter)
summary(mydata)

#Filtern der Daten und Anzahl der Zeilen nach dem Filtern
mydata <- subset(mydata, Filter == 0)
nrow(mydata)



#Reliability/Validation/Aggregation steps (Aggregation of the independent variables if meaningful (if r > 0.5))

#Prüfung der Verteilung und Grundstatistiken
# Grundstatistiken für alle drei Variablen anzeigen
summary(mydata$EM_LD)           # Memory Performance long term
summary(mydata$EM_SD)           # Memory Performance short term
summary(mydata$Extraversion) # Extraversion
summary(mydata$Sex)          # Geschlecht

#Korrelation zwischen Extraversion und Memory Performance
cor.test(mydata$Extraversion, mydata$EM_SD)
cor.test(mydata$Extraversion, mydata$EM_LD)

#Unterschiede nach Geschlecht
t.test(mydata$EM_SD ~ mydata$Sex)   # Vergleich der Memory Performance short term nach Geschlecht
t.test(mydata$EM_LD ~ mydata$Sex)   # Vergleich der Memory Performance long term nach Geschlecht
t.test(mydata$Extraversion ~ mydata$Sex)   # Vergleich der Extraversion nach Geschlecht

#Visualisierung der Verteilung nach Geschlecht
boxplot(mydata$EM_SD ~ mydata$Sex, main="Memory Performance SD nach Geschlecht", ylab="Memory Performance")
boxplot(mydata$EM_LD ~ mydata$Sex, main="Memory Performance LD nach Geschlecht", ylab="Memory Performance")
boxplot(mydata$Extraversion ~ mydata$Sex, main="Extraversion nach Geschlecht", ylab="Extraversion")


#Main analysis
#Korrelation zwischen EM_SD und EM_LD
cor(mydata$EM_SD, mydata$EM_LD, use="pairwise")

#t-Test zwischen EM_SD und EM_LD
t.test(mydata$EM_SD, mydata$EM_LD)

#Zusammenfassungen für EM_SD und EM_LD
summary(mydata$EM_SD)
summary(mydata$EM_LD)

#Erstellen einer kombinierten Gedächtnisvariable EM
mydata$EM <- (mydata$EM_SD + mydata$EM_LD)/2

#Dichteplots für EM_SD, EM_LD und EM
plot(density(mydata$EM_SD), main="Compare EM SD and LD", frame.plot=F)
lines(density(mydata$EM_LD), col="red")
lines(density(mydata$EM), col="green")

#Additional analysis
# Entferne den Filter und lade den gesamten Datensatz erneut
mydata_full <- read.table("mydata.txt", header = TRUE, sep = "\t")

# Setze den gesamten Analyseprozess erneut auf den Datensatz ohne Filter an
# z. B. Regression neu berechnen
summary(lm(EM_SD ~ Sex + Extraversion, data = mydata_full))
summary(lm(EM_LD ~ Sex + Extraversion, data = mydata_full))

# Hauptanalyse ohne Filter

# 1. Korrelation und statistische Tests
cor(mydata_full$Extraversion, mydata_full$EM_SD)                 # Korrelation zwischen Extraversion und Gedächtnisleistung SD
cor(mydata_full$Extraversion, mydata_full$EM_LD)                 # Korrelation zwischen Extraversion und Gedächtnisleistung LD
t.test(mydata_full$EM_SD ~ mydata_full$Sex)                   # t-Test für Geschlechtseffekt
t.test(mydata_full$EM_LD ~ mydata_full$Sex)                   # t-Test für Geschlechtseffekt

# 2. Hauptregression ohne Filter
main_model_full <- lm(EM_SD ~ Sex + Extraversion, data = mydata_full)
main_model_full <- lm(EM_LD ~ Sex + Extraversion, data = mydata_full)
summary(main_model_full)

# 3. Vergleich mit gefiltertem Datensatz (falls möglich, zusätzliche Dokumentation)
# Hier kannst du eine Notiz hinzufügen, ob sich relevante Effekte geändert haben.

# Ausgabe für die Sensitivity Analysis kommentieren
print("Sensitivity Analysis: Die Hauptunterschiede zwischen den Analysen mit und ohne Filter sind:")
# Notiere alle relevanten Unterschiede hier:
#Größe der Stichprobe welche Einfluss auf die Meisten Testverfahren haben


#Replication
repdata <- read.table("repdata.txt", header=T, sep="\t")
repdata <- subset(repdata, Filter==0)




