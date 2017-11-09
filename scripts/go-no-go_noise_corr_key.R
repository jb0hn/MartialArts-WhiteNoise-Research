#noise <- vector()
#sumCorr <- vector()
#sumErr <- vector()

corrY <- vector()
corrN <- vector()

for (i in data$key_respons.corr) {
  if (isTRUE(data$noise[i] == "y")) {
    corrY <- append(corrY, print(data$key_respons.corr[i]))
  } else {
    corrN <- append(corrN, print(data$key_respons.corr[i]))
  }
}

for (i in data$key_respons.corr) {
  if (isTRUE(data$noise[i]) == "y") {
    print("y")
  } 
}

#for (i in data$noise) {
 # if (isTRUE(data$noise[i] == "y")) {
  #  sumCorr <- append(sumCorr, print(sum(data$key_respons.corr == 1))) 
   # sumErr <- append(sumErr, print(sum(data$key_respons.corr == 0)))
#  } else {
 #   sumCorr <-append(sumCorr, print(sum(data$key_respons.corr == 1))) 
  #  sumErr <- append(sumErr, print(sum(data$key_respons.corr == 0)))
  #}
#}
  
  # if (isTRUE(MMA17_go_no_go_2017_maj_25_2115$noise[1] == "y")) {
   # noise <- append(noise, print("yes"))
    #sumCorr <- append(sumCorr, print(sum(MMA17_go_no_go_2017_maj_25_2115$key_respons.corr == 1))) 
    #sumErr <- append(sumErr, print(sum(MMA17_go_no_go_2017_maj_25_2115$key_respons.corr == 0)))
  #} else {
   # noise <- append(noise, print("no"))
    #sumCorr <- append(sumCorr, print(sum(MMA17_go_no_go_2017_maj_25_2115$key_respons.corr == 1))) 
    #sumErr <- append(sumErr, print(sum(MMA17_go_no_go_2017_maj_25_2115$key_respons.corr == 0)))
  #}