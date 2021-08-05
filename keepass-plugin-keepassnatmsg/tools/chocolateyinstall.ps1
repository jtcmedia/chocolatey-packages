$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    url           = 'https://github.com/smorks/keepassnatmsg/releases/download/v2.0.12/KeePassNatMsg-v2.0.12-binaries.zip'
    checksum      = '90b5a6afadea983dcccff3ca1a46e2ee9501aa516532a4a70784747008b20aee'
    checksumType  = 'SHA256'
}

$packageSearch = 'KeePass Password Safe*'
$installPath = ''

Write-Verbose "Searching for Keepass install location."
if ([array]$key = Get-UninstallRegistryKey -SoftwareName $packageSearch) {
    $installPath = $key.InstallLocation
}

if ([string]::IsNullOrEmpty($installPath)) {
    Write-Verbose "Searching '$env:ChocolateyToolsLocation' for portable install..."
    $portPath = Join-Path -Path $env:ChocolateyToolsLocation -ChildPath "keepass"
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
