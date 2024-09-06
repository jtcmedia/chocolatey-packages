$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3699cf869f9b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.18f1.exe'
$checksum64     = '456e3cf30d88822a787c1a3053d666c3697cf27edf352f646405505094f6eefd'

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
