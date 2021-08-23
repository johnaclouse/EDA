x = df["model"]
x_table <- as_tibble(table(x))
top20 <- head(x_table, 20)
ggplot(top20, aes(
  x = fct_rev(x),
  y = n,
  fill = fct_rev(x),
  label = n
)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  geom_label(
    aes(fill = x),
    colour = "white",
    fontface = "bold",
    show.legend = FALSE
  ) +
  scale_fill_viridis_d(option = "H", begin = 0.5, end = 1, direction = 1) +
  labs(title = "Top 20 most frequent values") +
  coord_flip() +
  theme_minimal() +
  theme(axis.title.x=element_blank(),
        axis.title.y=element_blank())

