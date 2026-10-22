$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b22767f04f04/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.7f1.exe'
$checksum64     = '4f4d3ab7a3c0c32f4672357e8517dd3ef269decb53873773500ad9ce55044131'

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
