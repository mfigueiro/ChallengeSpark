# Challenge Spark

## Trabalho prático com SPARK:
Fazer o download do arquivo indicado no link abaixo: https://www.kaggle.com/kemical/kickstarter-projects/downloads/ks-projects-201612.csv/7 . Trata-se de uma base de projetos de financiamento coletivo da plataforma KickStarter que servirão como base para as seguintes tarefas.

Utilizando o framework spark, na linguagem de sua preferência, identificar as seguintes informações:

[Access code in R here](https://github.com/mfigueiro/ChallengingSpark/blob/master/Code%20in%20R)

1 - Quantidade de projetos por país;

2 - Gravar os resultados em um arquivo CSV;

3 - Quais as 3 categorias com maior quantidade de projetos aprovados, e quanto foi arrecadado em projetos aprovados por cada uma destas 3 categorias;

4 - Para os projetos bem sucedidos do país "US" qual o valor em dólares foi arrecadado acima das metas estabelecidas.

## Questões dissertativas:

1 - Em quais situações uma rotina implementada em Spark será mais rápida que uma rotina implementada em MapReduce?

> **Apache Spark** versus **Hadoop MapReduce**
> + A plataforma Apache Spark é mais rápida e pode reduzir o tempo de processamento em até 100 vezes quando os dados são distruídos em memória ou em até 10 vezes quando distribuídos em disco do que a plataforma Hadoop MapReduce. A Spark atua sobre todo o conjunto de dados de uma vez só, enquanto que a Hadoop atua em etapas;
> + A Spark é fácil de usar e suporta diferentes linguagens de programação tais como Python, R e Scala. Nos algoritmos de Machine Learning, que na sua grande maioria, exigem múltiplas operações e processos iterativos sobre o mesmo conjunto de dados (reuso de dados), a Hadoop apresenta baixo desempenho, sendo mais ineficiente à computação iterativa do que a plataforma Spark.   

2 - Qual a diferença de um RDD e um Dataframe?

> **RDD** versus **Dataframe** - 

3 - Quais os benefícios do conceito de Lazy Evaluation no Spark?

> **Lazy Evaluation**
>
>

