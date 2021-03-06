defmodule BirdAppUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      BirdAppUiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BirdAppUi.PubSub},
      # Start the Endpoint (http/https)
      BirdAppUiWeb.Endpoint,
      # Start a worker by calling: BirdAppUi.Worker.start_link(arg)
      # {BirdAppUi.Worker, arg}
      BirdAppUi.DB
    ]

    :telemetry.attach("dht", [:dht, :read], &BirdAppHardware.Dht.handle_event/4, nil)

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BirdAppUi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BirdAppUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
