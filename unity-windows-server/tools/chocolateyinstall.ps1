$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bcebec703747/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.10f1.exe'
$checksum64     = 'e0565ea53dc0177b0cbed4fb9f1f54940e561dbf5c1b66a1cb0355f04a7eca50'

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
