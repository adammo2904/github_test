library(usethis)
gitcreds::gitcreds_set()
git_default_branch_configure(name = "main")
git_vaccinate()
use_git()
use_github()

#Adding some data
library(tidyverse)
library(ggplot2)
penguins <- palmerpenguins::penguins

plot <- ggplot(data = penguins, aes(x = species,
                   y = body_mass_g
                     )) +
  geom_violin() +
  geom_jitter(size = 1.5,
              aes(fill = island),
              pch = 21) +
  theme_bw() +
  facet_wrap(~ island) +
  labs(title = "Penguin weight across habitats",
       x = "Species",
       y = "Body mass")
plot
