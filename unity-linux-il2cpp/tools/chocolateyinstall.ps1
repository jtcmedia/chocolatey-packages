$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e7adf66625be/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.66f1.exe'
$checksum64     = '31b068a01568265052eee0eb9abd5b735c4f2a96ccfa9fede31b0fa428948280'

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
