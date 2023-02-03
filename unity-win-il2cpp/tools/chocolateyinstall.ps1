$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/551d45108343/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.5f1.exe'
$checksum64     = 'f8daaa635f5aa4821107b9a14afce5dba6ad252778d5e99d20803ed8ee5983f7'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
