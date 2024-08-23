$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/85497d293fa1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.43f1.exe'
$checksum64     = '37232f12d6e4281b1f56bc8a7857a9b7cb97c7888160ec27785d477c8fe43d4e'

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
