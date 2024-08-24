$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ae37dbaefed8/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.16f1.exe'
$checksum64     = '4a7eae0cef6cdfc62fcfe3023c511bf2ce2252c2db6cd95f24bb1adccbca01ff'

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
