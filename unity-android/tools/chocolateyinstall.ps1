$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = '143b0910b9a1d5f3a4d1cf050af67d0ef8d54ec727f6024260cb2ee5f5046e5b'

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
