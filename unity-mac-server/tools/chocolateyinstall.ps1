$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/57daeefc879b/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.6f1.exe'
$checksum64     = 'bb6ccea1b5d332f964657aa4b1fc1b231674ac79dcdf593ef66a8afc4a35c761'

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
