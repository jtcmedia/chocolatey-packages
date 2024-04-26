$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ec6cd8118806/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.26f1.exe'
$checksum64     = 'eca2f6e948d263d7ba85fd1bacbcb9f6c19179340e9059cfcb1ff6e5582cedb9'

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
