$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4d8c25f7477e/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.11f1.exe'
$checksum64     = '2cc00e79ee89df2548460784b00a0a803b8ec063b062232e1527323db8d1688c'

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
