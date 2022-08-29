module "user" {
    source = "../../user"
    username = var.users
    user_group =var.gp
}

  
module "my-buck" {
  source = "../../s3"
  for_each =  var.buck_loop  
  bucket_name = each.value
}
