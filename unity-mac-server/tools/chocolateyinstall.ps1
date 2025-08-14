$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/67bef3276ff1/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.1.16f1.exe'
$checksum64     = 'a528f7ba05e7278fffb8acf25765c3f2fb3f2cdb5b9a1abfd79b7be524ac4347'

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
