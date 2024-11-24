

def nvimconfig [] {
    let os_name = uname | get kernel-name | str downcase
    match $os_name {
        "windows_nt" => {
            cd ~/AppData/Local/nvim/
            nvim
        }
        "linux" => {
            cd ~/.config/nvim/
            nvim
        }
        _ => {}
    }
}

def nuconfig [] {
    let os_name = uname | get kernel-name | str downcase
    match $os_name {
        "windows_nt" => {
            cd ~/AppData/Roaming/nushell/
            nvim
        }
        "linux" => {
            cd ~/.config/nushell/
            nvim
        }
        _ => {}
    }
}
