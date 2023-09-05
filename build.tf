resource "docker_image" "terraform" {
  name = "000100000/dockercheck"
  build {
    context = "."
  }
  triggers = {
    dir_sha1 = sha1(join("", [for f in fileset(path.module, "src/*") : filesha1(f)]))
  }
}

resource "docker_container" "kishore" {
  name  = "checking"
  image = docker_image.terraform.image_id

  ports {
    internal = "80"
    external = "9000"
  }
}