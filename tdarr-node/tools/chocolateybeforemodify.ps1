# Automatically close Tdarr Node if running
# Works only with the default installation paths
$tdarrNodeProcess = Get-Process -Name "Tdarr_Node*" -ErrorAction "SilentlyContinue"
if ($tdarrNodeProcess) {
    Write-Host "Tdarr Node is running, closing for upgrade."
    & $tdarrNodeProcess.Path --exit-all
}