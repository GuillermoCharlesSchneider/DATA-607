#Scrape comments from r/DataScience and r/DataEngineering
library(RedditExtractoR)

ds = find_thread_urls(subreddit = "datascience", period = "year")
ds_urls = ds$url
ds_comments = get_thread_content(ds_urls)
ds_comments = as.data.frame(ds_comments$comments)
de = find_thread_urls(subreddit = "dataengineering", period = "year")
de_urls = de$url
de_comments = get_thread_content(de_urls)
de_comments = as.data.frame(de_comments$comments)
setwd('/Users/Lucas/Documents/CUNY/DATA607/Project 3')

reddit_scrape = rbind(ds_comments, de_comments)
write.csv(reddit_scrape, 'reddit scrape.csv')
write.table(reddit_scrape, 'reddit scrape.txt', sep = "\t", row.names = FALSE)
