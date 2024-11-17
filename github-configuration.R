# let R know your github profile
usethis::use_git_config(user.name="econmtlin", user.email="econ.mtlin@gmail.com")
# create token if necessary in your github.com account
usethis::create_github_token()
# store your token in R for R to use
gitcreds::gitcreds_set()
