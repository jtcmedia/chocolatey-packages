$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ea398eefe1c2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.2f1.exe'
$checksum64     = '0b80877ce57cf42ce0de7232ac2f65fec4bfa506aac86956c061ab5d024d7505'

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
