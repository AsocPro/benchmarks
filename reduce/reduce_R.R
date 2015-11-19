#!/usr/bin/Rscript

lim <- 999999

LIMIT <- Sys.getenv('LIMIT')
if (nchar(LIMIT) > 0) lim <- as.numeric(LIMIT)

sum(as.numeric(rep.int(0:lim, 1)))
