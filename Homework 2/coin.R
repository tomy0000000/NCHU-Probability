# coin.R
# Coin Flipping
# 
# Created by 4107056042 謝繼緯 on 2020/10/18.
# Copyright © 2020 Tomy Hsieh. All rights reserved.

occurrences = c(0, 0, 0)
for (i in 1:100) {
  random <- runif(1, 0, 1)
  if (random<=0.4) {
    occurrences[1] <- occurrences[1]+1
  } else if (random<=0.9) {
    occurrences[2] <- occurrences[2]+1
  } else {
    occurrences[3] <- occurrences[3]+1
  }
}

plot(c(1,2,3), occurrences, ylim=c(0, max(occurrences)+5), "h")
