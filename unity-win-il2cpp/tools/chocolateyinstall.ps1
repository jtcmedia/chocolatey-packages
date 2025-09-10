$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c7638eb16d91/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.3f1.exe'
$checksum64     = 'd4ef8eb8264a671b19ace0a53119ad3fc81b11878ba57286f918121e3a6ce6c9'

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
