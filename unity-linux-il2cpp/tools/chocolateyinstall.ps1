$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5cbb0b314fa/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.15f1.exe'
$checksum64     = 'c207d22a595063d2fca588733c69c2c07b7ea5b8300748bc4f6e75fbfee310fd'

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
