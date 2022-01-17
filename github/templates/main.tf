resource "github_repository" "template_repository" {
  name        = "${var.template_name}"
  description = "${var.desc}"
  auto_init = true
  visibility = "${var.visibility}"
  is_template = true
  delete_branch_on_merge = true
}

# Dodati dodavanje templejta u odredjeni tim