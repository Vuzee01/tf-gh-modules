resource "github_repository" "tf_test_template" {
  name        = "tf_test_template"
  description = "My awesome codebase"
  auto_init = true
  visibility = "private"
  is_template = true
}


resource "github_repository" "repo" {
  name        = "${var.REPO_NAME}"
  description = "My awesome codebase"
  depends_on = [github_repository.tf_test_template]

  visibility = "private"
  template {
    owner = "Vuzee01"
    repository = "tf_test_template"
  }
}


# resource "github_branch" "development" {
#   depends_on = [github_repository.repo]
#   repository = github_repository.repo.name
#   branch     = "development"
# }

# resource "github_branch_default" "default"{
#   repository = github_repository.example_repo
#   branch     = github_branch.development.branch
# }