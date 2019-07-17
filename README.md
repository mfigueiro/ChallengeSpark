# Challenge Spark

## Trabalho prático com SPARK:
Fazer o download do arquivo indicado no link abaixo: https://www.kaggle.com/kemical/kickstarter-projects/downloads/ks-projects-201612.csv/7 . Trata-se de uma base de projetos de financiamento coletivo da plataforma KickStarter que servirão como base para as seguintes tarefas.

[Access data cookbook](https://github.com/mfigueiro/ChallengeSpark/blob/master/Cookbook.md)

Utilizando o framework spark, na linguagem de sua preferência, identificar as seguintes informações:

[Access code in R here](https://github.com/mfigueiro/ChallengingSpark/blob/master/Code%20in%20R)

1 - Quantidade de projetos por país;

[Access csv file here](https://github.com/mfigueiro/ChallengeSpark/blob/master/mytable1.csv)

2 - Gravar os resultados em um arquivo CSV;

3 - Quais as 3 categorias com maior quantidade de projetos aprovados, e quanto foi arrecadado em projetos aprovados por cada uma destas 3 categorias;

[Access csv file here](https://github.com/mfigueiro/ChallengeSpark/blob/master/mytable2.csv)

> **Categorias** | **Frequência (n)** | **Arrecadação** | 
> --- | --- | --- |
> Product Design |  |  |
> Documentary |  |  |
> Music |  |  |

4 - Para os projetos bem sucedidos do país "US" qual o valor em dólares foi arrecadado acima das metas estabelecidas.

[Access csv file here](https://github.com/mfigueiro/ChallengeSpark/blob/master/mytable3.csv)


## Questões dissertativas:

1 - Em quais situações uma rotina implementada em Spark será mais rápida que uma rotina implementada em MapReduce?

> **Apache Spark** versus **Hadoop MapReduce**
> + A plataforma Apache Spark é mais rápida e pode reduzir o tempo de processamento em até 100 vezes em memória ou em até 10 vezes em disco quando comparada à plataforma Hadoop MapReduce. A Spark atua sobre todo o conjunto de dados de uma vez só, enquanto que a Hadoop atua em etapas;
> + A Spark é fácil de usar e suporta diferentes linguagens de programação tais como Python, R e Scala. Nos algoritmos de Machine Learning, que na sua grande maioria, exigem múltiplas operações e processos iterativos sobre o mesmo conjunto de dados (reuso de dados), a Hadoop apresenta baixo desempenho, sendo mais ineficiente à computação iterativa do que a plataforma Spark.   

2 - Qual a diferença de um RDD e um Dataframe?
> **Dataframe** versus **RDD**
> + **Dataframe** é uma abstração de mais alto nível do que o **RDD**;
> + **RDD** é uma unidade fundamental de dados em Spark enquanto que **DataFrame** é uma estrutura de dados especializada para lidar com dados bidimensionais semelhantes a tabelas, organizada em colunas;
> + **RDD** permite que um programador execute computação em memória em grandes clusters de uma maneira tolerante a falhas.

3 - Quais os benefícios do conceito de Lazy Evaluation no Spark?

> **Lazy Evaluation** no Spark significa que nenhuma execução será iniciada até que uma operação de ação seja acionada. Suas vantagens 
> são:
> + Aumento do poder da plataforma Apache Spark, uma vez que reduz o tempo de execução das operações do RDD. Como resultado, otimiza o desempenho e alcança a tolerância a falhas;
> + As duas principais complexidades de qualquer operação são complexidade de tempo e espaço. Uma vez que nem todas as operações são 
> executadas, há uma redução no tempo, possibilitando trabalhar com uma estrutura de dados infinita. A operação é acionada apenas quando
> os dados são necessários, reduzindo, assim, a sobrecarga.
