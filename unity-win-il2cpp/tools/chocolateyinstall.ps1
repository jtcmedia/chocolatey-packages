$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/342347f1f18f/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.5.0b9.exe'
$checksum64     = '4039a33311787a34531dc5d36fe4b6f649b93342867b24b84ce81a71f98e4abb'

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
