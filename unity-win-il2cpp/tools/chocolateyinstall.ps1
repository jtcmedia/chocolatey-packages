$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7258d6eebbe/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.4.9f1.exe'
$checksum64     = 'bac7756ad1a16f5b7495c77420af4475ac875bba0262275f6f16e2e57c009afc'

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
