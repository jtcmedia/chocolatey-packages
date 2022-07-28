$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = '747220ede17fd038c6edd2ad9629a57f41730b9078fbca8d20972e1fa11d730c'

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
