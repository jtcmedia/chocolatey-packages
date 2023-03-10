$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/18bc01a066b4/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.46f1.exe'
$checksum64     = '1d7834fc98e4feb52b844e1879d3b1c8b08eadabd8a8eb8187bf72b8adc4b73c'

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
