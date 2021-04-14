$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4bef613afd59/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.3f1.exe'
$checksum64     = '388a19ab24d18765279bbc8bea189750e92ab6b48808f621c86076d0618ebcf0'

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
