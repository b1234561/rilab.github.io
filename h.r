# echo $( rscript --vanilla  h.r ) | sed -e 's/\[1\]//g;s/\"//g'

library(scholar)
library(methods)
bob<-get_profile("5SzRq1oAAAAJ")
paste("{\\small H-Index ", bob$h_index, " (", bob$total_cites, " citations as of ", date(), ")}",sep="")
sue<-get_publications("5SzRq1oAAAAJ")
write.table(file="./tempcites.txt",data.frame(sue$cid,sue$cites),row.names=F,quote=F,col.names=F)
