defmodule EctoContextTest do
  use ExUnit.Case
  doctest EctoContext

  defmodule Posts do
    use EctoContext, module: EctoContext.Test.Posts.Post
  end

  defmodule Users do
    use EctoContext, module: EctoContext.Test.Users.User
  end

  test "generation of functions" do
    assert EctoContextTest.Posts.__info__(:functions) == [
             change: 2,
             change: 3,
             create: 0,
             create: 1,
             create: 2,
             create_for_user: 1,
             create_for_user: 2,
             create_for_user: 3,
             delete: 1,
             get: 1,
             get: 2,
             get!: 1,
             get!: 2,
             list: 0,
             list: 1,
             list_for_user: 1,
             list_for_user: 2,
             schema: 0,
             schema: 1,
             update: 2,
             update: 3
           ]
  end
end
