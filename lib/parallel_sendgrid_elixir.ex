defmodule ParallelSendgridElixir do
  @moduledoc """
  Documentation for ParallelSendgridElixir.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ParallelSendgridElixir.hello
      :world

  """
  def hello do
    :world
  end

  def send do
    alias SendGrid.{Mailer, Email}
    email =
      Email.build()
      |> Email.put_from("from@example.com")
      |> Email.add_to("to@example.com")
      |> Email.put_subject("Heelo From Elixir")
      |> Email.put_text("sent from Elixir!")
    Mailer.send(email)
  end
end
