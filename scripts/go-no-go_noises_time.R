timeY <- vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "y") && isTRUE(data$key_respons.corr[i] == 1 && isTRUE(data$corrAns[i] != "None"))){
    t <- data$key_respons.rt[i]
    timeY <- append(timeY, t)
  }
}

mean(timeN)

timeN <- vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "n") && isTRUE(data$key_respons.corr[i] == 1 && isTRUE(data$corrAns[i] != "None"))){
    t <- data$key_respons.rt[i]
    timeN <- append(timeN, t)
  }
}

mean(timeN)


