$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f45223012db/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.16f1.exe'
$checksum64     = '12c794e1505a9751a4882411f6c4d7acb1c2048298cd3c2ab001acdbcb9312aa'

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
