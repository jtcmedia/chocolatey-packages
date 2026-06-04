$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feeafc12a938/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.4.10f1.exe'
$checksum64     = '10755dab249f22ff90680fb481ecc1108615ba130cfcd90919534a5d523738ee'

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
