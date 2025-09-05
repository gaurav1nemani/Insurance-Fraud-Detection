# install from the CASdatasets repo
install.packages("CASdatasets", repos = "https://cas.uqam.ca/pub/R/")

library(CASdatasets)

# list available datasets in the package (helps avoid typos)
data(package = "CASdatasets")$results[, "Item"]

# load the correct object
data("freMPL6")

# quick peek
str(freMPL6)
head(freMPL6)

# 1) Create age bands
freMPL6$DrivAgefactor <- cut(
  freMPL6$DrivAge,
  breaks  = c(-Inf, 25, 40, 60, 70, Inf),
  labels  = c("18-25","25-40","40-60","50-70","70+"),
  right   = FALSE
)

# 2) Convert factors to character so Python gets readable labels
fac_cols <- names(Filter(is.factor, freMPL6))
freMPL6[fac_cols] <- lapply(freMPL6[fac_cols], as.character)

# 3)Keep only columns you’ll actually use for fraud modeling
#    Comment this block if you want the full table.
keep <- c("Exposure","LicAge","Gender","MariStat","SocioCateg","VehUsage","DrivAge",
          "HasKmLimit","ClaimAmount","ClaimNbResp","ClaimNbNonResp","ClaimNbParking",
          "ClaimNbFireTheft","ClaimNbWindscreen","OutUseNb","RiskArea","BonusMalus",
          "ClaimInd","DrivAgefactor","RecordBeg","RecordEnd")
freMPL6 <- freMPL6[intersect(names(freMPL6), keep)]

#Write CSV (UTF-8; dates preserved as YYYY-MM-DD)
write.csv(freMPL6, "freMPL6.csv", row.names = FALSE, fileEncoding = "UTF-8")