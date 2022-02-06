# dyndns-client

## Scope
This tool is currently only a shell script to update dyndns entries for one provider (noip).

## Usage
Set environment variable `DYNDNS_AUTH` to base64 authentication string.
Obtain via `echo username:password | base64`.
Call script with hostname(s) (comma-separated) as argument(s): `./update-dns.sh hostname`
