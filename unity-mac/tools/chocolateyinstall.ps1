$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/396a1c6fe404/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.17f1.exe'
$checksum64     = '494154a44f75f3a16399febabf5c06513cf76c130c59c1f7afe882a1b2e08208'

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
