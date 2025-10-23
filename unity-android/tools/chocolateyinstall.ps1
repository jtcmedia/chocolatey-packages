$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.9f1.exe'
$checksum64     = '7899090a50c393e58550696d160c971529178e111b58388f58040ec128c4a6f9'

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
