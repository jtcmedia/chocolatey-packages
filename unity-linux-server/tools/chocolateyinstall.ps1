$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = 'a87b5149966525087609146a500c352b4d9d4ac5e55e637d6e38a95cd09db006'

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
