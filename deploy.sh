#!/bin/bash
set -e

# ------------------------------
# Configuración
# ------------------------------
TERRAFORM_DIR="./Terraform"       # Carpeta con Terraform
ANSIBLE_DIR="./Ansible"           # Carpeta con Ansible
ANSIBLE_PLAYBOOK="nginx.yml"       # Playbook principal
INVENTORY_FILE="$ANSIBLE_DIR/inventory_aws_ec2.yml"  # Inventario

# ------------------------------
# Terraform
# ------------------------------
echo "🔹 Inicializando Terraform..."
cd $TERRAFORM_DIR
terraform init

echo "Aplicando Terraform para crear la infraestructura..."
terraform apply -auto-approve

# ------------------------------
# Regresar al root
# ------------------------------
cd ..
chmod 400 $ANSIBLE_DIR/DiegoKey.pem

# ------------------------------
# Ansible
# ------------------------------
echo "Ejecutando Ansible Playbook..."
ansible-playbook -i $INVENTORY_FILE $ANSIBLE_DIR/$ANSIBLE_PLAYBOOK

echo "Despliegue completado correctamente"

