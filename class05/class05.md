Class 05
================
shuyiwang
Thu Nov 1 11:51:12 2018

This is **regular text** that we could have Rmd documet

``` r
# Baby weight with age
weight<- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

plot(weight,typ="b",pch=15,cex=1.5,lwd=2,ylim=c(2,10),xlab="Age (months)",ylab="Weight (kg)")
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-1.png)

``` r
counts<- read.table("bimm143_05_rstats/feature_counts.txt", header= TRUE, sep = "\t")

counts$Count
```

    ##  [1] 79049 50770 32029 26248 13840  5195  1638  1602  1431   491   474
    ## [12]   341

``` r
barplot(counts$Count, names.arg = counts$Feature, horiz=TRUE, las=1, main="Number of features in the mouse GRCm38 genome")
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-2.png)

``` r
par(mar=c(3.1, 11.1, 4.1, 2))
barplot(counts$Count, names.arg=counts$Feature, horiz=TRUE, ylab="", main="Number of features in the mouse GRCm38 genome", las=1, xlim=c(0,80000))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-3.png)

``` r
#2c histograms
x<- c(rnorm(10000), rnorm(10000)+4)
hist(x, breaks = 10)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-4.png)

``` r
hist(c(rnorm(10000), rnorm(10000)+4), main = "breaks default")
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-5.png)

``` r
hist(c(rnorm(10000), rnorm(10000)+4), breaks = 30)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-6.png)

``` r
hist(c(rnorm(10000), rnorm(10000)+4), breaks = 30, main= "Histogram of x", xlab = "x")
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-7.png)

``` r
plot( 1:10, pch=1:5, cex=1:5)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-8.png)

``` r
plot( 1:10, pch=1:5, cex=1:5, col=c("red","blue","green"))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-9.png)

``` r
plot(c(1:10)^2, typ="b", lwd=4, lty=3)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-10.png)

``` r
boxplot(cbind(rnorm(1000,0),rnorm(10000,4)))
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-11.png)

``` r
male <-read.table("bimm143_05_rstats/male_female_counts.txt", header = TRUE, sep = "\t")
barplot (male$Count, names.arg = male$Sample, col=rainbow(nrow(male)), las= 2)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-12.png)

``` r
genes <- read.table("bimm143_05_rstats/up_down_expression.txt", header= TRUE, sep = "\t")

#How many are up, down and all around?
table(genes$State)
```

    ## 
    ##       down unchanging         up 
    ##         72       4997        127

``` r
#let plot this data
plot(genes$Condition1, genes$Condition2, col=genes$State)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-13.png)

``` r
meth<- read.table("bimm143_05_rstats/expression_methylation.txt", header = TRUE, sep = "\t" )
plot(meth$gene.meth, meth$expression)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-14.png)

``` r
dcol<- densCols(meth$gene.meth, meth$expression)
plot(meth$gene.meth, meth$expression, col=dcol, pch=20)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-15.png)

``` r
inds<- meth$expression > 0
mycols2<- densCols(meth$gene.meth[inds], meth$expression[inds])
plot(meth$gene.meth[inds], meth$expression[inds], col=mycols2)
```

![](class05_files/figure-markdown_github/unnamed-chunk-1-16.png)
