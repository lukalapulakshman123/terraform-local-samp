resource "local_file" "file1" {
filename=var.filename
content=var.filecontent
file_permission=var.filepermission
}
resource "random_pet" "mysamp" {
prefix=var.prefix
separator=var.separator
length=var.length
}
