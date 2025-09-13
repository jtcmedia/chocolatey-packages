$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17550c9bb584/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.4f1.exe'
$checksum64     = '28c2f58c580b020424c6d9a20446f5162d462d3a7ab98c3214a9c2ca070247c5'

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
