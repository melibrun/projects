library("ape")
library("Biostrings")
library("ggplot2")
library("ggtree")
library("colorspace")
library(treedataverse)

tree <- ape::read.tree("newick_tree")

cls <- list(c1=c(
  'ALE-1',
  'Beta-lytic metalloendopeptidase',
  'CwlP',
  'LasA (staphylolysin)',
  'Leukocyte cell-derived chemotaxin 2',
  'LytU',
  'MepM (YebA)',
  'SpM23_A',
  'SpM23_B',
  'Tuc 2009 lys (fragment Tal2009)',
  'lysostaphin',
  'millericin B'
)

tree <- groupOTU(tree, cls)

ggtree(tree, layout="circular", aes(color=group, linetype=group)) + geom_text(aes(label=label),  hjust=-.25) +
  scale_color_manual(values=c("black", rainbow_hcl(4))) + theme(legend.position="right")





cls <- list(c1=c(
  'd079A',
  'd081A',
  'd086A',
  'd089A',
  'd090A',
  'd097A',
  'd098A',
  'd099A',
  'd107A',
  'd145A',
  'd146A',
  'd147A',
  'd149A',
  'd150A',
  'd152A',
  'd153A',
  'd154A',
  'd155A',
  'd156A',
  'd157A',
  'd158A',
  'd159A',
  'd169A']
  
)



tree <- ape::read.tree("newick1.newick")
cls <- list(c1 = c(
  'C3V162',
  'E2BT13',
  'P37364',
  'P80033',
  'P80154',
  'P82380',
  'P83668',
  'P83669',
  'Q5QFI4',
  'A0A6P5P3F7',
  'A0A7N9CM45',
  'A0A833SR94',
  'A4PIL5',
  'D1M7B5',
  'G3SBD9',
  'H2PPG5',
  'L8HN19',
  'O18815',
  'P07468',
  'P46159',
  'P46160',
  'P46161',
  'P82317'
))
tree <- groupOTU(tree, cls)
ggtree(tree, aes(color=group, linetype=group)) + geom_text(aes(label=label),  hjust=-.25) +
  scale_color_manual(values=c("black", rainbow_hcl(4))) + theme(legend.position="right")
