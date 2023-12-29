$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/accd6d46ced1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.4f1.exe'
$checksum64     = 'cb6383342e2014e68b28b074f16e260ada3ef3e93a3032e6e9d7978082152a56'

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
