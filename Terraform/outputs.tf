# ========================================
# Outputs
# ========================================

output "alb_dns_name" {
  description = "DNS name del Application Load Balancer"
  value       = aws_lb.app_alb.dns_name
}

output "expected_key_path" {
  description = "Ruta donde Terraform intenta guardar la clave privada."
  value       = local_file.private_pem.filename
}
