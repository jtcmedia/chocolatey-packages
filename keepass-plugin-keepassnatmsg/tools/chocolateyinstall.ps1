$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    url           = 'https://github.com/smorks/keepassnatmsg/releases/download/v2.0.17/KeePassNatMsg-v2.0.17-binaries.zip'
    checksum      = '4ae61924d286d0072412aba93521d7c98f6455e89d718f4377c2855c35e49d26'
    checksumType  = 'SHA256'
}

$packageSearch = 'KeePass Password Safe*'
$installPath = ''

Write-Verbose "Searching for Keepass install location."
if ([array]$key = Get-UninstallRegistryKey -SoftwareName $packageSearch) {
    $installPath = $key.InstallLocation
}

if ([string]::IsNullOrEmpty($installPath)) {
    Write-Verbose "Searching 'ChocolateyToolsLocation' for portable install..."
    $portPath = Join-Path -Path Get-ToolsLocation -ChildPath "keepass"
    $installPath = Get-ChildItem -Directory "$portPath*" -ErrorAction SilentlyContinue
}

if ([string]::IsNullOrEmpty($installPath)) {
    Write-Verbose "Searching '$env:Path' for unregistered install..."
    $installFullName = Get-Command -Name keepass -ErrorAction SilentlyContinue
    if ($installFullName) {
        $installPath = Split-Path $installFullName.Path -Parent
    }
}

if ([string]::IsNullOrEmpty($installPath)) {
    throw "$($packageSearch) not found."
}
else {
    Write-Verbose "Found Keepass install location at '$installPath'."
}

$packageArgs.unzipLocation = Join-Path -Path $installPath -ChildPath 'Plugins'

if (Get-Process -Name 'KeePass' -ErrorAction SilentlyContinue) {
    Write-Error "Keepass is currently running. Please exit Keepass and try upgrading again."
}
else {
    Install-ChocolateyZipPackage @packageArgs
    Write-Host "'$($packageArgs.packageName)' will be loaded the next time KeePass is started."
}
