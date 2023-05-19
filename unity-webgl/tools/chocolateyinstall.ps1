$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b805b124c6b7/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.48f1.exe'
$checksum64     = 'a0832cc030c5661577ec3f81d5d4331735c0c13bb8fb29600778fc70e92e8118'

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
