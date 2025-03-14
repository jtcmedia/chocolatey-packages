$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feb9a7235030/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.42f1.exe'
$checksum64     = '964f06ea713a38d02b09cbcd7569241e0f7e20a352a1863418f33b4b3fc403a7'

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
