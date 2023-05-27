$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a16dc32e0ff2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.26f1.exe'
$checksum64     = 'bd3694da531335c9e3e4bf927669901f6fa271c1ebbdeea5ef7a76dbad7690d8'

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
