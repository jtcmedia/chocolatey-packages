$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c9c2e1f4bef/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.9f1.exe'
$checksum64     = 'f86e8887b9be4a48e778271288a0a3b47fe2336a53c658846b216323eddced3c'

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
