$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157d81624ddf/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.40f1.exe'
$checksum64     = '993a6704db1ec69a9019a5742e9bfcfd61648ceed47b939302f65fccea233b4e'

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
