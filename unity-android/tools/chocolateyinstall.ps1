$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/589824c1fc31/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.14f1.exe'
$checksum64     = '2fd533c8658dedeca322e32d16aaff6ad9115363b79d56af06de54308f2be6c8'

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
