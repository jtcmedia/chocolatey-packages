$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = 'a3aa13aeb3dc1b960da173d9124938b98e43e9b9301c925d9a84b6e62936ca89'

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
