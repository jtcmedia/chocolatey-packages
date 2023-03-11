$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bcebec703747/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.10f1.exe'
$checksum64     = 'ede8a1ea8cc59e790ce9bdf98a20d1aa12b0533e599211941d8435ffe5bd3cd9'

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
