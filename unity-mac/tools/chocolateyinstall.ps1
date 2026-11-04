$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/237b6593792b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.8f1.exe'
$checksum64     = 'e399802a9c63d73887bb9f53bf57fc0479a2e9663952ab3033b72c0fdb883b3a'

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
