$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d20c9ac777da/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.6f1.exe'
$checksum64     = 'cd5d869c5238b5aec7e90bdbbef60bd94980e5c00c9ebfbf79a9e75f46a0c473'

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
