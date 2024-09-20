$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/05208a74e9aa/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.20f1.exe'
$checksum64     = 'c7ddf6b02767daae5542e1f8d292543a402568cb46581d1e918d0b720004704e'

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
