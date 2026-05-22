$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/342347f1f18f/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.5.0b9.exe'
$checksum64     = '47229ddbfabd3e00cc0e9c05a589c397f5ba3237a89b619ac0c86d9e675fcd54'

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
