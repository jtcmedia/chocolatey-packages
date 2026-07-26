$startupPath = [Environment]::GetFolderPath([Environment+SpecialFolder]::Startup)
Remove-Item "$startupPath\tdarr-node.lnk" -ErrorAction SilentlyContinue -Force
