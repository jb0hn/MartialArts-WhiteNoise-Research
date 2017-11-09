badClickY <- vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "y") && isTRUE(data$key_respons.corr[i] == 0 && isTRUE(data$key_respons.keys[i] != "None"))){
    badClickY <- append(badClickY, 1)
  }
}

sum(badClickY)

badClickN <- vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "n") && isTRUE(data$key_respons.corr[i] == 0 && isTRUE(data$key_respons.keys[i] != "None"))){
    badClickN <- append(badClickN, 1)
  }
}

sum(badClickN)