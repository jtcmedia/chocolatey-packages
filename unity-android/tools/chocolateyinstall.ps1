$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/24e8595d6d43/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.3.7f1.exe'
$checksum64     = 'b57e70be11e30b157ad07881c90364745f1a4412ee166df6021185d89bf071ae'

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
