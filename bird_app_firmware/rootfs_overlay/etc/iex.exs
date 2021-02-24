# New Nerves Logo
IO.puts("""
\e[34m████▄▖    \e[36m▐███
\e[34m█▌  ▀▜█▙▄▖  \e[36m▐█
\e[34m█▌ \e[36m▐█▄▖\e[34m▝▀█▌ \e[36m▐█   \e[39mN  E  R  V  E  S
\e[34m█▌   \e[36m▝▀█▙▄▖ ▐█
\e[34m███▌    \e[36m▀▜████\e[0m
""")

# Add Toolshed helpers to the IEx session

use Toolshed

if RingLogger in Application.get_env(:logger, :backends, []) do
  IO.puts([
    """
    SDcard Label:  Rvapp (bird_app_firmware)
    Nerves Project: Rvapp (bird_app_firmware)
    Version: V1.12
    Description: Copy of Bird_app to use as base for rvapp
    Elixir version: erlang 23.1.1 - elixir 1.10.4-otp-23
    Github: https://github.com/layeddie/rvapp.git
    
    View log messages with `RingLogger.next` or `RingLogger.attach`. Toolshed
    helpers are available. Type `h Toolshed` for details.

    If connecting via ssh, type `exit` or `<enter>~.` to disconnect.
    """
  ])
end
