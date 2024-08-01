$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = 'd4670b9f57b7680be062c71d39fc2b6aa523348b46dc26bf690a59300a1e5b45'

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
