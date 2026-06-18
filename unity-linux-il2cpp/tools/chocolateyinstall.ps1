$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240d06e2411b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.0a7.exe'
$checksum64     = '8a95ef0463be09fcc548503a3829f29cf040b087f5985d0712e74e53da53b582'

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
