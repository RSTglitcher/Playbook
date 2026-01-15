# Vault

1. Export the vault address
`export VAULT_ADDR=XXXXX`
2. Log into vault with your username and password
`vault login -method=ldap username=rso20`
3. Run the command to read the secret for the key
`vault read secret/location/path`