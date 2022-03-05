variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "app_insight_location" {
  default = "centralus"
}

variable "rg_name" {}

variable "application_insight_type" {
  default = "web"
}

variable "application_insights_depends_on" {
  default = null
}
