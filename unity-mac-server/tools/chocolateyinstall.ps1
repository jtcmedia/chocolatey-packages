$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/611a2ee54063/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.4f1.exe'
$checksum64     = '792a4b2a0ac7b8b63ac46f782f1bfea46404337c6f650d0bac8d0cee3d84b417'

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
