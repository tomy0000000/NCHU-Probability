# gaussian_distribution.R
# Plot Gaussian Distribution with mean 60, standard deviation 10
# 
# Created by 4107056042 謝繼緯 on 2020/12/6.
# Copyright © 2020 Tomy Hsieh. All rights reserved.

x <- seq(0, 100)
y <- dnorm(x, mean=60, sd=10)
plot(x, y, type="l")
