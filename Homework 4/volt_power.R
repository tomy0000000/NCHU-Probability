# volt_power.R
# Plot power measurement form uniform random amplitude
# 
# Created by 4107056042 謝繼緯 on 2020/11/7.
# Copyright © 2020 Tomy Hsieh. All rights reserved.

amplitudes <- sample(-3:3, 100, replace=TRUE)
signal_powers = c(0, 0, 0, 0)
for (amp in amplitudes) {
  signal_power <- amp ^ 2 / 2
  if (signal_power == 0) {
    signal_powers[[1]] = signal_powers[[1]] + 1
  } else if (signal_power == 0.5) {
    signal_powers[[2]] = signal_powers[[2]] + 1
  } else if (signal_power == 2) {
    signal_powers[[3]] = signal_powers[[3]] + 1
  } else if (signal_power == 4.5) {
    signal_powers[[4]] = signal_powers[[4]] + 1
  }
}

plot(c(0, 0.5, 2, 4.5), signal_powers, type="h", axes=FALSE, xlab="Power (Y)", ylab="Frequency", ylim=c(0, max(signal_powers)*1.2))
axis(side=2, at=seq(0, 35, by=5))
axis(side=1, at=seq(0, 5, by=0.5))
box()
