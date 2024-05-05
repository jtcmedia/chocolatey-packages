$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a2fa5d8d101/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.38f1.exe'
$checksum64     = 'c1291f387dc2abc075c05ba1f1925a20aff8504d6bc4dac7321461de5f0c8cde'

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
