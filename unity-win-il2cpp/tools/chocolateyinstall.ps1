$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/27c554a2199c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.27f1.exe'
$checksum64     = 'a81a1cd3b74c9276f6c4dad6b5779d6769470b460e5a58e0a7d84fa65c96be18'

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
