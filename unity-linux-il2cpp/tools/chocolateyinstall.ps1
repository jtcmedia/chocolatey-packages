$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/27c554a2199c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.27f1.exe'
$checksum64     = '0271e948e205e101a87695523da7ea6df6bb420f8a545f4f65bae3f7d26efd1b'

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
