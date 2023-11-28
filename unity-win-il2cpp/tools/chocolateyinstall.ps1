$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a6dd9a634651/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.1f1.exe'
$checksum64     = 'cbd603702b60e67a967deb4d1e5a03b10ea0d991c58674e9472b437399abddfa'

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
