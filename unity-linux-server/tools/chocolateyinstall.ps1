$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eff2de9070d8/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.14f1.exe'
$checksum64     = 'fba036831c6ef3de3bd9f1211ef93f852b1afd6f0e496fe83e458f5feea3b24d'

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
