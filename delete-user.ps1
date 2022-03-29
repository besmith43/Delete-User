param (
[string]$user
)

if (!$user)
{
	$user = read-host -prompt "What is the name of the local user account that you wish to delete?"
}

$temp = get-localuser $user

if ($temp)
{
	remove-localuser $temp
}
