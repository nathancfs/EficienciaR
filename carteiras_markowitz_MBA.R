###############################################################################
###                               ESTUDO BASEADO NA                     ###
###  AULA ANALYTICS PARA AVALIAÇÃO E ANÁLISE DE RISCOS - Prof. Fabiano   ###
##                        POR NATHAN CARDOSO FERREIRA                   ####
################################################################################

# Carregando Pacotes  para Gestão de Carteiras - Teoria de Markowitz

# Verificar se as bibliotecas estão instaladas e instalá-las, se necessário
pacotes_necessarios <- c("fPortfolio", "yfR")

for (pacote in pacotes_necessarios) {
  if (!requireNamespace(pacote, quietly = TRUE)) {
    install.packages(pacote)
    library(pacote, character.only = TRUE)
  }
}

# Definir datas
data_inicial = as.Date("2022-01-01")
data_final = Sys.Date()

# Selecionar ações
acoes = c(
  "BBSE3.SA",
  "ITSA4.SA",
  "VALE3.SA",
  "CCRO3.SA"
)

# Matriz para armazenar os dados
precos_fechamento <- c()

# Loop para cada ação
for (i in 1:length(acoes)) {
  
  # Obter dados da ação
  acao_dados <- yf_get(tickers = acoes[i], first_date = data_inicial, last_date = data_final)
  
  # Extrair preços de fechamento
  precos_fechamento <- cbind(precos_fechamento, acao_dados$ret_closing_prices[-1])
  
}

# Definir nomes das colunas
colnames(precos_fechamento) <- acoes

# Criar série temporal
dados <- as.timeSeries(precos_fechamento)

# Plotar retornos de fechamento
plot(dados, main = "Retornos de Fechamento")

# Carteira de Mínimo Risco
cart.min.risco <- minvariancePortfolio(dados)
summary(cart.min.risco)

# Carteira Ótima
cart.otima <- tangencyPortfolio(dados)
summary(cart.otima)

# Fronteira Eficiente
fronteira <- portfolioFrontier(dados)

# Plotar Fronteira Eficiente
frontierPlot(fronteira, col = c("blue", "orange"), pch = 19)

# Mostrar resultados da Fronteira Eficiente
print(fronteira)

