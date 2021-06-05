$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b15f561b2cef/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.10f1.exe'
$checksum64     = '64bf643bbd2e457ad7c1ed398fd890daa351382d3085dd787fecc8f54bd72df2'

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
