$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ae37dbaefed8/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.16f1.exe'
$checksum64     = 'd9d90e50047efd937109c68bc59f36ea42ed972d2b34e2623c44345cc2c5aacc'

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
