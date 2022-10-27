$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = 'da2376cbfce3de37588f2ad17910cc06395f4fea265b6b1e563c7440d2ddb6ec'

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
