$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4f4e359ec3fc/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.7f1.exe'
$checksum64     = '664a58e9f37042e06dbb89c7e48332def6e912bae440bdc87f8d21ceb763b43a'

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
