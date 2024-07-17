$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5d5a7410213/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.38f1.exe'
$checksum64     = 'e6efa178a2ad6173309a6caf4230437fab3f830dbdeb17ce9401973d4f809226'

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
