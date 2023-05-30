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

plot <- ggplot(data = penguins, aes(y = body_mass_g, fill = species)) +
  geom_histogram() +
  theme_bw() +
  facet_wrap(~ island) +
  labs(title = "Penguin weight across habitats",
       y = "Body mass")
plot

plot_2 <- ggplot(data = penguins, aes(y = body_mass_g, fill = species)) +
  geom_histogram() +
  theme_bw()
plot_2

