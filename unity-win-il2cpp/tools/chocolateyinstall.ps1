$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/42973686a05c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.15f1.exe'
$checksum64     = 'a133bff635e585c5ed82305e752e714d15e313efdbd8f2f215b2af0ff193eb62'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
