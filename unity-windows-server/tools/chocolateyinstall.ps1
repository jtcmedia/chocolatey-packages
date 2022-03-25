$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/efb8f635e7b1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.2.17f1.exe'
$checksum64     = '17b0ec9ef68d8708302d870e0a1604515fc60cba53f62be5cfbd3a683891bdc2'

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
