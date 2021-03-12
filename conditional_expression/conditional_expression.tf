resource "aws_instance" "dev_app" {
    ami = var.ami_id
    instance_type = var.instance_type_dev
    count = var.istest == true ? 1 : 0
    
}
# your conditional count based on true or false 
# specified in variable.tf and terraform.tfvars
resource "aws_instance" "dev_db" {
    ami = var.ami_id
    instance_type = var.instance_type_prod
    count = var.istest == false ? 3 : 0

}