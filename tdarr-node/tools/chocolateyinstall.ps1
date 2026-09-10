$ErrorActionPreference = 'Stop'
$toolsPath  = Split-Path $MyInvocation.MyCommand.Definition
$url64 = 'https://storage.tdarr.io/versions/2.87.01/win32_x64/Tdarr_Node.zip'
$checksum64 = '757b6ad52dcaeb1b35dede4ae74eca37da677ce874d508c6e6deed1d4312d05b'


$packageArgs = @{
  PackageName     = $env:ChocolateyPackageName
  UnzipLocation   = "$(Get-ToolsLocation)\$env:ChocolateyPackageName"
  Url64bit        = $url64
  Checksum64      = $checksum64
  ChecksumType64  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$files = Get-ChildItem $packageArgs.UnzipLocation -Include *.exe -Recurse

foreach ($file in $files) {
  if (!($file.Name.Contains("Tdarr_Node"))) {
    #generate an ignore file
    New-Item "$file.ignore" -type file -Force | Out-Null
  }
}

# tdarr runs on startup
$startup = [Environment]::GetFolderPath([Environment+SpecialFolder]::Startup)
Install-ChocolateyShortcut -ShortcutFilePath "$startup\tdarr-node.lnk" -TargetPath "$($packageArgs.UnzipLocation)\Tdarr_Node_Tray.exe"

Remove-Item $toolsPath\*.zip -ea 0
