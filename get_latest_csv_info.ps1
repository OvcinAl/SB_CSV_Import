$user_api_csv_get  = "https://backend.staffbase.com/api/users/import/csv/latest
"

$auth_token    = "xxx"


$Headers_csv_get       = @{ 
	'Authorization' = "Basic $auth_token"
}

$contentType = 'application/json' 

$Body_csv_get = @{
    dry = "true"
  }

Write-Host ("get the csv ")
#Write-Host ($Body_csv_get |ConvertTo-Json)
try{
	$response_csv_get = Invoke-WebRequest -Uri ("$user_api_csv_get") -Contenttype $contentType -Headers $Headers_csv_get -Method 'GET' -Body $Body_csv_get

    Write-Host($response_csv_get.COntent)
  } catch {
	Write-Host "An error occurred:"
	Write-Host $_
  }