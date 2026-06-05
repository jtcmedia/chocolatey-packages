$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf0352b38e81/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.3.17f1.exe'
$checksum64     = '6bd39777a512aacee99525cdb47b4f9b395aca58ae039661486609ab48fb1e14'

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
