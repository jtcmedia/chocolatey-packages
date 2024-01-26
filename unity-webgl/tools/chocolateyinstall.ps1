$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0a9195b3d453/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.7f1.exe'
$checksum64     = '6e8dd5fe94e2b0bc517a6ec27fc394c353ab51b6da3bdc1acdb1d7e2b700e863'

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
