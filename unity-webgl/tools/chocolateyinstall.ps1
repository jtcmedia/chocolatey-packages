$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ebeb53e4c07/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.3.18f1.exe'
$checksum64     = '6c92b958340d3449205f0bc5a712bd86400f1abbd3fba76b84656ad4d173c288'

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
