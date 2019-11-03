defmodule Chat.UserSocket do
  use Phoenix.Socket

  channel "rooms:*", Chat.RoomChannel
  channel "metadata", Chat.MetadataChannel
  channel "vj", Chat.VjChannel
  channel "notifications", Chat.NotificationChannel

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
