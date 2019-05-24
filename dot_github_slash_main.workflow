# deployificationator dot_github_slash_main.workflow
#.github/main.workflow

workflow "Push Trigger" {
  on = "push"
  resolves = ["GitHub Action for Slack"]
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@master"
  secrets = ["SLACK_WEBHOOK"]
  args = "push complete to grokability/deployificationator:[master] "
}