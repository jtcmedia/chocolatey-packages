$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6b6e9fc2adda/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.22f1.exe'
$checksum64     = 'fc78ce15f9b96860c21e85aae079a08244c6a292d0f2a757c2ae8f36121e794a'

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
