$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e8e88683f834/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.15f1.exe'
$checksum64     = 'eff09a1ac158becfd280e9f37ee1372aed263ba14b59a6c142b91cf38032c80b'

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
