$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e49a51cf6290/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.6f1.exe'
$checksum64     = 'cded9dcfd84ef885300bf3722e64c27173174e19618e824bcb52b83ecb21215d'

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
