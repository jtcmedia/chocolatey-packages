$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/57daeefc879b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.6f1.exe'
$checksum64     = '929ecce9d7e1918b72502121c1a14cb8808150e378d8b440ca25ec8e1388c020'

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
