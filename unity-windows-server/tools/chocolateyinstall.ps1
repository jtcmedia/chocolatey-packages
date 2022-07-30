$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/24e8595d6d43/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.7f1.exe'
$checksum64     = 'b63a0eba15e9aa9bb8712ebfc07ac6b82a09f14ce44716a17f40a34bb863c8ee'

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
