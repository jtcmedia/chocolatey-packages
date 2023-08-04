$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4f4e359ec3fc/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.7f1.exe'
$checksum64     = 'e737e0204801d57e0116e8abed0c01d1f22bc2874c7ffc8af53d5d38959347c5'

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
