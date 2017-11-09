for (j in as.numeric(unique(data$participant))){
  errY <- vector()
  for (i in 1:nrow(data)){
    if (isTRUE(data$noise[i] == "y") && isTRUE(data$key_respons.corr[i] == 0) && isTRUE(data$participant[i] == j)){
      errY <- append(errY, 1)
      nam <- paste("pErrY", j, sep = "")
      sam <- paste("indexErrY", j, sep ="")
      assign(sam, sum(assign(nam, errY))/60)
    }
  }
}

for (j in as.numeric(unique(data$participant))){
  errN <- vector()
  for (i in 1:nrow(data)){
    if (isTRUE(data$noise[i] == "n") && isTRUE(data$key_respons.corr[i] == 0) && isTRUE(data$participant[i] == j)){
      errN <- append(errN, 1)
      nam <- paste("pErrN", j, sep = "")
      sam <- paste("indexErrN", j, sep ="")
      assign(sam, sum(assign(nam, errN))/60)
    }
  }
}