$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7197418f847b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.1f1.exe'
$checksum64     = 'd2b02a9297ae5df158ffed333c51851dc5d594945fab11b7024c26440fd6317e'

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
