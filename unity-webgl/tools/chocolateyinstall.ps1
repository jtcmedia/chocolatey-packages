$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55300504c302/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.1f1.exe'
$checksum64     = 'ee39335d951b2fadd4950b1987ba141a8c87096b0c71150015124ad52a835256'

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
