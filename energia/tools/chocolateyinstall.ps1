$ErrorActionPreference = 'Stop';

$packageName= 'energia'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://energia.nu/downloads/downloadv4.php?file=energia-1.8.7E20-windows.zip'
$checksum32 = '3dd3459f4a584cc26947a6b9dd62a3d443707f708b05499a8420deecee5b57f6'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = $checksum32
  checksumType  = 'sha256'
  validExitCodes= @(0)
}

Install-ChocolateyZipPackage @packageArgs

$files = Get-ChildItem $toolsDir -Include *.exe -Recurse

foreach ($file in $files) {
  if (!($file.Name.Equals("energia.exe"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
  else {
    New-Item "$file.gui" -type file -Force | Out-Null
  }
}
