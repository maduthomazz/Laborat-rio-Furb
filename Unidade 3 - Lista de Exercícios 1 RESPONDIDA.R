
options(scipen = 999)

QUESTÃO 1

#####

moddormir <- lm( dormir ~ trabtot + educ + idade,DORMIR75 ) # ESTIMAR O MODELO
summary(moddormir) # VER OS RESULTADOS


1a) DORMIR = 3638,24 - 0,148trabtot -11,13educ + 2,19idade

1) EFEITO/ IMPACTO - TRABTOT

Ceteris Paribus, a cada minuto a mais de trabalho por semana (trabtot),
estima-se que o tempo gasto dormindo (dormir) vai diminuir em 0,148 minutos 
por semana.

1) EFEITO/ IMPACTO - EDUC

Ceteris Paribus, a cada ano a mais de educação (educ),
estima-se que o tempo gasto dormindo (dormir) vai diminuir em 11,13 minutos 
por semana.

1) EFEITO/ IMPACTO - IDADE

Ceteris Paribus, a cada aumento de um ano de idade (idade),
estima-se que o tempo gasto dormindo (dormir) vai aumentar em 2,19 minutos 
por semana.

2) QUALIDADE DO AJUSTE 

Conseiderando o resultado de R²-Aj, 10,96% da variação estimada de DORMIR (dormir)
é dada pela variação de anos de EDUCAÇÃO (educ) e IDADE (idade) e minutos por semana
de TRABALHO (trabtot). 

3) SIGNIFICANCIA ESTATISTICA 

P-VALOR TRABTOT = 0.0000000000000002 = R - Significancia estatistica
P-VALOR EDUC = 0.0589 = R - Significancia estatistica
P-VALOR IDADE = 0.1285 = NR - Sem significancia estatistica

1b) Sim, como a Área de Atuação, pois dependendo de qual é o trabalho da pessoa, ela pode ter horários
de sono irregulares. Além disso, cada trabalho tem um nível diferente de cobrança e 
responsabilidade, o que pode afetar na quantidade de horas dormidas.

#####

QUESTÃO 2

#####

modeduc <- lm( educ  ~ irms + educm + educp,EDUC ) # ESTIMAR O MODELO
summary(modeduc) # VER OS RESULTADOS

2) EDUC  = 10,36 - 0,09irms + 0,13educm + 0,21educp

1) EFEITO/ IMPACTO - IRMS

Ceteris Paribus, o aumento de um irmão (irms),
estima-se que a escolaridade formal (educ) vai diminuir em 0,09 anos 

1) EFEITO/ IMPACTO - EDUCM

Ceteris Paribus, o aumento de um ano no nível de escolaridade formal da 
mãe (educm), impactará no aumento de 0,13 anos de a escolaridade formal do filho(educ). 

1) EFEITO/ IMPACTO - EDUCP

Ceteris Paribus, o aumento de um ano no nível de escolaridade formal da 
pai (educp), impactará no aumento de 0,21 anos de a escolaridade formal do filho (educ).

2) QUALIDADE DO AJUSTE 

Conseiderando o resultado de R²-Aj, 21,08% da variação estimada de educação formal (educ)
é dada pela variação de anos de escolaridade formal da mãe (educm) e
escolaridade formal do pai (educp) e números de irmãos (irms). 

3) SIGNIFICANCIA ESTATISTICA 

P-VALOR IRMS = 0.00676 = R - Significancia estatistica
P-VALOR EDUCM = 0.0000696319512857= R - Significancia estatistica
P-VALOR EDUCP = 0.0000696319512857 = R - Significancia estatistica

#####

QUESTÃO 3

#####

modaluguel <- lm( log(alug) ~ log(pop) + log(rendmed) + pctestu,ALUGUEL ) # ESTIMAR O MODELO
summary(modaluguel) # VER OS RESULTADOS

3a) 

1) EFEITO/ IMPACTO - POP

Ceteris Paribus, o aumento de 1% na população total da cidade (pop),
estima-se que o aluguel médio mensal pago pela unidade aluguada (alug)
vai aumentar em 0,031%  

1) EFEITO/ IMPACTO - RENDMED

Ceteris Paribus, o aumento de 1% na renda média da cidade (rendmed),
estima-se que o aluguel médio mensal pago pela unidade aluguada (alug)
vai aumentar em 0,87%  

1) EFEITO/ IMPACTO - PCTESTU

Ceteris Paribus, o aumento de 1% na população de estudande como um percentual
da população total(pctestu),estima-se que o aluguel médio mensal pago 
pela unidade aluguada (alug)vai aumentar em 0,65% 

3b) Um aumento de 10% na população está associada a um aumento de cerca de 3,04%

3c) 
P-VALOR LOG(POP) = 0.25 = NR - Sem significancia estatistica
P-VALOR LOG (RENDMED) = 0.0000000000000002 = R - Significancia estatistica
P-VALOR PCTESTU = 0.0000002822167  = R - Significancia estatistica


