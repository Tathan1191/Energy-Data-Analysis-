head(global_sustainable_energy)

summary(global_sustainable_energy)

dsin_nulos <- global_sustainable_energy %>%
  d_sin_duplicados <- dsin_nulos %>%
  distinct()

ggplot(global_sustainable_energy, aes(x = Year, y = `Access to electricity (% of population)`)) +
  geom_point(color = "blue") +
  labs(title = "Tendencia del acceso a la electricidad en el mundo (por año)",
       x = "Año",
       y = "Porcentaje de la población") +
  theme_minimal()


ggplot(global_sustainable_energy, aes(x = Year, y = `Access to electricity (% of population)`)) +
  geom_line(color = "red", size = 1.5) +
  geom_ribbon(aes(ymin = 0, ymax = `Access to electricity (% of population)`), fill = "yellow", alpha = 0.3) +
  labs(title = "Tendencia del acceso a la electricidad en el mundo (por año)",
       x = "Año",
       y = "Porcentaje de la población") 
theme_minimal() 
theme(panel.grid.minor = element_blank(),
      panel.grid.major = element_blank(),
      panel.background = element_blank())

#Puntos
ggplot(year_2019, aes(x = reorder(Entity, -`Access to electricity (% of population)`), y = `Access to electricity (% of population)`)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Países con Mayor y Menor Acceso a la Electricidad",
       x = "Países",
       y = "Porcentaje de Acceso a la Electricidad") +
  theme(axis.text.x = element_text(angle = 35, hjust = 1))

#Caja
ggplot(global_sustainable_energy, aes(x = Entity, y = `Access to electricity (% of population)`)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  labs(title = "Distribución del Acceso a la Electricidad por Región",
       x = "Región Geográfica",
       y = "Porcentaje de Acceso a la Electricidad") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

#Tendencia
ggplot(global_sustainable_energy, aes(x = Year, y = `Access to electricity (% of population)`, color = Entity)) +
  geom_line() +
  labs(title = "Tendencias de Acceso a la Electricidad por Región",
       x = "Año",
       y = "Porcentaje de Acceso a la Electricidad",
       color = "Región Geográfica") +
  theme_minimal()

