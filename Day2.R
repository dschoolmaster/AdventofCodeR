####Day 2 ####
dims<-readLines("~/Path/To/InputDay2.txt")
sum(sapply(dims,function(x){
  foo<-apply(combn(as.numeric(strsplit(x,'x')[[1]]),2),2,prod)
  return(sum(2*foo)+min(foo))}))

