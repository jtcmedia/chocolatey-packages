$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/340ba89e4c23/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.37f1.exe'
$checksum64     = '1323bd25a0c22fe1dd35485b464b9a8162f79d9603e0ff2ffd102d76a20999e6'

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
