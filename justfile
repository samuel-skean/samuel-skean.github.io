serve address="localhost":
    hugo serve --bind {{ address }} --baseURL {{ address }}

# This long jq command just extras my local-network ipv4 address.
serve-local-net: (serve `ip --json a | jq 'map(select(.ifname == "enp0s1")).[0].addr_info | map(select(.family == "inet")).[0].local'`)

deploy:
    # This is safe because if any command fails, just will quit.
    git switch main
    git merge --ff-only beta
    git switch beta
    git push --all
