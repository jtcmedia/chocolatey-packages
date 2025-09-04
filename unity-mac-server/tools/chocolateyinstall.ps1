$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b7b9860b7bbd/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.57f1.exe'
$checksum64     = '8271db35cd4b207164806e94f4c78d3d81b0675501dc6c7529dab1312c4af287'

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
