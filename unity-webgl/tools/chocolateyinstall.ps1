$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b22767f04f04/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.7f1.exe'
$checksum64     = '20c9054c91256975d7f91bba2c615e8cb00bf61fa67095af272777c6aa7b6e47'

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
