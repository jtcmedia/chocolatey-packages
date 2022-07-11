$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = 'f29afe82135110b9ba5f65f77e854ea03bf213fcb68641f3ea5f920f1589c18f'

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
