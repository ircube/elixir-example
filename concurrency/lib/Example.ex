defmodule Example do
  def add(a, b) do
    IO.puts(a + b)
  end

  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    listen()
  end

  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Example, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end

  def run_m do
    Process.flag(:trap_exit, true)
    spawn_link(Example, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end

  # {:ok, agent} = Agent.start_link(fn -> [1, 2, 3] end)
  # Agent.update(agent, fn (state) -> state ++ [4, 5] end)
  # Agent.get(agent, &(&1))

  # Naming agent:
  # Agent.start_link(fn -> [1, 2, 3] end, name: Numbers)
  # Agent.get(Numbers, &(&1))

  # TASKS
  def double(x) do
    :timer.sleep(2000)
    x * 2
  end
  # task = Task.async(Example, :double, [2000])
  # Task.await(task)

end
