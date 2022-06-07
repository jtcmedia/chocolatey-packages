$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cb45f9cae8b7/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.4f1.exe'
$checksum64     = 'd1163795f3413ad4445fafaa574ff102e1d85c45ff5169fc8c760e8ea0af94ab'

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
