#a)Is there any difference in fares by different class of tickets?
#use titanic dataset

boxplot(fare~pclass,data= titanic,
        main="Fares Versus Pclass",xlab="Fares",ylab="Class",col=topo.colors(3))

#b)Is there any association with Passenger class and gender?
#stacked bar chart

counts<-table(titanic$sex,titanic$pclass)
barplot(counts, main = "Distribution of Class by gender", xlab="Pclass", col=c("blue", "red"), legend = c("Female","Male"), names.arg = c("Pclass1st", "Pclass2nd","Pclass3rd"))
