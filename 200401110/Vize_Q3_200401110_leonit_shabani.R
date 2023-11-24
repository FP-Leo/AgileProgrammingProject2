source("Vize_Q2_200401110_leonit_shabani.R")

artists_names <- c("Imagine Dragons", "One Direction", "Elvana Gjata", "Dafina Zeqiri", "Taylor Swift")

my_artists <- data.frame(
  artist = sapply(artists_names, function(artist_info){
    spotify_search_artist(artist_info)$search_results[[1]][[1]]
  }),
  id = sapply(artists_names, function(artist_info){
    spotify_search_artist(artist_info)$search_results[[2]][[1]]
  })
)
rownames(my_artists) <- NULL
