$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/887be4894c44/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.22f1.exe'
$checksum64     = '7635bffadd21c8d2789a93a90eb45a96933063e8ffb19b7ccaf67cbc6fc6ad89'

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
