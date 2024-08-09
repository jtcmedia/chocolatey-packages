$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = '78e1eee3d7f208816aef02ff993fdd11d8838218b782e937e91334503c6bc251'

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
