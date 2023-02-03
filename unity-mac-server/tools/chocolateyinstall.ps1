$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/551d45108343/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.5f1.exe'
$checksum64     = '0fdf87723d73e4f96d6bf1f7087a5bce7f790e39e33a2cd82293ffc112ca1662'

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
