defmodule FilteringInListsTest do
  use ExUnit.Case


  describe "call/1" do
    test "returns the list impares numbers" do
      assert FilteringInLists.call(["teste", "teste2", "teste3"]) == 0
    end
  end

  describe "call/2" do
    test "returns the list impares numbers" do
      assert FilteringInLists.call(["1", "2", "3", "4", "5", "teste", "teste2", "teste3"]) == 3
    end
  end

  describe "call/3" do
    test "returns the list impares numbers" do
      assert FilteringInLists.call([]) == 0
    end
  end

  describe "call/4" do
    test "returns the list impares numbers" do
      assert FilteringInLists.call(["1", "2", "3", "4", "5"]) == 3
    end
  end

  describe "call/5" do
    test "" do
      assert FilteringInLists.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end
  end

end
