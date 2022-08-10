$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b30333d56e81/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.8f1.exe'
$checksum64     = 'bbfbf21ba2b60bad974b99e7c48d8ec487cd7316a8ef8d73d4f8efca32e8e3e9'

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
