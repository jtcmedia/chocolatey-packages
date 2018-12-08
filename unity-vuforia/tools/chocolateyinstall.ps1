$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/06990f28ba00/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.19f1.exe'
$checksum64     = 'c333268401e21960e32d19f811a1d79466d8cf95ac451679d644cf70341bf557'

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
