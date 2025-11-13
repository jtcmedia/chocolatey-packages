$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e89d5df0e333/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.12f1.exe'
$checksum64     = 'd7fbdc7b66e20c1c1a87d40106f61e09d181a6bddfd23339d58da42ded0b6ae7'

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
