# program to create the saimple matrix for stock price
goog <- c(123,456,234,345,127)
micrsft <- c(324,567,123,567,987)
stocks <- c(goog,micrsft)
stock.price <- matrix(stocks,byrow = T,nrow = 2)
print(stock.price)
days <- c('m','t','w','t','f')
stock.nm <- c('google','microsoft')
colnames(stock.price) <- days
rownames(stock.price) <- stock.nm
