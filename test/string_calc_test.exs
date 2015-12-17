defmodule StringCalcTest do
  use ExUnit.Case
  doctest StringCalc

  test "returns 0 when passed empty string" do
    assert StringCalc.add("") == 0
  end

  test "returns 0 when passed 0" do
    assert StringCalc.add("0") ==0
  end

 test "returns single val when passed single val" do
   assert StringCalc.add("2") == 2
 end

 test "returns sum of numbers when passed comma separated numbers" do
   assert StringCalc.add("1,2") == 3
 end

 test "returns sum of numbers when separated by newline" do
   assert StringCalc.add("1\n2") == 3
 end

end
