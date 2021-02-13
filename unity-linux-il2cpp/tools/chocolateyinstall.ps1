$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/becced5a802b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.2.4f1.exe'
$checksum64     = 'd1840dffd1a36aedada808f4c82feb61da8feeafe3b69ae71c31620d052fe154'

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
