$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feeafc12a938/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.4.10f1.exe'
$checksum64     = 'd495a4fe615261e9d474fd7e69a34030f035c2b7c1ba82196c25bfb589607142'

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
