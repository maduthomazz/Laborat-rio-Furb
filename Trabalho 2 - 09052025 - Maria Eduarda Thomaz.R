# INSTALAR O PACOTE

# install.packages("GetBCBData")

# CARREGAR A BIBLIOTECA

library(GetBCBData)
library(tidyverse)# TAMBÉM É NECESSÁRIO

# INSTRUÇÕES DO PACOTE (VIGNETTE)
# https://cran.r-project.org/web/packages/GetBCBData/vignettes/GetBCBData-vignette.html

# OS CÓDIGOS DAS VARIÁVEIS VÊM DIRETO DA PLATAFORMA
# ACESSAR O SGS
# http://www.bcb.gov.br/?sgs

# EXEMPLO COM PRODUTO INTERNO BRUTO PER CAPITA EM R$ CORRENTES	
# METADADOS
# série de PIB per capita em R$ correntes é obtida pela divisão 
# da série “PIB em R$ correntes”, código 1207 no SGS, 
# pela série de população, código 21774 no SGS.
# O resultado é dividido por mil, de forma que o resultado 
# seja expresso em unidades de real..

my.id <- c(pibpercap = 21775)

df.bcb <- gbcbd_get_series(id = my.id ,
                           first.date = '1996-12-31',
                           last.date = Sys.Date(),
                           format.data = 'long',
                           use.memoise = TRUE, 
                           cache.path = tempdir(), # use tempdir for cache folder
                           do.parallel = FALSE)

glimpse(df.bcb)


# GRÁFICO SIMPLES

format_reais <- function(x) {
  paste0("R$ ", format(x, big.mark = ".", decimal.mark = ",", scientific = FALSE))
}

pib <- ggplot(df.bcb, aes(x = ref.date, y = value)) +
  geom_line(color = "blue") +
  geom_point(color = "darkred", size = 2) +
  scale_y_continuous(
    breaks = seq(0, max(df.bcb$value, na.rm = TRUE), by = 5000),
    labels = format_reais
  ) +
  scale_x_date(
    date_breaks = "4 years",
    date_labels = "%Y"
  ) +
  labs(title = "PIB per capita ao longo do tempo",
       x = "Ano",
       y = "PIB per capita (R$)") +
  theme_minimal()

print(pib)
