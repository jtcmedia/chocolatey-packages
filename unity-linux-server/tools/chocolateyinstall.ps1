$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7258d6eebbe/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.4.9f1.exe'
$checksum64     = '32aaf792ff46bd2b56b07f5e54d8a46743fec2b4652507d827323fbce9439441'

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
