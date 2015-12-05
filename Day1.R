####Day 1####
#read the lines from
z<-readLines("~/Documents/AdventOfCode/InputDay1.txt")
#cut out all open parens
opn<-strsplit(z,'\\(')
#cut out all close parens
cls<-strsplit(z,'\\)')
#take the resulting output from each and count the number remaining and subtract them
sum(nchar(cls[[1]][grep('\\(',cls[[1]])]))-sum(nchar(opn[[1]][grep('\\)',opn[[1]])]))

####part 2####
flr<-0
pos<-0
up.down<-function(x){
  switch(x,
         "("=1,
         ")"=-1
  )}
while(flr>=0){
  pos<-pos+1
  flr<-flr+up.down(substring(z,pos,pos))
}
pos
