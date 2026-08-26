$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = '3ed966b9e29e284d6d7735bfc668c74db5be65c6953f7a7d57bea20811b5e8be'

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
