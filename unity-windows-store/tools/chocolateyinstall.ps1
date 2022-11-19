$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eee1884e7226/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.14f1.exe'
$checksum64     = '38c1422e9a012053449a2ab01b79f3b559fbe44ebc887cd41710736f0678a3e3'

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
