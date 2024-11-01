$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4859ab7b5a49/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.25f1.exe'
$checksum64     = '91d6c12832ce25e8eaa69deeb13a18af9557af0b811ac1764071b9f68e364928'

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
