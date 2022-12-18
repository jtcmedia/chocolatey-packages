$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '0576247d6761d31faebbb996125307e3610ea48820cb11ead542a2991fea597f'

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
