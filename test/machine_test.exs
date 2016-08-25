defmodule MachineTest do
  use ExUnit.Case, async: true

  test "gets machine by id or name" do
    {:ok, mega_punch} = Dexter.Machine.get(1)

    assert get_in(mega_punch, ["move", "name"]) == "mega-punch"
  end
end
