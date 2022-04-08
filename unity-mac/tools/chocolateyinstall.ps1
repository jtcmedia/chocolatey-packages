$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/915a7af8b0d5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.3.33f1.exe'
$checksum64     = 'e856172b5ec2a5eb6729249c2f758b7c96d6d58895973b75d94ab1f71fe8edff'

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
