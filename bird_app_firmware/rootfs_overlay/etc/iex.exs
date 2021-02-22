# Add Toolshed helpers to the IEx session
use Toolshed

if RingLogger in Application.get_env(:logger, :backends, []) do
  IO.puts([
    IO.ANSI.color(5),
    """
    Elixir Nerves Project

                    ;kX'
                  ,0XXXl
                 xNXNNXX.
               'KNNXXXXX0.
              ;XNNNNNNNNN0.
             ;XNNNNNNNNNNNX:
            .XNNNXXXXXXXXXXXO.
            kNNNXNNNNXXNXXNNXNo
           .NNNXNNNNNXXNNXNNXXXO
           cXXXNNNNNNXXNNNNNNNNNd
           lNNNNNNNNNXXNXXXNNNNNK
           'NNXNXNXXXXXXXXXNNNNNk
            oNXNXXXXXNXXXNNNNXXX.
             :KXXXXXXNXXXNNNNXk.
               ;xXNXXXXNXXX0o.
                  .',::;,.

    """,
    IO.ANSI.reset(),
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
