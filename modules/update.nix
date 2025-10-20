{ config, pkgs, ... }:

{
  # Keep Git available on the system, but remove the automatic update service.
  environment.systemPackages = with pkgs; [ git ];

  # NOTE: The automatic update service and the script installation were removed
  # to disable fetching the configuration and rebuilding automatically at boot.
  # If you want to re-enable this behavior later, you can restore the
  # `systemd.services.fetch-config` block and the `environment.etc` entry.
}