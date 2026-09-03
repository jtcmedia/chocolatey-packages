$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5c3a1087d8e4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.5.11f1.exe'
$checksum64     = 'a9735371ba4d76a8a2b748ba1e1c59212d02b8f0fed600859c98838257d2fe28'

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
