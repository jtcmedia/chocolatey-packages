$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cc571a6ec95/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.9f1.exe'
$checksum64     = 'aa6896ba9f8ef7139d5bd6cc2fc4f1cae0b2fa9725252d653ed0fb30d0869dca'

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
