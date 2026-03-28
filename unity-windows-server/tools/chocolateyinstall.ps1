$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = 'eff41ef06e4010021280f90a0195d3d30e2f6f7742cc5e3586c8e0c7d778364c'

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
