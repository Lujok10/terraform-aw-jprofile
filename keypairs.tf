resource "aws_key_pair" "jprofilekey" {
  key_name = "jprofile"
  public_key = file(var.PUB_KEY_PATH)
}