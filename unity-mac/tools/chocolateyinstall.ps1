$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f336aca0cab5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.28f1.exe'
$checksum64     = '63703166fafda8971215bc33521e27db216ed52d67b9f77c3d3f323dedb42084'

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
