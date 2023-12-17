# Crie um gráfico de barras da popularidade das faixas por ano
barplot(data$track_popularity, names.arg = data$year, xlab = "Ano", ylab = "Popularidade", main = "Popularidade das Faixas por Ano")

# Adicione uma legenda ao gráfico de barras
legend("topright", legend = "Popularidade", fill = "Black")

# Exiba os resultados da Popularidade das Faixas por Ano
cat("Resultados da Popularidade das Faixas por Ano:\n")
# cat(head(data$track_popularity, 22), sep = ", ")

# Crie o gráfico de dispersão Energia vs. Dançabilidade
plot(data$energy, data$danceability, xlab = "Energia", ylab = "Dançabilidade", main = "Energia vs. Dançabilidade", col = "black")

# Adicione uma legenda ao gráfico de dispersão
legend("topright", legend = c("Energia", "Dançabilidade"), pch = 1:2, col = 1:2)

# Exiba os resultados da Energia e Dançabilidade
cat("Resultados da Energia e Dançabilidade:\n")
cat("Energia (primeiras 10 observações):\n")
cat(head(data$energy, 10), sep = ", ")

cat("Dançabilidade (primeiras 10 observações):\n")
cat(head(data$danceability, 10), sep = ", ")

# Filtrar os 5 artistas mais comuns
top_5_artists <- head(names(sort(table(data$artist_name), decreasing = TRUE)), 5)

# Calcular a contagem de artistas mais comuns
artist_counts <- table(data$artist_name[data$artist_name %in% top_5_artists])

# Defina as cores para as fatias do gráfico de pizza
cores <- rainbow(length(artist_counts))

# Crie o gráfico de pizza
pie(artist_counts, labels = names(artist_counts), col = cores)

# Adicione uma legenda
legend("topright", legend = names(artist_counts), fill = cores)
title("Artistas mais frequentes nas playlists")


cat("Número e nome dos 5 artistas mais comuns:\n")
cat(paste(names(artist_counts), ": ", artist_counts), sep = "\n")

