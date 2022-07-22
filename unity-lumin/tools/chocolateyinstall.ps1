$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c66806a0c04/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.37f1.exe'
$checksum64     = 'd8f35f7f0a9f29b947fa8d3995795acedef38d4a2e81ceacb40322c14ce8e58f'

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
