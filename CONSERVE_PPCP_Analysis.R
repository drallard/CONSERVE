### CONSERVE PPCP Data Analysis
### Sarah Allard
### August 2, 2017

library(readr)
library(ggplot2)

##upload data and check to make sure it imported properly
CONSERVE_PPCP_July2017 <- read_csv("~/Documents/CONSERVE/CONSERVE_PPCP_July2017.csv")
View(CONSERVE_PPCP_July2017)
ppcp <- CONSERVE_PPCP_July2017
str(ppcp)

##Box plots - log transformed data
ERY_log_SiteCode2 <- ggplot(ppcp, aes(x = SiteCode, y = log_ery, fill = WaterType2))
   + geom_boxplot() + theme_bw() + ggtitle("Erythromycin (Antibiotic)") + geom_jitter() 
   + xlab("Site") + ylab("Erythromycin (log(ng/ml))") + scale_fill_discrete(name= "Water Type") 
   + theme(axis.text = element_text(size = 14, angle = 90), axis.title = element_text(size = 18), 
  plot.title = element_text(size = 40), legend.text = element_text(size = 14), 
  legend.title = element_text(size = 18)) + ylim(-8,8)
# aes stands for aesthetic
# fill - choose variable to color boxplots by
# theme_bw() takes away grey background
# geom_jitter() adds data points
# scale_fill_discrete renames legend title
# theme - change axis text size (labels and titles), rotate axis labels
# ylim - change y axis range

AZI_log_SiteCode2 <- ggplot(ppcp, aes(x = SiteCode, y = log_azi, fill = WaterType2)) + 
    geom_boxplot() + theme_bw() + ggtitle("Azithromycin (Antibiotic)") + geom_jitter() 
    + xlab("Site") + ylab("Azithromycin (log(ng/ml))") + scale_fill_discrete(name= "Water Type") 
    + theme(axis.text = element_text(size = 14, angle = 90), axis.title = element_text(size = 18), 
      plot.title = element_text(size = 40), legend.text = element_text(size = 14), 
      legend.title = element_text(size = 18)) + ylim(-8,8)

CIP_log_SiteCode2 <- ggplot(ppcp, aes(x = SiteCode, y = log_cip, fill = WaterType2)) 
    + geom_boxplot() + theme_bw() + ggtitle("Ciprofloxacin (Antibiotic)") + geom_jitter() 
    + xlab("Site") + ylab("Ciprofloxacin (log(ng/ml))") + scale_fill_discrete(name= "Water Type")
    + theme(axis.text = element_text(size = 14, angle = 90), axis.title = element_text(size = 18),
    plot.title = element_text(size = 40), legend.text = element_text(size = 14), 
    legend.title = element_text(size = 18)) + ylim(-8,8)

ATR_log_SiteCode3 <- ggplot(ppcp, aes(x = SiteCode, y = log_atr, fill = WaterType)) 
   + geom_boxplot() + theme_bw() + ggtitle("Atrazine (Pesticide)") + geom_jitter() 
   + xlab("Site") + ylab("Atrazine (log(ng/ml))") + scale_fill_discrete(name= "Water Type") 
   + theme(axis.text = element_text(size = 14, angle = 90), axis.title = element_text(size = 18),
    plot.title = element_text(size = 40), legend.text = element_text(size = 14), 
    legend.title = element_text(size = 18)) + ylim(-8,8)

CAF_SiteCode2 <- ggplot(ppcp, aes(x = SiteCode, y = log_caf, fill = WaterType2)) 
  + geom_boxplot() + theme_bw() + ggtitle("Caffeine") + geom_jitter() + xlab("Site") 
  + ylab("Caffeine (log(ng/ml))") + scale_fill_discrete(name= "Water Type") + 
  theme(axis.text = element_text(size = 14, angle = 90), axis.title = element_text(size = 18), 
  plot.title = element_text(size = 40), legend.text = element_text(size = 14), 
  legend.title = element_text(size = 18))

##Facet wrapping - didn't work but it's something like this:
#ggplot(data=ppcp, aes(x=WaterType2) + geom_boxplot() + facet_wrap(~WaterType2)) + labs(title="Something", x = "Water Type", y = "ng/ml")
#might need to convert data so that all y responses are under the same variable (log(ng/ml))

