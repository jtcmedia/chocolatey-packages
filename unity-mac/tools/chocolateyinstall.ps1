$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.9f1.exe'
$checksum64     = 'b824c1208c8fa81b608846c75f9b7857626d9b1e211b31c9b0eaa2b36031f568'

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
