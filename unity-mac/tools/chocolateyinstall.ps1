$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/43d04cd1df69/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.5f1.exe'
$checksum64     = 'e5d01ed95f7b67ab9ef5e253f99beca0888f6f296a2f35f21935b6e72a87f95b'

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
