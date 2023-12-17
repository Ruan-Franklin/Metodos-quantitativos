# Hipótese nula (H0): a média de dancebiality é igual a um valor específico, por exemplo,  μ = 0.5.
# Hipótese Altrnativ (H1): A média da danceability é diferente de 0.5.
#Nível de significância de 5% (0,05). a = 0,05

#Utilizaremos teste T para uma mostra, já que é uma comparação de uma variável em relação a um valor fixo

result <- t.test(dados$danceability, mu = 0.5)
print(result)
