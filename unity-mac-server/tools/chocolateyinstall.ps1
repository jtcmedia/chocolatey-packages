$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2d349551e475/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.17f1.exe'
$checksum64     = '86f197d404fecee63d4277a77371a587a056659db9235f2a479b1a398bef86ce'

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
