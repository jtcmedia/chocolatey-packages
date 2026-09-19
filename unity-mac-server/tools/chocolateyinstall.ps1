$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/770e33f6875c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.2f1.exe'
$checksum64     = '0435c2ee9ab54678d57ecda59bc0d331d7c5cb84ced9dfad94055ac9a6753393'

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
