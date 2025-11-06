$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = 'b5171b3d2b6e7c3c3f2475b82362f2b037257efac30500a8067081348d27969a'

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
