$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a01b55183a9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0a1.exe'
$checksum64     = 'af8ad114758101ef9e5828adc6cab79656ded40e859ef2bac2a4d4d5581cf815'

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
