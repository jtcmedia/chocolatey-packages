$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/696ec25a53d1/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.3.7f1.exe'
$checksum64     = '3b98c565f270a8a37e27966a056e7e0186ddf294e900bc3dbc44383a7e64ac77'

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
