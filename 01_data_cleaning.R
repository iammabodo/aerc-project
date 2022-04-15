# loading important packages

library(tidyverse)
library(haven)


# Importing data and selecting the necessary variables
zdhs_2015 <- read_stata("./data/zdhs_2015.dta") |>
  # selecting and renaming relevant variables
  select(
    case.id = caseid,
    birth.hist.index = midx,
    child.age.months = b19,
    sample.weight = v005,
    maternal.dob.cmc =v011,
    maternal.age = v012,
    under5.fam.size = v137,
    fam.size = v136,
    country.code.phase = v000,
    rural.urban = v025,
    maternal.education.yrs = v133,
    hhold.heard.sex = v151,
    hhold.heard.age = v152,
    fam.wealth = v191,
    maternal.weight = v437,
    maternal.height = v438,
    maternal.bmi = v445,
    current.pregnant = v213,
    child.twin = b0,
    child.mob = b1,
    child.yob = b2,
    child.dob.cmc = b3,
    child.gender = b4,
    child.birth.weight = m19,
    child.size.birth = m18,
    birth.weight.recall = m19a,
    child.weight.kgs = hw2,
    child.height.cm = hw3,
    child.height.agestd.newho = hw70,
    child.weight.agestd.newho = hw71,
    child.weight.heightstd.newho = hw72,
    bmi.std.newho = hw73
  ) |> 
  # Converting some variables into factors
  mutate_at(.vars = c("rural.urban", "hhold.heard.sex", "child.gender"), .funs = as.factor) |> 
  # Converting some variables into character 
  mutate_at(.vars = c("case.id", "country.code.phase"), .funs = as.character) 
  
  

zdhs_2010 <- read_stata("./data/zdhs_2010.dta") |>
  # selecting and renaming relevant variables
  select(
    case.id = caseid,
    birth.hist.index = midx,
    child.age.months = hw1,
    sample.weight = v005,
    maternal.dob.cmc =v011,
    maternal.age = v012,
    under5.fam.size = v137,
    fam.size = v136,
    country.code.phase = v000,
    rural.urban = v025,
    maternal.education.yrs = v133,
    hhold.heard.sex = v151,
    hhold.heard.age = v152,
    fam.wealth = v191,
    maternal.weight = v437,
    maternal.height = v438,
    maternal.bmi = v445,
    current.pregnant = v213,
    child.twin = b0,
    child.mob = b1,
    child.yob = b2,
    child.dob.cmc = b3,
    child.gender = b4,
    child.birth.weight = m19,
    child.size.birth = m18,
    birth.weight.recall = m19a,
    child.weight.kgs = hw2,
    child.height.cm = hw3,
    child.height.agestd.newho = hw70,
    child.weight.agestd.newho = hw71,
    child.weight.heightstd.newho = hw72,
    bmi.std.newho = hw73
  ) |> 
  # Converting some variables into factors
  mutate_at(.vars = c("rural.urban", "hhold.heard.sex", "child.gender"), .funs = as.factor) |> 
  # Converting some variables into character 
  mutate_at(.vars = c("case.id", "country.code.phase"), .funs = as.character)


zdhs_2005 <- read_stata("./data/zdhs_2005.dta") |>
  # selecting and renaming relevant variables
  select(
    case.id = caseid,
    birth.hist.index = midx,
    child.age.months = hw1,
    sample.weight = v005,
    maternal.dob.cmc =v011,
    maternal.age = v012,
    under5.fam.size = v137,
    fam.size = v136,
    country.code.phase = v000,
    rural.urban = v025,
    maternal.education.yrs = v133,
    hhold.heard.sex = v151,
    hhold.heard.age = v152,
    fam.wealth = v191,
    maternal.weight = v437,
    maternal.height = v438,
    maternal.bmi = v445,
    current.pregnant = v213,
    child.twin = b0,
    child.mob = b1,
    child.yob = b2,
    child.dob.cmc = b3,
    child.gender = b4,
    child.birth.weight = m19,
    child.size.birth = m18,
    birth.weight.recall = m19a,
    child.weight.kgs = hw2,
    child.height.cm = hw3,
    child.height.agestd.newho = hw70,
    child.weight.agestd.newho = hw71,
    child.weight.heightstd.newho = hw72,
    bmi.std.newho = hw73
  ) |> 
  # Converting some variables into factors
  mutate_at(.vars = c("rural.urban", "hhold.heard.sex", "child.gender"), .funs = as.factor) |> 
  # Converting some variables into character 
  mutate_at(.vars = c("case.id", "country.code.phase"), .funs = as.character)


# Wealth index for 2000
wealth_index_2000 <- read_stata("./data/wealth_index_2000.dta") |> 
  select(
    case.id = whhid,
    fam.wealth = wlthindf
  )

# Importing zdhs_2000 datasets

zdhs_2000 <- read_stata("./data/zdhs_2000.dta") |>
  # selecting and renaming relevant variables
  select(
    case.id = caseid,
    birth.hist.index = midx,
    child.age.months = hw1,
    sample.weight = v005,
    maternal.dob.cmc =v011,
    maternal.age = v012,
    under5.fam.size = v137,
    fam.size = v136,
    country.code.phase = v000,
    rural.urban = v025,
    maternal.education.yrs = v133,
    hhold.heard.sex = v151,
    hhold.heard.age = v152,
    #fam.wealth = v191,
    maternal.weight = v437,
    maternal.height = v438,
    maternal.bmi = v445,
    current.pregnant = v213,
    child.twin = b0,
    child.mob = b1,
    child.yob = b2,
    child.dob.cmc = b3,
    child.gender = b4,
    child.birth.weight = m19,
    child.size.birth = m18,
    birth.weight.recall = m19a,
    child.weight.kgs = hw2,
    child.height.cm = hw3,
    child.height.agestd.newho = hw5,
    child.weight.agestd.newho = hw8,
    child.weight.heightstd.newho = hw11,
    bmi.std.newho = v445
  ) |> 
  # Converting some variables into factors
  mutate_at(.vars = c("rural.urban", "hhold.heard.sex", "child.gender"), .funs = as.factor) |> 
  # Converting some variables into character 
  mutate_at(.vars = c("case.id", "country.code.phase"), .funs = as.character) |> 
  left_join(wealth_index_2000, "case.id")


# complete DHS survey for Zimbabwe from 2000 to 2015
complete.data <- bind_rows(zdhs_2000,zdhs_2005, zdhs_2010, zdhs_2015) |> 
  # Removing missing rows for the important variables
  # filter(!is.na(child.age.months)) |> 
  # filter(!is.na(child.height.agestd.newho)) |> 
  # filter(!is.na(child.weight.agestd.newho)) |> 
  # filter(!is.na(child.weight.heightstd.newho))
  drop_na()






