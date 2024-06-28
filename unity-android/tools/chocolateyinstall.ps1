$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/011206c7a712/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.35f1.exe'
$checksum64     = '89598c21c79f26b3bbced6349705b43256f7b86e42c54ebf9efa250b2f22bc9b'

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
