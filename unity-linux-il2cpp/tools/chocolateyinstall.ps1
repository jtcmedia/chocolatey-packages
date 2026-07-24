$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d16e074b49fd/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.5f1.exe'
$checksum64     = '5bf84c3d5a0a9ef184597cfe7ea11239ee4f55c5fba6a9a1229ce45924f86f48'

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
