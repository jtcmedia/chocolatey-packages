$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/81a3023a9d59/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.0b6.exe'
$checksum64     = '5ab293a5059650f56154a45f060ec2e1dc262183fc3ce3b937406e6bf21a579e'

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
