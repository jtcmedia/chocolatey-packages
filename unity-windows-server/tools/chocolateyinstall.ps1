$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35a524b12060/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.20f1.exe'
$checksum64     = '82031edb3e0316766965dc7d59493a622a4b0d4278425a064911f47898e8b50e'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
