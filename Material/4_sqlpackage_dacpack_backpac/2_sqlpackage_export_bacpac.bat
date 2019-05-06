::In "Export", you will get errors if database has any external references.
::"C:\Program Files (x86)\Microsoft SQL Server\120\DAC\bin\sqlpackage.exe"  /Action:Export /SourceServerName:"localhost\sqlexpress2014" /SourceUser:sa /SourcePassword:12345 /SourceDatabaseName:"MainDBDev" /TargetFile:"D:\DevOpsDB2\MainDBDev_Export.bacpac" 

"C:\Program Files (x86)\Microsoft SQL Server\120\DAC\bin\sqlpackage.exe"  /Action:Export /SourceServerName:"localhost\sqlexpress2014" /SourceUser:sa /SourcePassword:12345 /SourceDatabaseName:"SecurityDev" /TargetFile:"D:\DevOpsDB2\SecurityDev_Export.bacpac" 