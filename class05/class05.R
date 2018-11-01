#' ---
#' title: "Class 05"
#' output: github_document
#' ---

#' This is **regular text** that we could have Rmd documet

# Baby weight with age
weight<- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

plot(weight,typ="b",pch=15,cex=1.5,lwd=2,ylim=c(2,10),xlab="Age (months)",ylab="Weight (kg)")



counts<- read.table("bimm143_05_rstats/feature_counts.txt", header= TRUE, sep = "\t")

counts$Count
barplot(counts$Count, names.arg = counts$Feature, horiz=TRUE, las=1, main="Number of features in the mouse GRCm38 genome")
par(mar=c(3.1, 11.1, 4.1, 2))
barplot(counts$Count, names.arg=counts$Feature, horiz=TRUE, ylab="", main="Number of features in the mouse GRCm38 genome", las=1, xlim=c(0,80000))

#2c histograms
x<- c(rnorm(10000), rnorm(10000)+4)
hist(x, breaks = 10)

hist(c(rnorm(10000), rnorm(10000)+4), main = "breaks default")
hist(c(rnorm(10000), rnorm(10000)+4), breaks = 30)
hist(c(rnorm(10000), rnorm(10000)+4), breaks = 30, main= "Histogram of x", xlab = "x")


plot( 1:10, pch=1:5, cex=1:5)
plot( 1:10, pch=1:5, cex=1:5, col=c("red","blue","green"))
plot(c(1:10)^2, typ="b", lwd=4, lty=3)

boxplot(cbind(rnorm(1000,0),rnorm(10000,4)))


male <-read.table("bimm143_05_rstats/male_female_counts.txt", header = TRUE, sep = "\t")
barplot (male$Count, names.arg = male$Sample, col=rainbow(nrow(male)), las= 2)
genes <- read.table("bimm143_05_rstats/up_down_expression.txt", header= TRUE, sep = "\t")

#How many are up, down and all around?
table(genes$State)


#let plot this data
plot(genes$Condition1, genes$Condition2, col=genes$State)


meth<- read.table("bimm143_05_rstats/expression_methylation.txt", header = TRUE, sep = "\t" )
plot(meth$gene.meth, meth$expression)
dcol<- densCols(meth$gene.meth, meth$expression)
plot(meth$gene.meth, meth$expression, col=dcol, pch=20)

inds<- meth$expression > 0
mycols2<- densCols(meth$gene.meth[inds], meth$expression[inds])
plot(meth$gene.meth[inds], meth$expression[inds], col=mycols2)
