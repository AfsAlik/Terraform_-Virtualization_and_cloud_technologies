# Блок конфигурации Terraform
terraform {
  required_providers {
# Провайдер для работы с Proxmox VE
    proxmox = {
# Источник провайдера (репозиторий, откуда будет скачан плагин)
# telmate/proxmox - это провайдер от сообщества для управления Proxmox VE
      source  = "telmate/proxmox"
# Версия провайдера
      version = "3.0.2-rc04"
    }
  }
}
# Блок конфигурации провайдера Proxmox
provider "proxmox" {
  pm_api_url      = "https://192.168.1.100:8006/api2/json"
# Имя пользователя для аутентификации
  pm_user         = var.pm_user
# Пароль для аутентификации                                
  pm_password     = var.pm_password     
# Отключение проверки SSL/TLS сертификата                   
  pm_tls_insecure = true      
# Отключение минимальной проверки прав доступа
  pm_minimum_permission_check = false                             
}