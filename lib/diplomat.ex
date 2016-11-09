defmodule Diplomat do
  @moduledoc """
  `Diplomat` is a library for interacting with Google's Cloud Datastore APIs.

  It provides simple interfaces for creating, updating, and deleting Entities,
  and also has support for querying via Datastore's GQL language (which is
  similar, but not exactly like, SQL).
  """
  use Application

  defmodule Proto do
    use Protobuf, from: Path.expand("datastore_v1beta3.proto", __DIR__), doc: false
  end

  @spec start() :: :ok
  def start() do
    Diplomat.Client.start_pool()
    :ok
  end
end
