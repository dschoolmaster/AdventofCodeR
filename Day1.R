####Day 1####
#read the lines from
z<-readLines("Path/To/Input/File/paren.txt")
#cut out all open parens
opn<-strsplit(z,'\\(')
#cut out all close parens
cls<-strsplit(z,'\\)')
#take the resulting output from each and count the number remaining and subtract them
sum(nchar(cls[[1]][grep('\\(',cls[[1]])]))-sum(nchar(opn[[1]][grep('\\)',opn[[1]])]))

