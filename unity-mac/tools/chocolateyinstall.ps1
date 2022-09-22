$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2d349551e475/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.17f1.exe'
$checksum64     = 'f35fef968bee5f2d656693be9672fcf8495f6bc9ff64439921bac1a57131fe1f'

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
