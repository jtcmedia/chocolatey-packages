$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2c9b1ac6cc0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.14f1.exe'
$checksum64     = '9cc09fc1cffc5a9b33325fddba7a0ce71a8b30ddad33b627efc0d0d5f5d06e65'

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
