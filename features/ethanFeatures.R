train <- read.csv('train.csv')

# Isolate columns
train <- train[c('X0001E','X0036E','X0037E','X0038E','X0040E','X0041E','X0042E','X0043E','X0039E','X0045E','X0046E','X0047E','X0048E')] 

# Renaming and taking more precise percentages
train <- train %>% mutate(train, white = 100 * X0037E / X0001E,
                          black = 100 * X0038E / X0001E,
                          indCher = 100 * X0040E / X0001E,
                          indChip = 100 * X0041E / X0001E,
                          indNava = 100 * X0042E / X0001E,
                          indSiou = 100 * X0043E / X0001E,
                          indOther = 100 * (X0039E - (X0040E + X0041E + X0042E + X0043E)) / X0001E,
                          indian = 100 * X0045E / X0001E,
                          chin = 100 * X0046E / X0001E,
                          fil = 100 * X0047E / X0001E,
                          jap = 100 * X0048E / X0001E)

# Removing unnamed/extra columns
train <- train[14:24]