#
# Paul Evans (10evans@cua.edu)
# 12 April 2021)
#
setwd("~/Work/Ngrams")
library(stylo)

stylo.results = stylo(
  gui = TRUE,
  corpus.dir = "corpora/final",
  corpus.lang = "Latin.corr",
  analyzed.features = "c",
  ngram.size = 2,
  mfw.min = 80, mfw.max = 80,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.title = "Bigrams",
  custom.graph.filename = "JPGs/bigrams",
)
# summary(stylo.results)
print(stylo.results$features.actually.used)

stylo.results = stylo(
  gui = TRUE,
  corpus.dir = "corpora/final",
  corpus.lang = "Latin.corr",
  analyzed.features = "c",
  ngram.size = 3,
  mfw.min = 80, mfw.max = 80,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 3600,
  write.jpg.file = TRUE,
  custom.graph.title = "Trigrams",
  custom.graph.filename = "JPGs/trigrams",
)
# summary(stylo.results)
print(stylo.results$features.actually.used)

