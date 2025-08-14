$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/67bef3276ff1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.1.16f1.exe'
$checksum64     = '244e92de3b34577c9f06a11c015818c3e7c2af3f8dc8930cbd22d2e9d6f815cd'

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
