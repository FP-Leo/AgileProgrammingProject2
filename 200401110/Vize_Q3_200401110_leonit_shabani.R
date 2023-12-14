source("Vize_Q2_200401110_leonit_shabani.R")

artists_names <- c("Imagine Dragons", "One Direction", "Elvana Gjata", "Dafina Zeqiri", "Taylor Swift")

spotify_search_artist_list <- lapply(artists_names, spotify_search_artist)

my_artists_dataframe_list <- lapply(spotify_search_artist_list, function(x) x[[2]])

my_artists_final_list <- lapply(my_artists_dataframe_list, function(x){
  data.frame(artist=x[[1]][[1]], id =x[[2]][[1]])
})

my_artists <- do.call(rbind, my_artists_final_list)
