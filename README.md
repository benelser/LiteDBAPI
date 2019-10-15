# LiteDBAPI

This project illustates consuming the [LiteDB](https://www.litedb.org/) project from within PowerShell.

## How to build and edit [LiteDBAPI.cs](./LiteDBAPI.cs)
1. git clone https://github.com/benelser/LiteDBAPI.git
2. cd LiteDBAPI
3. edit [LiteDBAPI.cs](./LiteDBAPI.cs)
    - Define POCOs "Plain Old CLR Objects" your tool will be handling
    - Statically create collections tieing each POCO to a collection
4. run dotnet build
5. cd bin\Debug\netstandard2.0
6. Ensure LiteDB.dll and LiteDBAPI.dll both accompany your .ps1 in a single directory
    * You can use [CovertBinaryTo-Base64.ps1](https://github.com/benelser/PowerShell/blob/master/CovertBinaryTo-Base64.ps1) to embed the bits into your script if you choose


## Known issues
Reading DB with [LiteDB Studio](https://github.com/mbdavid/LiteDB.Studio) corrupts the db. If you need to look at DB make sure you copy DB file and read copied version in LiteDB studio.

### Build enivornment 
PSVersion                      6.2.3
PSEdition                      Core
GitCommitId                    6.2.3
OS                             Microsoft Windows 10.0.18362
Platform                       Win32NT
WSManStackVersion              3.0
dotnet version                 3.0.100-preview9-014004