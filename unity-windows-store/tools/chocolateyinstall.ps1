$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f336aca0cab5/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.28f1.exe'
$checksum64     = '062da1b9f6afc9f80b8b6310f14f442cdee6b0dd3d3b37370b8f6876d1f70faf'

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
