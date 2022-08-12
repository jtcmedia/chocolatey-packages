$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/22856944e6d2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.13f1.exe'
$checksum64     = '608727af7714b86c0b47a124f6e7b10350a3e7a916718dc7e8da7b69c6dae3bd'

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
