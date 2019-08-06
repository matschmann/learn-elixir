defmodule CollectionsTest do
  use ExUnit.Case


  test "combine two lists" do
    list1 = [1, 2, 3]
    list2 = [8, 8, 8]

    assert list1 ++ list2 == [1, 2, 3, 8, 8, 8]
  end

  test "substract two lists" do
    list1 = [1, "2", 3]
    list2 = [1, 3]

    assert list1 -- list2 == ["2"]
  end

  test "head and tail of list" do
    list = [1, 2, 3, 4]
    assert  hd(list) == 1
    assert  tl(list) == [2, 3, 4]
  end

  test "keyword list is ordered and duplicate keys are allowed" do
    list1 = [foo: "bar", hello: "world"]
    list2 = [wurst: "käse", hello: "world"]
    assert list1 ++ list2 == [foo: "bar", hello: "world", wurst: "käse", hello: "world"]
  end

  test "get element from map by key" do
    map = %{:foo1 => "bar1", "hello1" => :world1}

    assert map[:foo1] == "bar1"
    assert map[:nonexisting] == nil
  end

  test "in a map a key is a variable" do
    x="one"
    y="two"
    map = %{x => "foo", y => "bar"}

    assert map[x] == "foo"
  end

  test "it is easy to access atom keys" do
    map = %{foo: "bar"}
    assert map.foo == "bar"
  end

  test "duplicate keys are possible, but the first value is returned on access" do
    map = %{foo: "bar", foo: "bar2"}
    assert map.foo == "bar2"
  end

  test "replace an element in a map" do
    map = %{foo: "xx", bar: "yy"}
    map2 = %{map | foo: "zz"}

    assert map2.foo == "zz"
  end

end
