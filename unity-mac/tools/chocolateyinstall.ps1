$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/213b516bf396/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.23f1.exe'
$checksum64     = '9f1f437bd83e0d1bac1f840258f0448eee3e5c3d8207505a5d759313cb821cae'

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
