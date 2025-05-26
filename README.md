## bindfs-filter

[bindfs](https://github.com/mpartel/bindfs) with `--filter=path` flag to remove unwanted files/directories from the mirrored directory.

Example usage: `./bindfs --filter=foo --filter=x/y/z dir mnt` mounts a mirror view of `dir` at `mnt`, dropping `dir/foo` and `dir/x/y/z` (including any subdirectories etc) from the view.
