install.packages("twitteR")
install.packages("httr")
install.packages("ROAuth")

## Packages for getting Tweets
##
library(twitteR)
library(httr)
library(ROAuth)

## Packages for working with Tweet data
##
library(plyr)
library(stringr)
##
## Package for graphing data
#library(ggplot2)
##

# This sets up the OAuth credentials for a twitteR session
my.key <-'DcT0WUD32i6f7Yafb9e83eH2j'
my.secret <-'yA2fKSXmAkeojO8f1LsVxg8t23uJDTkTjbIemjUybQ16Q2WT0p'
access.token <- '3094439280-yTcgK8FBnl7SuF7RRvU5xh7EjpqPVzNcQBhcJLR'
access.token.secret <- 'ZK92EqFktEOuWD7zXvD3yr8Xu7SnkQVHtrihZmn387vuu'

# Create Twitter Connection
# The OAuth authentication handshake
setup_twitter_oauth(my.key, my.secret, access.token,access.token.secret)

# Search for Bulls Tweets
tweets <- searchTwitter('Ronaldinho', n=1000, lang='en')

# See how many tweets we found
length(tweets)

# Show first 5 tweets -- sort of
head(tweets, 5)

# Strip out Retweets
tweets <- (strip_retweets(tweets, strip_manual=TRUE, strip_mt=TRUE))

# See how many original tweets we found
length(tweets)

# Loop over tweets and extract text
tweets.text <- laply(tweets, function(t) t$getText())

# Show text from first 5 tweets
Twitter_data=head(tweets.text,5)


