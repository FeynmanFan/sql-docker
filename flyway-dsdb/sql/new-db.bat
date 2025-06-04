docker run --name testdb2 
    -e ACCEPT_EULA=Y 
    -e MSSQL_SA_PASSWORD=G52ndT0ur 
    -v C:/SqlVolume/data:/var/opt/mssql/bak 
    -p 1434:1433 
    -d 
    mcr.microsoft.com/mssql/server:2022-latest