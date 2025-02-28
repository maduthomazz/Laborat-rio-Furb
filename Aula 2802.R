# AULA 2

# TIRAR NOTAÇÃO CIENTÍFICA ####
options(scipen = 999)

# EXCLUIR UMA BASE DE DADOS
nomedoobjeto <- NULL

## ATALHOS DE TECLADO ####
# "<-": "ALT" + "-"
# PARA EXECUTAR A LINHA: "ALT" + "ENTER"
# PARA EXECUTAR TODO SCRIPT: "ALT" + "SHIFT" + "ENTER"

## BIBLIOTECA PARA ACESSAR DADOS DO BANCO MUNDIAL ####

# install.packages('WDI') # PRIMEIRO A EXECUTAR
library(WDI) # CARREGAR O PACOTE

## VARIÁVEIS ####

# TAXA DE DESEMPREGO (%): SL.UEM.TOTL.ZS
# TAXA DE ALFABETIZAÇÃO DE ADULTOS (%): SE.ADT.LITR.ZS

# Infos: http://vincentarelbundock.github.io/WDI/

taxa_desemprego <- WDIsearch('Unemployment rate') # Taxa de desemprego
alfabetizacao_adultos <- WDIsearch('Adult literacy rate') # Taxa de alfabetização de adultos

variaveis <- c('SL.UEM.TOTL.ZS',  # Taxa de desemprego
               'SE.ADT.LITR.ZS')  # Taxa de alfabetização de adultos

# BASE DE DADOS DE CORTE TRANSVERSAL

dadosall <- WDI(indicator = variaveis,
                country = 'all',
                start = 2022, end = 2022) # PROBLEMAS NA NA

dadosBR <- WDI(indicator = variaveis,
               country = 'BR') # PROBLEMA DE NA

install.packages("tidyverse")
library(tidyverse)
dadosallOK <- WDI(indicator = variaveis,
                  country = 'all',
                  start = 2022, end = 2022) %>% 
  na.omit()

dadosBROK <- WDI(indicator = variaveis,
                 country = 'BR') %>% 
  na.omit()
