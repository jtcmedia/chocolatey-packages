$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b6c551784ba3/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.22f1.exe'
$checksum64     = '9e5b0b8afc1923afaf2195527c6f2dac4562948113943f61e4723dc8c16d440f'

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
