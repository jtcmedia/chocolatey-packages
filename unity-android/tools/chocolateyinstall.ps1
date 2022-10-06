$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2fd7b40534d1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.19f1.exe'
$checksum64     = '5d0fba1f7947d582f8331c356b8d179cdd07ffcc0ddad0c65725bb165f263460'

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
