$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/101c91f3a8fb/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.44f1.exe'
$checksum64     = 'a76a8eccee3414ce360cd9854c696d832c7d236422a95e14c0c7de1beb43fbe9'

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
