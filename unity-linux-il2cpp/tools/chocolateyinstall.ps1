$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ac1ff5ca45b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.21f1.exe'
$checksum64     = 'b69a69087319535b7a6cb73c906bfef877d70c9409403c61787e34c98dd4291c'

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
