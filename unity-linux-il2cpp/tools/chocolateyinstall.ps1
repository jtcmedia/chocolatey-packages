$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a3bb09f8c8c4/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.8f1.exe'
$checksum64     = 'd04ea8bc97ed6459bd5d236a55543a5d0f9b83f7503e6352faa883178a7b159e'

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
