yc_zone = "ru-central1-a"
# Container Optimized Image 2.3.49
os_image = "fd8vq2agp2bltpk94ule"
# Ubuntu 22.04
#os_image              = "fd8bkgba66kkf9eenpkb"
ssh_key_path         = "../ssh/id_student.pub"
ssh_private_key_path = "~/.ssh/id/yandex/cloud/id_student"
datadog_url          = "https://api.datadoghq.eu/"
servers              = ["web-1", "web-2"]
disk-size            = "30"
disk-type            = "network-hdd"