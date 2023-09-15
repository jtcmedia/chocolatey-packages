$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ffeab063bb93/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.13f1.exe'
$checksum64     = 'e13190c0e300ee48fd3f513f8ab2f57e02eec696adc5da19963b8cd26cacec88'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
