$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9f9d16c45e54/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.51f1.exe'
$checksum64     = '8d036b00501c14ea6fdae524ce015a40a4c0a2bf8c6ff81fcbb11de46f80bfaf'

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
