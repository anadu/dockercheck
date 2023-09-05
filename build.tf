resource "docker_image" "terraform" {
  name = "000100000/dockercheck:1"
  build {
    context = "."
  }
  triggers = {
    dir_sha1 = sha1(join("", [for f in fileset(path.module, "src/*") : filesha1(f)]))
  }
}
