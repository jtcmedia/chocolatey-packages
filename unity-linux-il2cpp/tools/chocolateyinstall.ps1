$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4ec9a5e799f5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.5f1.exe'
$checksum64     = '927fbcc6688d973b3a60e8ccd69e59b3d3afa0027f2d6b608acf6436d1e1f8be'

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
