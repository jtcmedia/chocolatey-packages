$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = 'f54787042c7cf269b34330337cc99255809ee36f69da5acdc936ede6a284be62'

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
