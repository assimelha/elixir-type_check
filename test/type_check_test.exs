defmodule TypeCheckTest.TypeGuardExample do
  use TypeCheck
  type sorted_pair :: {lower :: number(), higher :: number()} when lower <= higher
end

defmodule TypeCheckTest do
  use ExUnit.Case
  use ExUnitProperties

  import TypeCheckTest.TypeGuardExample

  doctest TypeCheck

  # property "the different confrorm variants have the same results" do
  #   check all value <- term(),
  #             !is_reference(value),
  #             type <- TypeCheck.Type.StreamData.arbitrary_type_gen() do
  #     # res1 = TypeCheck.conforms(value, type)
  #     # res2 = TypeCheck.conforms?(value, type)
  #     # res3 =
  #     #   try do
  #     #     TypeCheck.conforms!(value, type)
  #     #     {:ok, value}
  #     #   rescue
  #     #     e = TypeCheck.TypeError ->
  #     #       {:error, e}
  #     #   end

  #     res4 = TypeCheck.dynamic_conforms(value, type)
  #     res5 = TypeCheck.dynamic_conforms?(value, type)
  #     res6 =
  #       try do
  #         TypeCheck.dynamic_conforms!(value, type)
  #         value
  #       rescue
  #         e ->
  #           e
  #       end
  #     case res4 do
  #       {:ok, val} ->
  #         assert res5 == true
  #         assert res6 == val
  #       {:error, problem} ->
  #         assert res5 == false
  #         assert res6 == problem
  #     end
  #   end
  # end
end
