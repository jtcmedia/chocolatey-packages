$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/94d194ca434d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.44f1.exe'
$checksum64     = '8b469d3a0c94db2368b1141c018ca6ed4e3d19cf2835ace0599d0fcac9ebdf12'

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
