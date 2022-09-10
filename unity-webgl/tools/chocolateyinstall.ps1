$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7321c9670bc2/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.16f1.exe'
$checksum64     = 'c2b437040704957428193e57e55632b34e2978f46b6d785728ba9e2c6e740c1f'

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
