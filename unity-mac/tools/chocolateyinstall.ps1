$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ea398eefe1c2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.2f1.exe'
$checksum64     = '4eaef9a91cb4134c7176455cd5493789d580b256dc4f53003c2d7cd8f4a4394d'

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
