
# Pour ne pas l'ajouter au package : usethis::use_rbuild_ignore('fonction.R')
# Pour lier un package à un Git : usethis::create_from_github()

library(microbenchmark)

# Exemple de profiling
n <- 10e4
profvis::profvis(pdfval <- mvnpdf(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE))

# Comparaison mvnpdf et mvnpdfsmart
n <- 1000
mb <- microbenchmark(dmvnorm = mvtnorm::dmvnorm(matrix(1.96, nrow = n, ncol = 2)),
                     mvnpdf = mvnpdf(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     mvnpdfsmart = mvnpdfsmart(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     times=100L)
boxplot(mb, ylab = "log(t)")
ggplot2::autoplot(mb) + ggplot2::ggtitle("Temps de calculs")

# Comparaison mvnpdf et mvnpdfsmart et mvnpdf_invC
n <- 1000
mb <- microbenchmark(dmvnorm = mvtnorm::dmvnorm(matrix(1.96, nrow = n, ncol = 2)),
                     mvnpdf = mvnpdf(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     mvnpdfsmart = mvnpdfsmart(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     mvnpdf_invC = mvnpdf_invC(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     times=100L)
boxplot(mb, ylab = "log(t)")
ggplot2::autoplot(mb) + ggplot2::ggtitle("Temps de calculs")

# Comparaison mvnpdf et mvnpdfsmart et mvnpdf_invC et mvnpdfsmartC 
n <- 1000
mb <- microbenchmark(dmvnorm = mvtnorm::dmvnorm(matrix(1.96, nrow = n, ncol = 2)),
                     mvnpdf = mvnpdf(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     mvnpdfsmart = mvnpdfsmart(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     mvnpdf_invC = mvnpdf_invC(x=matrix(1.96, nrow = 2, ncol = n), Log=FALSE),
                     mvnpdfsmartC = mvnpdfsmartC(x=matrix(1.96, nrow = 2, ncol = n), 
                                                 mean = rep(0,2),
                                                 varcovM = diag(2),
                                                 Log=FALSE),
                     times=100L)
boxplot(mb, ylab = "log(t)")
ggplot2::autoplot(mb) + ggplot2::ggtitle("Temps de calculs")
