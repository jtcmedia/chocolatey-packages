$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.10f1.exe'
$checksum64     = '31fa402afc60fa0c880081e99ca86e8b0b042370a0a5fdb6f1cb4d52a15386cc'

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
