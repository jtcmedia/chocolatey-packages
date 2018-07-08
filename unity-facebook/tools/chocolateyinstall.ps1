$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4cb482063d12/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.7f1.exe'
$checksum64     = '26890ebe825397d16f29521d35fb77e8eb8fc35408dc5cd0278af0be020dfe1b'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
