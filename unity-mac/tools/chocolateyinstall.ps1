$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d535843d11e1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.16f1.exe'
$checksum64     = 'b16e201aebdacbd24ec447bffefa8753fd77030f37d3eaa9f0c3fe4b15d52cc7'

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
