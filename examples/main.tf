module "app_insights" {
  source = "../"

  rg_name = "test-rg"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
