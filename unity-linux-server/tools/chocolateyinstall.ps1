$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1b156197d683/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.21f1.exe'
$checksum64     = '8cff1717a4056de6de430a747fece50cf21021e614995958d774e841c4099a7a'

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
