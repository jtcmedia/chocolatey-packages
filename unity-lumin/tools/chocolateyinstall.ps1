$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/78d14dfa024b/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.4.39f1.exe'
$checksum64     = '996a43604307c8af805fd09b557b2e5d0574833ecdd6d3dc31a41f99fd6c1a46'

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
