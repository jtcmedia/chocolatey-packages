$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/923722cbbcfc/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.1.5f1.exe'
$checksum64     = 'f8e1f30bfc2c7f74e60016f887a628a2096a2aa8dcd6a266ababa58f48ffc43f'

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
