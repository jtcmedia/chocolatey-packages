$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53d4abb44f07/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0b7.exe'
$checksum64     = '2afd93a4fef976df2909c42a8a2609dbcabe1c3883e8a0588c55c4879b0dd83a'

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
