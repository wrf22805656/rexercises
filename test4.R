## here is still test 2##
## 01/07/2016 ##
install.packages("GenABEL")
library(GenABEL)

## this is an example of Framingham data from GAW16 ##

convert.snp.tped(tped="chrall.tped",tfam="pheno.tfam",out="chrall.raw",strand="+")


## practice ##
library(help="datasets")
library(DAAG)w
install.packages("DAAG")
library(DAAG)
datafile(file="fuel")
fuel
file.show("fuel")

?subset
subset(rainforest,wood)

acmena <- subset(rainforest, wood=="NA")
acmena
acmena <- subset(rainforest, wood=="1530")
acmena
acmena2 <- subset(rainforest, species=="Acmena smithii")
acmena2

acmena3 <- subset(rainforest, species %in% c("Acmena smithii","Acacia mabellae"))

### scatterplots ###
acmena <- subset(rainforest, species=="Acmena smithii")
plot(wood~dbh,data=acmena)
plot(wood~dbh, data=acmena, log="xy")

linearmodel <- lm(log10(wood)~log10(dbh),data=acmena)
linearmodel
abline(linearmodel)
?abline
coef(linearmodel)

## natural log ##
linearmodel2 <- lm(log(wood)~log(dbh),data=acmena)
coef(linearmodel2)



# function ##
meanandsd <- function(x){
  av <- mean(x)
  sdev <- sd(x)
  c(mean<-av,sd<-sdev)
}
meanandsd(c(100,150))
