{
    pkgs,
    perSystem,
    ...
}:
perSystem.devshell.mkShell {
    name = "nvf";
    motd = ''
        {141}🧑‍💻 nvf{reset} devshell
        $(type -p menu &>/dev/null && menu)
    '';

    commands = [];
    packages = with pkgs; [];

    env = [];
}
