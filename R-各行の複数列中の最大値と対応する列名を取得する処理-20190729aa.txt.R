


## https://stackoverflow.com/questions/36274867/getting-column-names-for-max-value-in-each-row

cluster1.data=c(0.0795604798,  0.0086171605, 1.8838058726)

cluster2.data=c(0.0934697636,  -0.1467907623, -0.1507548515)

cluster3.data=c(-0.396044650,  -0.396044650, -0.396044650)

df1 <- data.frame(cluster1=cluster1.data, cluster2=cluster2.data, cluster3=cluster3.data)

j1 <- max.col(df1, "first") #1.「各行で最大値を持つ列番号を取得」
j1.df=data.frame(j1)

value <- df1[cbind(1:nrow(df1), j1)] #2. 「1.の値⇔各行の最大値を取得」
value.df=data.frame(value)

cluster <- names(df1)[j1] #3.「各行毎の1.の列番号に対応する列名を取得」
cluster.df=data.frame(cluster)

res <- data.frame(value, cluster) #2.と3.とを横付けした結果dfを作成











########################

name.data <- c("John", "Alice", "Dick")
var1.data <- c(35, 28, 42)
var2.data <- c(28, 42, 35)

df2 <- data.frame(name=name.data, var1=var1.data,var2=var2.data)
df2$name <- as.character(df2$name)


names(df2)

#df2$maxvar = pmax(df2$var1,df2$var2)
library(tidyverse)


## 最大値関数の引数となる列のみに絞ったdfを作成し、以降それを対象として作業する
df2.targetvars = df2%>%select(var1,var2)
j2 <- max.col(df2.targetvars , "first") #1.「各行で最大値を持つ列番号を取得」
j2.df=data.frame(j2)

val2 <- df2.targetvars[cbind(1:nrow(df2.targetvars), j2)] #2. 「1.の値⇔各行の最大値を取得」
val2.df=data.frame(val2)

clust2 <- names(df2.targetvars)[j2] #3.「各行毎の1.の列番号に対応する列名を取得」
clust2.df=data.frame(clust2)

reslt2 = data.frame(val2, clust2)
