library(ggplot2)

t1 <- subset(ToothGrowth, supp == 'OJ' & dose == 0.5)
t2 <- subset(ToothGrowth, supp == 'VC' & dose == 2.0)
t.test(t1$len, t2$len)

g <- rbind(t1, t2)
g$supp <- factor(g$supp, labels=c('Апельсин.сок', 'Аскорбин.кислота'))
ggplot(data=g, aes(supp, len)) +
  geom_boxplot()+
  xlab('Питание')+
  ylab('Длина зубок')
