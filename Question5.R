virus_data <- read.csv("Cui_etal2014.csv")
nrow(virus_data)
ncol(virus_data)
#33 rows and 13 columns

install.packages("ggplot2")
library(ggplot2)
#Plot without transformation:
ggplot(virus_data, aes(x = Genome.length..kb., y = Virion.volume..nm.nm.nm.)) +
  geom_point()

#Log transforming both virion volume and genome length
virus_data$Log.Virion.volume <- log(virus_data$Virion.volume..nm.nm.nm.)
virus_data$Log.Genome.length <- log(virus_data$Genome.length..kb.)
ggplot(virus_data, aes(x = Log.Genome.length, y = Log.Virion.volume)) +
  geom_point()

virus_lm <- lm(Log.Virion.volume ~ Log.Genome.length, virus_data)
summary(virus_lm)

#Logα = 3.0725
exp(7.0748)
#α = 1181.807
  #p = 2.28e-10
#β = 1.5152
  #p = 6.44e-10 

#Replicating the plot:
ggplot(virus_data, aes(x = Log.Genome.length, y = Log.Virion.volume)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue", se = TRUE) +
  labs(x = "log [Genome length (kb)]", y = "log [Virion volume (nm3)]") +
  theme_bw() +
  theme(axis.title = element_text(face = "bold"))

α <- 1181.807
β <- 1.5152

volume_fun <- function(L) {
  V <- (α*(L^β))
  return(V)
}
  
volume_fun(300)
#6697006
