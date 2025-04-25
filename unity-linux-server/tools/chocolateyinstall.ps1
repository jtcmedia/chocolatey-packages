$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ea152932a88/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.1.0f1.exe'
$checksum64     = '373ebe32889a070ae3dd69f7098e28244c67827e0216bcb59f1d745ccfe2672f'

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
