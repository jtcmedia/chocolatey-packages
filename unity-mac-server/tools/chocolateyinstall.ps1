$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = '202e746efd157950ff5072fd8e7279c74455a344684b25a5fc3c4dd80bf1b59b'

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
