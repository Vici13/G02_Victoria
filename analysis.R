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


#read in data (try not to cry)

setwd("\\Users\\victo\\OneDrive - Universität Basel\\Dokumente\\gittest\\G02_Victoria")
mydata <- read.table("mydata.txt", header=T, sep="\t")

#look at it
View(mydata)
summary(mydata)

#look at the testosteron stuff
t.test(mydata$Testosteron ~ mydata$Sex)
plot(mydata$Testosteron ~ mydata$Sex)
summary(mydata$Testosteron[mydata$Sex==0])
summary(mydata$Testosteron[mydata$Sex==1])

mydata$Sex_ch <- factor(mydata$Sex, levels=c(0,1), labels=c("female", "male"))
summary(mydata)

summary(lm(Extraversion ~ Sex_ch, data=mydata))

mydata$Sex <- as.factor(mydata$Sex)
mydata$Filter <- as.factor(mydata$Filter)
summary(mydata)


#filter something
mydata <- subset(mydata, Filter == 0)
nrow(mydata)


#Korrelation
cor(mydata$EM_SD, mydata$EM_LD, use="pairwise")
t.test(mydata$EM_SD, mydata$EM_LD)
summary(mydata$EM_SD)
summary(mydata$EM_LD)


#fmri pictures 
mydata$EM <- (mydata$EM_SD + mydata$EM_LD)/2

plot(density(mydata$EM_SD), main="Compare EM SD and LD", frame.plot=F)
lines(density(mydata$EM_LD), col="red")
lines(density(mydata$EM), col="green")


#correlation
cor(mydata$fMRI_amy_neg_neu, mydata$fMRI_hipp_neg_neu)
plot(mydata$fMRI_amy_neg_neu, mydata$fMRI_hipp_neg_neu, pch=19)
abline(lm(mydata$fMRI_hipp_neg_neu ~ mydata$fMRI_amy_neg_neu))

summary(lm(EM ~ Sex_ch + Extraversion + fMRI_hipp_neg_neu, data=mydata))


#filtering and cleaning processes in one script
#visualization steps in one script
#analysis stepts in one script


