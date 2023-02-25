# add the dependencies of `nu_plugin_hash` to the `Cargo.toml` file

export def setup [
    nushell_path: string  # the path to the root of the nushell source
] {
    print $nushell_path
    let crates_path = ($nushell_path | path join "crates")
    print $crates_path
    cargo add nu-plugin --path ($crates_path | path join "nu-plugin")
    cargo add nu-protocol --path ($crates_path | path join "nu-protocol") --features plugin
}