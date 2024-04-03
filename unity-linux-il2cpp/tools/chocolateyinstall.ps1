$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f45223012db/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.16f1.exe'
$checksum64     = '96501ab5eb904904f01845a3f6682a78f31ac7cbc2f907921ca5bbb7a7492da1'

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
