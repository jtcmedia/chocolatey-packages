$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a96561936c0/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.15f1.exe'
$checksum64     = 'f2aa393f3cf28c61be67bc83534a020f6754a4b27a219ace20881caa56ff5609'

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
