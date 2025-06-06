$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.1.6f1.exe'
$checksum64     = 'bf835b1ab1efb907ad2064be818a6b435231d0e41dd08084eb0b14a77d76574f'

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
