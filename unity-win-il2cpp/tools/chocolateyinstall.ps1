$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/70558241b701/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.30f1.exe'
$checksum64     = 'a24444d45762c4a0c44a9041100844cc433b90a23f8d8231b0ba16dd08c8fa3e'

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
