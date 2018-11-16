min_dice<-3 #minimum number of dices
max_dice<-17 #maximum number of dices
n<-10000
x<-rep(NA,n)
for (y in 1:n){ #diese schleife n-mal wiederholen
  for (i in min_dice:max_dice) { #anzahl der würfel
    s<-sum(sample(1:6,i,replace=TRUE))
    
    if (s==17)
      
    {
      x[i+y]<- i #speichern anzahl der würfel im vektor x ab
    }
  }
}
hist(x,
     main="Travor's dice problem",
     xlab="Number of dice",
     col="blue",
     ylab="Number of experiemnts",
     xlim =c(3,9),
     ylim=c(0,1000))



# KORUP Beispiel
#simulation einer anzahl von würfeln
min_dice<-3 #minimale anzahl an würfeln
max_dice<-17 #maximale anzahl an würfeln
n<-5000
nroll<-sample(min_dice:max_dice,n,replace=TRUE)
#create output container for results
likely_roll<-rep(NA,n)
#loop trough experiments
for (i in 1:n) {
  if (sum(sample(1:6,nroll[i],replace=TRUE))==17) {
    likely_roll[i]<-nroll[i]
  }
}
#plot histogram of rolls
plot(table(likely_roll), col="green", lwd=4,
     xlab="Number of dice", ylab="Number of experiments",
     cex.lab=1.2)



    

