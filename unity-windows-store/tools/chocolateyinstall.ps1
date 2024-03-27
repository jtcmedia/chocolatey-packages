$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5cbb0b314fa/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.2.15f1.exe'
$checksum64     = 'fe343fa552a9efdd50059f6a029be3f1be39122741914c166ef9f70321eb5101'

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
