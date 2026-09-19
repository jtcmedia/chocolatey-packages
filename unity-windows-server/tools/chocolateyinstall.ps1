$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/770e33f6875c/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.2f1.exe'
$checksum64     = '29c3f04a8e38cc4efa42e551d9c1e292b8c9e3a948d6fdd6f6fa1e052de7cc3f'

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
