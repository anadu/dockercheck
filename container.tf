resource "docker_container" "kishore" {
  lifecycle {
   create_before_destroy = true
  }
  name  = "checking"
  image = docker_image.terraform.image_id

  ports {
    internal = "80"
    external = "9001"
  }
}
