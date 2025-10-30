$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d3d30d158480/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.10f1.exe'
$checksum64     = '84d89dbb815881a37f1da9e97aef727020e905e218ed33564e127a7b5070e854'

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
