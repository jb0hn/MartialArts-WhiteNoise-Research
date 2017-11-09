corrY = vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "y") && isTRUE(data$key_respons.corr[i] == 1)){
    corrY <- append(corrY, 1)
  }
}

corrN = vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "n") && isTRUE(data$key_respons.corr[i] == 1)){
    corrN <- append(corrN, 1)
  }
}

errY = vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "y") && isTRUE(data$key_respons.corr[i] == 0)){
    errY <- append(errY, 1)
  }
}

errN = vector()

for (i in 1:nrow(data)){
  if (isTRUE(data$noise[i] == "n") && isTRUE(data$key_respons.corr[i] == 0)){
    errN <- append(errN, 1)
  }
}

sum(corrY)
sum(corrN)
sum(errY)
sum(errN)

sum(corrY) + sum(corrN)
sum(errY) + sum(errN)

sum(corrY, corrN, errY, errN)