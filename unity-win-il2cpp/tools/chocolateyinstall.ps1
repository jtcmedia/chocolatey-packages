$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '65f6ed3ffa7051b93238b6b7e8549f98b65ce4bb253636b36c4db75675774d0a'

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
