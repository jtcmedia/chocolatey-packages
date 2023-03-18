$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/621cd60d08fd/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.11f1.exe'
$checksum64     = '93681e9bd9f60b68267999707933e23c12292c455dc05b6e52fc1557f6b765da'

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
