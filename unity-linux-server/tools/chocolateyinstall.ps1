$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7134d7685e5d/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.11f1.exe'
$checksum64     = '6dd1f072524cf57b82d42085335b9a78c61998ed29966da63ddad740564bda92'

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
