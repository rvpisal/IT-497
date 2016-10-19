install.packages("repmis")
library(repmis)

apps_count1=("https://raw.githubusercontent.com/jrwolf/IT497/master/apps_count.csv")
apps_count <- repmis::source_data(apps_count1)

nobles1=("https://raw.githubusercontent.com/jrwolf/summer/master/nobles.csv?token=AFXDqk09s6FP_-xFbiyFgu19zKWXqbK9ks5YBuqCwA%3D%3D")
nobles=repmis::source_data(nobles1)