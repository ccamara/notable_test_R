library(rtweet)

# Autenticate
# auth_setup_default() # No longer working.
auth <- rtweet_app()

rt <- search_tweets("#rstats", n = 1000, include_rts = FALSE, token = auth)

write_as_csv(rt, "rt.csv")
