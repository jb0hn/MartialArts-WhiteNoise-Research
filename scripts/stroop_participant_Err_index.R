for (j in 1:21){
  errY <- vector()
  for (i in 1:nrow(data)){
    if (isTRUE(data$noise[i] == "y") && isTRUE(data$inter_trial_key_resp.corr[i] == 0) && isTRUE(data$participant[i] == j)){
      errY <- append(errY, 1)
      nam <- paste("pErrY", j, sep = "")
      sam <- paste("indexErrY", j, sep ="")
      assign(sam, sum(assign(nam, errY))/20)
    }
  }
}

for (j in 1:21){
  errN <- vector()
  for (i in 1:nrow(data)){
    if (isTRUE(data$noise[i] == "n") && isTRUE(data$inter_trial_key_resp.corr[i] == 0) && isTRUE(data$participant[i] == j)){
      errN <- append(errN, 1)
      nam <- paste("pErrN", j, sep = "")
      sam <- paste("indexErrN", j, sep ="")
      assign(sam, sum(assign(nam, errN))/20)
    }
  }
}