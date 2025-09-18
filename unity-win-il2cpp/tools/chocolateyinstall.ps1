$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/43d04cd1df69/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.5f1.exe'
$checksum64     = '55fe5d9c3bfacadc501ac3c639155b36db995958353c4c4186d54294a7892566'

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
