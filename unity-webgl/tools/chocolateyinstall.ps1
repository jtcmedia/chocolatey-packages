$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4dae1bb8668d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.49f1.exe'
$checksum64     = '4b74b49845ab613602437499f8b8ae8f12dc77d87ca5e868509d04dbfcace2ff'

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
