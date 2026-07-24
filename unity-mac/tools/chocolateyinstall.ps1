$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d16e074b49fd/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.5f1.exe'
$checksum64     = '965bd7457cdc213db2c56e0bb03dc4a9879c2e520cba7c27d1a2558f5b4b042b'

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
