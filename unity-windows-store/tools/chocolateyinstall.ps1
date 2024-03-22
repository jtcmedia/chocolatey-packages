$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/887be4894c44/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.22f1.exe'
$checksum64     = '87eaee8943cc495345827c25e98ffa63da12db6ada1bb0d7fd1f6797919f4f9f'

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
