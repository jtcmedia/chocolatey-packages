$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/46620eadcc07/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.1f1.exe'
$checksum64     = 'bf6ec88c26914a71f9f8945d7e1eb53c1bd5ad3b54db2bd5ee84ae0bf3392882'

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
