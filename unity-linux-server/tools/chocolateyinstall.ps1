$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a9845a6430b3/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.0b9.exe'
$checksum64     = '4433cac88b4f209807cffc9d203cd93f432102fdb3e9d390d003a03044e72d38'

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
