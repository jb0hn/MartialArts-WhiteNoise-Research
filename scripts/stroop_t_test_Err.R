tErrIndex <- data.frame(indexErrN1, indexErrY1, indexErrN2, indexErrY2)

tErrIndexY <- rbind(indexErrY1, indexErrY2, indexErrY3, indexErrY4, indexErrY5, indexErrY6, indexErrY7, indexErrY9, indexErrY10, indexErrY12, indexErrY13, indexErrY14, indexErrY15, indexErrY16, indexErrY17, indexErrY18, indexErrY19, indexErrY20, indexErrY21)
tErrIndexN <- rbind(indexErrN1, indexErrN2, indexErrN3, indexErrN4, indexErrN5, indexErrN6, indexErrN7, indexErrN9, indexErrN10, indexErrN12, indexErrN13, indexErrN14, indexErrN15, indexErrN16, indexErrN17, indexErrN18, indexErrN19, indexErrN20, indexErrN21)
tErrIndex <- cbind(tErrIndexY, tErrIndexN)

rownm <- c("indexErr1", "indexErr2", "indexErr3", "indexErr4", "indexErr5", "indexErr6", "indexErr7", "indexErr9", "indexErr10", "indexErr12", "indexErr13", "indexErr14", "indexErr15", "indexErr16", "indexErr17", "indexErr18", "indexErr19", "indexErr20", "indexErr21")
colnm <- c("Noise", "No_Noise")

rownames(tErrIndex) <- rownm
colnames(tErrIndex) <- colnm

t.test(tErrIndexY, tErrIndexN, paired = TRUE)

mean(tErrIndexY)
mean(tErrIndexN)
sd(tErrIndexY)
sd(tErrIndexN)