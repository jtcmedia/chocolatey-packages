# Automatically close Tdarr Node if running
Get-Process -Name "Tdarr_Node*" | Stop-Process -Force