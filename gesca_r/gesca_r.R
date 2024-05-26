# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Generalized Structured Component Analysis (GeSCA) Equation Modeling Use gesca With (In) R Software
# Generalized Structured Component Analysis Structural Equation Modeling (GeSCA) Use gesca With (In) R Software
install.packages("remotes")
library("remotes")
remotes::install_github("QuantMM/gesca")
library("gesca")
gesca_r = read.csv("https://raw.githubusercontent.com/timbulwidodostp/gesca_r/main/gesca_r/gesca_r.csv",sep = ";")
# Estimate Generalized Structured Component Analysis (GeSCA) Equation Modeling Use gesca With (In) R Software
# Model specification
myModel <- "
# Measurement model 
OP =~ cei1 + cei2 + cei3
OI =~ ma1 + ma2 + ma3
AC_J =~ orgcmt1 + orgcmt2 + orgcmt3
AC_L =~ orgcmt5 + orgcmt6 + orgcmt8
# Structural model 
OI ~ OP
AC_J ~ OI
AC_L ~ OI
"
# A single-group analysis
gesca <- gesca.run(myModel, gesca_r)
summary(gesca)
# Run a multiple-group GSCA with the grouping variable gender:
gesca_group <- gesca.run(myModel, gesca_r, group.name = "gender")
summary(gesca_group)
# Generalized Structured Component Analysis (GeSCA) Equation Modeling Use gesca With (In) R Software
# Generalized Structured Component Analysis Structural Equation Modeling (GeSCA) Use gesca With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished