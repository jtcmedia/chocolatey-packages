$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa01dd6b76d5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.11f1.exe'
$checksum64     = 'a1950c90ccb440e7ba535d38b08cb88f24788e1a9ea537cd7188603cb7e9845c'

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
