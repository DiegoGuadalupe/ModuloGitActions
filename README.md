# ModuloGitActions
En este repositorio se guardan los archivos de la práctica final. <br>
Prerrequisitos:
- Instalar Ansible en la máquina.
- Instalar Terraform en la misma máquina.

## 📁 Directorio principal (`ModuloGitActions`)
- Ansible/: En este directorio se encuentran los archivos de Ansible
- Terraform/: En este directorio se encuentran los archivos de Terraform
- deploy.sh: Archivo que ejecuta Terraform y luego la parte de Ansible
- .github/workflows/ValidacionManual.yml: Archivo que contiene las instrucciones para validar el código del repositorio por medio de GitHub Actions

## Modo de ejecución

Debemos ejecutar el archivo `deploy.sh` de la siguiente manera:

- Ejecución del shell script master: `./deploy.sh`  

Si nos falla la ejecución por falta de permisos, debemos aplicar el siguiente comando `chmod 777 deploy.sh`.
Asimismo, si al crear la estructura de AWS por medio de Terraform, vemos que no avanza, presionaremos Ctrl + C, esperaremos a que acabe y lo volveremos a ejecutar. <br>
Así crearemos toda la estructura de AWS y los configuraremos por medio de Ansible.
