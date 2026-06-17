$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ebeb53e4c07/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.3.18f1.exe'
$checksum64     = '6bb28e8918025fc99b023b39c183c9be77e49616c68b4bb5b0f263be61d3faaa'

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
