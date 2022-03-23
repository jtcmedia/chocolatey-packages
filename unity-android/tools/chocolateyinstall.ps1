$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/019e31cfdb15/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.4.37f1.exe'
$checksum64     = '815888107eded736c5d02acdbb0435eaee3a95937781762981d42bbfecb8750e'

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
