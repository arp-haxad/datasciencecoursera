# factors and categorical
animals <- c('c','d','g','c','d','d')
fact.animals <- factor((animals),ordered = T,levels = c('d','g','c'))
print(fact.animals)

temp <- c('cold','hot','medium',ordered = T)
temp.factor <- factor((temp))
print(temp.factor)