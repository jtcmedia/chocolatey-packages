$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c36be92430b9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.2f1.exe'
$checksum64     = '37e2ed7ac924bb1a2cc6ae0aaa332646a719672a397beaaebbcd86c0c8bf1120'

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
