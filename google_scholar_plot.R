#!/home/miles/bin/R-devel/bin/Rscript

# install.packages('scholar')
library(scholar)
library(ggplot2)

cit <- get_citation_history('iEhBavEAAAAJ')

png('/home/miles/gitrepos/Miles_CV/scholar_plot/scholar_citations_iEhBavEAAAAJ.png', width=800, height=300, res=150)
ggplot(cit,aes(x=year,y=cites)) +
  geom_bar(stat='identity', width = 0.4, fill = "#015eaa") +
  theme_bw() +
  xlab('Year of citation') +
  ylab('Google Scholar\n cites') +
  annotate("text", label = format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z"), x = -Inf, y = Inf, vjust = 1.5, hjust = -0.05, size = 3, color = "#015eaa")
dev.off()
## END