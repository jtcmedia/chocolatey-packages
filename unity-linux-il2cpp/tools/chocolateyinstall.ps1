$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bae5ce6b222/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.28f1.exe'
$checksum64     = 'b396775165540977319b8f8116b4a6a09d9aed59a723042347a40641814174c8'

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
