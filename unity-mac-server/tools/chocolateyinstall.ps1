$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/916d9c03b898/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.12f1.exe'
$checksum64     = 'a558bb05b72df3cd933d1a96b3e1f043b5e01f6939caef08ec0acfda1137c73c'

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
