default:
    just --list

serve address="localhost":
    hugo serve --bind {{ address }} --baseURL {{ address }}

# Discover the local ipv4 address, then serve from that.
serve-local-net: (serve `ip --json a | jq 'map(select(.ifname == "enp0s1"))[0].addr_info | map(select(.family == "inet"))[0].local'`)

# Unfortunately, it seems like `just` doesn't support variable substitution
# within backticks. See
# https://just.systems/man/en/command-evaluation-using-backticks.html. It seems
# like the shell function might support this. I haven't tried it. TODO: Try it!

deploy:
    # This is safe because if any command fails, `just` will quit.
    git switch main
    git merge --ff-only beta
    git switch beta
    git push --all
