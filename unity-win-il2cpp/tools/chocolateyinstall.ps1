$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f1140cf2297/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = 'e627dc68c596a1546853210b91007381eddf74e5f4082ad7eb9619735883a212'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
