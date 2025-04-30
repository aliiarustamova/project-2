data "aws-ami" "wordpress" {
    filters = {
        virtualization-type = "hvm"
        values = ["wordpress-ami-group-2-*"]
    }
    owners = ["self"]
    most_recent = true
}