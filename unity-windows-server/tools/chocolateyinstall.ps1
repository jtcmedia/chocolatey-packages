$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/439913089442/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.0b6.exe'
$checksum64     = 'e09cbfad7893ce1c37e1fd63912aed760e23becd814faf5cbab8eda81c41cb46'

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
