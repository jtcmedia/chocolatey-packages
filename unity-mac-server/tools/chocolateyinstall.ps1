$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7321c9670bc2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.16f1.exe'
$checksum64     = '4dfc25f5f5fb9e9f2b948c06944c9c579f962cc779a10d35b820e16a915b169f'

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
