workflow "Deploy Release" {
  on = "push"
  resolves = [" Github Create Release"]
}

action " Github Create Release" {
  uses = "./"
  secrets = ["GITHUB_TOKEN"]
   env = {VERSION  = "2.1"}
  
}
