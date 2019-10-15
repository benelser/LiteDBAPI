using namespace LiteDBAPI
using namespace LiteDB

Add-Type -Path "C:\Users\benja\Documents\PowerShell\LiteDBAPI\LIteDBAPI.dll"

# Instantiate Controller 
$controller = [LiteDBAPI.Controller]::new("password", "C:\Users\benja\Documents\PowerShell\LiteDBAPI\example.db")
$bob = [Person]::new()
$bob.FirstName = "Bob"
$bob.LastName = "Barker"
$adam = [Person]::new()
$adam.FirstName = "Adam"
$adam.LastName = "Sandler"
$controller.Col.Insert($bob)
$controller.Col.Insert($adam)
$controller.Col.FindAll()
$adams = $controller.Col.FindOne([Query]::EQ("FirstName", "Adam"))
$barkers = $controller.Col.Find([Query]::Contains("LastName", "Bar"))
$adams
$barkers

# Known bug reading DB with LiteDB Studio. If need to look at DB make sure you copy DB file and read copied version in studio
# Ensure you call the Dispose after each operation
$controller.DB.Dispose()