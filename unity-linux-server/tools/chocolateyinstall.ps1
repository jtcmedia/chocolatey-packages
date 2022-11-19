$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eee1884e7226/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.14f1.exe'
$checksum64     = '8a4490b705c157296a07c4104ce2079ffe73abf73c28a9e192692ddb29021379'

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
