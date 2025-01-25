$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9a3bc604008a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.35f1.exe'
$checksum64     = '5c05c3a8fa2761cbcb9d6944ba7c316e79565ae82d0333d8a2c7d3d385548dec'

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
