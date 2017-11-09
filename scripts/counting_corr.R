corrN <- vector()
corrY <- vector()

for (i in data$noise){
  if (i == "y") {
    corrY <- append(corrY, 1)
  }
}
