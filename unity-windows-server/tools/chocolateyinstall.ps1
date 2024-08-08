$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0f988161febf/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.41f1.exe'
$checksum64     = '7a0783ad5cc27c78df0ef046eba5ecb4c486fa5822213edd7aba9ee60d919c1b'

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
