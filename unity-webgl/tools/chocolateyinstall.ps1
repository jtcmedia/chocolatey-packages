$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9aa0f82c4f96/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.10f1.exe'
$checksum64     = '4463eae6c38d19cf0172cb1398d956d5edb795617d50c3e6b04a0e3554823946'

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
