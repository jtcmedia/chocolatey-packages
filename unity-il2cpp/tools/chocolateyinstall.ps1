$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/393bae82dbb8/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.3.3f1.exe'
$checksum64     = 'dab82d6ef19d1c10c37b9116446cfdaf70cb85220434cedf938972aebf60be6b'

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
