# Estudo de Carteiras de Investimento com R

## Introdução:

Este repositório apresenta um estudo prático sobre a construção de carteiras de investimento eficientes utilizando a linguagem de programação R. O estudo foi realizado como parte da aula de Analytics para Avaliação e Análise de Riscos ministrada pelo Prof. Fabiano Guasti Lima.

## Objetivos:

- Implementar a teoria de Markowitz para construir carteiras de investimento:
  - **Carteira de Mínimo Risco:** Minimizar a variância da carteira, tornando-a mais segura.
  - **Carteira Ótima:** Maximizar o retorno por unidade de risco, encontrando a carteira com o maior Sharpe Ratio.
- Visualizar a Fronteira Eficiente, que representa todas as combinações possíveis de retorno e risco para diferentes carteiras.

## Metodologia:

### Coleta de dados:

Pacote `yfR` utilizado para obter os preços de fechamento de cinco ações brasileiras entre 2023-01-01 e 2023-11-14:

- BBSE3.SA
- ITSA4.SA
- VALE3.SA
- CCRO3.SA

Período de análise curto para fins didáticos.

### Análise de retornos:

- Cálculo dos retornos de cada ação e plotagem da série temporal.

### Construção de carteiras:

- Função `minvariancePortfolio` do pacote `PortfolioAnalytics` utilizada para a carteira de mínimo risco.
- Função `tangencyPortfolio` do pacote `PortfolioAnalytics` utilizada para a carteira ótima.

### Visualização da Fronteira Eficiente:

- Função `frontierPlot` do pacote `PortfolioAnalytics` utilizada para plotar a Fronteira Eficiente.

## Resultados:

### Carteira de Mínimo Risco:

- Retorno anual: 0,06%
- Risco anual: 1,07%
- Composição:
  - BBSE3.SA: 36,20%
  - ITSA4.SA: 30,13%
  - VALE3.SA: 20,04%
  - CCRO3.SA: 13,63%
  
Retorno anual relativamente baixo devido ao período de análise curto e modelo conservador de Markowitz.

### Carteira Ótima:

- Retorno anual: 0,09%
- Risco anual: 1,22%
- Composição:
  - BBSE3.SA: 64,19%
  - ITSA4.SA: 34,26%
  - VALE3.SA: 0,00%
  - CCRO3.SA: 1,54%
  
Maior retorno por unidade de risco, mas com maior concentração em BBSE3.SA.

### Fronteira Eficiente:

Ilustra o trade-off entre retorno e risco. Carteiras com retornos mais altos exigem maior tolerância ao risco.

## Análise dos Resultados:

A escolha da carteira ideal depende do perfil de risco do investidor.

## Conclusão:

Este estudo demonstra como o R pode ser utilizado para construir carteiras de investimento eficientes. A Fronteira Eficiente é uma ferramenta poderosa para auxiliar os investidores na tomada de decisões, permitindo a escolha da carteira que melhor se adapta ao seu perfil de risco e objetivos financeiros.
