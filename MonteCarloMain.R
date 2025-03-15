# problem ( I want to know if choice a or choice b is better) choice b has a mean liking of 550 more 
#max of choice topic is 10000 and min is 5000 with them as 97.5% and 2.5% resp
#using  norm dist
results_p = logical(10000)
for (i in 1:10000){
  choiceA = rnorm(n=30, mean= 7500, sd=833.33)
  choiceB= rnorm(n=30, mean= 7500+850, sd=833.33)
  test = t.test(choiceA,choiceB, var.equal = T)
  results_p[i] = test[["p.value"]]<0.05
  
}
results_p
mean(results_p) #power
