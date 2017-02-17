defmodule Chat.UserSocket do
  use Phoenix.Socket

  channel "rooms:*", Chat.RoomChannel

  transport :websocket, Phoenix.Transports.WebSocket,
    check_origin: ["//datafruitstest.s3-website-us-east-1.amazonaws.com/", "//localhost:4200", "//localhost:3000", "//datafruits.fm", "//datafruits-fastboot.herokuapp.com/"]
  transport :longpoll, Phoenix.Transports.LongPoll,
    check_origin: ["//datafruitstest.s3-website-us-east-1.amazonaws.com/", "//localhost:4200", "//localhost:3000", "//datafruits.fm", "//datafruits-fastboot.herokuapp.com/"]

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
