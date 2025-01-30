book <- read.csv("Book1.csv")
View(book)
head(book)
review_data <- book[,c("Reder.Id","Review","Sesson.no","Completed")]
set.seed(123)
kmeans_result2 <- kmeans(review_data, centers = 3, nstart = 25)
book$clusture <- as.factor(kmeans_result2$cluster)
print(kmeans_result)
library(ggplot2)
ggplot(book, aes(x =Review , y = Sesson.no, colour = clusture)) +
  geom_point(size = 2) + 
  labs(title = "K-Means clustering of Book Reviews",
       x = "Review", y = "Sesson number") + theme_classic()
write.csv(data, "review_with_clusture.csv", row.names = FALSE)
table(book$clusture)
Jeyajanaani_K_G <-read.csv("review_with_clusture.csv")
View(Jeyajanaani_K_G)
