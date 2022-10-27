$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = 'd1f601595c48dba99a6b4c48e61bbe4be6133bb9a4f3d8bed4c778197324b89d'

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
