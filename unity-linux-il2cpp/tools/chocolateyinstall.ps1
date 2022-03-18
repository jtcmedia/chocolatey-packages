$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/559fc0ec6670/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.16f1.exe'
$checksum64     = '606052f80b845cda2cd1625cba2b9e272626041afacad5501f2845fcbcb1f8df'

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
