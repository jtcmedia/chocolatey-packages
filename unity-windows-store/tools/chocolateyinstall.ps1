$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2961e8c2b463/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.1.8f1.exe'
$checksum64     = 'de5b0df22d144c82c74c4597cfd5e6a25efd4da4fbeadd160f6fd92eb3de6003'

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
