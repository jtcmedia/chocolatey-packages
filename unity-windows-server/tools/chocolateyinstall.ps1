$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2d349551e475/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.17f1.exe'
$checksum64     = 'cb96796569c2d9c5429eecb003fa43c52e21fc74e4e62048c5d9540a6cf6353c'

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
