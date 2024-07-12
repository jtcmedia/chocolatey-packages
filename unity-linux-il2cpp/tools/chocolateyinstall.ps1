$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/413673acabac/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.10f1.exe'
$checksum64     = '4d477ebaccb447387337d787dcac82353849699c523b3e126d099a1759e04eb7'

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
