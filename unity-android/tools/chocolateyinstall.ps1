$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0a9195b3d453/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.7f1.exe'
$checksum64     = '01445d00dbb155aa8bda20dd507dc2e24937e9a2a6e73ac1bf17ec4067206a2f'

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
