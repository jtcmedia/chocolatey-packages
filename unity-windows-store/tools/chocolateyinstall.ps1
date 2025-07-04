$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf6d2d083ec9/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.0b8.exe'
$checksum64     = '8c3aa7c30709594daf35cff1103b2a131021b5ace2c02ccf36ca7e14fac26e3d'

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
