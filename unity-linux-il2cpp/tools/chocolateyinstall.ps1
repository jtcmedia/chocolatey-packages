$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/70558241b701/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.30f1.exe'
$checksum64     = '78b42bbaf7bcc77b7578c2ed9936ca4c69f8bb5f2f92b112046c41c6a1e55930'

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
