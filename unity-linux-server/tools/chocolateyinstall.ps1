$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b30333d56e81/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.8f1.exe'
$checksum64     = '5319a4ec4f12580c219091fbac2df1e1ee9ceffca848a3abefdaadc2465bb680'

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
