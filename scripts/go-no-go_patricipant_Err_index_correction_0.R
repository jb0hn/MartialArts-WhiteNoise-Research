for (j in as.numeric(unique(data$participant))){
  errY <- vector() 
  for (i in nrow(data)){
    if (isTRUE(data$noise[i] == "y") && isTRUE(data$participant[i] == j) && isTRUE(data$key_respons.corr[i] == 1)){
      nam <- paste("pErrY", j, sep = "")
      sam <- paste("indexErrY", j, sep ="")
      assign(nam, 0)
      assign(sam, 0)
    }
    if (isTRUE(data$noise[i] == "y") && isTRUE(data$participant[i] == j && isTRUE(data$key_respons.corr[i] == 0))){        
      errY <- append(errY, 1)
      nam <- paste("pErrY", j, sep = "")
      sam <- paste("indexErrY", j, sep ="")
      assign(sam, sum(assign(nam, errY))/60)
    }
  }
}

for (j in as.numeric(unique(data$participant))){
  errN <- vector() 
  for (i in nrow(data)){
    if (isTRUE(data$noise[i] == "n") && isTRUE(data$participant[i] == j) && isTRUE(data$key_respons.corr[i] == 1)){
      nam <- paste("pErrN", j, sep = "")
      sam <- paste("indexErrN", j, sep ="")
      assign(nam, 0)
      assign(sam, 0)
    }
    if (isTRUE(data$noise[i] == "n") && isTRUE(data$participant[i] == j && isTRUE(data$key_respons.corr[i] == 0))){        
      errY <- append(errN, 1)
      nam <- paste("pErrN", j, sep = "")
      sam <- paste("indexErrN", j, sep ="")
      assign(sam, sum(assign(nam, errN))/60)
    }
  }
}