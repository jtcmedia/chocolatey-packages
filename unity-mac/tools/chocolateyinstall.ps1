$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/db7aa045cc2c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.1.14f1.exe'
$checksum64     = 'ebcd62bf1b44b7fad39f9c85a43a4a9ec51bd9716e49eda6171dc73eaebc49b4'

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
