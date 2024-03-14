$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eeca29774eb5/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.14f1.exe'
$checksum64     = '4b3b0deaee903cb69c5ac609126f858cf26d4af3f1184f2e2cba0dd4b9cfec04'

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
