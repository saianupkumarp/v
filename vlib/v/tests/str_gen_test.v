fn test_array_of_floats() {
	// f64 array
	aa := [1.2, 3.4, 5.67]
	assert aa.str() == '[1.2, 3.4, 5.67]'
	assert '$aa' == '[1.2, 3.4, 5.67]'
	// f32 array
	bb := [f32(1.2), 3.4, 5.67]
	assert bb.str() == '[1.2, 3.4, 5.67]'
	assert '$bb' == '[1.2, 3.4, 5.67]'
}

fn test_array_of_bools() {
	aa := [true, false, true]
	assert aa.str() == '[true, false, true]'
	assert '$aa' == '[true, false, true]'
}

fn test_array_of_ints() {
	// int
	a1 := [11, 22, 33]
	assert a1.str() == '[11, 22, 33]'
	assert '$a1' == '[11, 22, 33]'
	// u32
	a2 := [u32(11), 22, 33]
	assert a2.str() == '[11, 22, 33]'
	assert '$a2' == '[11, 22, 33]'
	// i16
	b1 := [i16(11), 22, 33]
	assert b1.str() == '[11, 22, 33]'
	assert '$b1' == '[11, 22, 33]'
	// u16
	b2 := [u16(11), 22, 33]
	assert b2.str() == '[11, 22, 33]'
	assert '$b2' == '[11, 22, 33]'
	// i64
	c1 := [i64(11), 22, 33]
	assert c1.str() == '[11, 22, 33]'
	assert '$c1' == '[11, 22, 33]'
	// u64
	c2 := [u64(11), 22, 33]
	assert c2.str() == '[11, 22, 33]'
	assert '$c2' == '[11, 22, 33]'
}

fn test_array_of_bytes() {
	aa := [`a`, `b`, `c`]
	assert aa.str() == '[a, b, c]'
	assert '$aa' == '[a, b, c]'
}

fn test_array_of_strings() {
	aa := ['aa', 'bb', 'cc']
	assert aa.str() == "['aa', 'bb', 'cc']"
	assert '$aa' == "['aa', 'bb', 'cc']"
}

fn test_map_of_ints() {
	aa := {'a': 1, 'b': 2, 'c': 3}
	assert aa.str() == "{'a': 1, 'b': 2, 'c': 3}"
	assert '$aa' == "{'a': 1, 'b': 2, 'c': 3}"
}

fn test_map_of_strings() {
	aa := {'a': '1', 'b': '2', 'c': '3'}
	assert aa.str() == "{'a': '1', 'b': '2', 'c': '3'}"
	assert '$aa' == "{'a': '1', 'b': '2', 'c': '3'}"
}

fn test_map_of_floats() {
	aa := {'a': 1.1, 'b': 2.2, 'c': 3.3}
	assert aa.str() == "{'a': 1.1, 'b': 2.2, 'c': 3.3}"
	assert '$aa' == "{'a': 1.1, 'b': 2.2, 'c': 3.3}"
}

fn test_map_of_bytes() {
	aa := {'a': `a`, 'b': `b`, 'c': `c`}
	assert aa.str() == "{'a': a, 'b': b, 'c': c}"
	assert '$aa' == "{'a': a, 'b': b, 'c': c}"
}

fn test_map_of_bools() {
	aa := {'a': true, 'b': false, 'c': true}
	assert aa.str() == "{'a': true, 'b': false, 'c': true}"
	assert '$aa' == "{'a': true, 'b': false, 'c': true}"
}

fn test_fixed_array_of_floats() {
	// f64 array
	aa := [1.2, 3.4, 5.67]!!
	assert aa.str() == '[1.2, 3.4, 5.67]'
	assert '$aa' == '[1.2, 3.4, 5.67]'
	// f32 array
	bb := [f32(1.2), 3.4, 5.67]!!
	assert bb.str() == '[1.2, 3.4, 5.67]'
	assert '$bb' == '[1.2, 3.4, 5.67]'
}

fn test_fixed_array_of_bools() {
	aa := [true, false, true]!!
	assert aa.str() == '[true, false, true]'
	assert '$aa' == '[true, false, true]'
}

fn test_fixed_array_of_ints() {
	// int
	a1 := [11, 22, 33]!!
	assert a1.str() == '[11, 22, 33]'
	assert '$a1' == '[11, 22, 33]'
	// u32
	a2 := [u32(11), 22, 33]!!
	assert a2.str() == '[11, 22, 33]'
	assert '$a2' == '[11, 22, 33]'
	// i16
	b1 := [i16(11), 22, 33]!!
	assert b1.str() == '[11, 22, 33]'
	assert '$b1' == '[11, 22, 33]'
	// u16
	b2 := [u16(11), 22, 33]!!
	assert b2.str() == '[11, 22, 33]'
	assert '$b2' == '[11, 22, 33]'
	// i64
	c1 := [i64(11), 22, 33]!!
	assert c1.str() == '[11, 22, 33]'
	assert '$c1' == '[11, 22, 33]'
	// u64
	c2 := [u64(11), 22, 33]!!
	assert c2.str() == '[11, 22, 33]'
	assert '$c2' == '[11, 22, 33]'
}

fn test_fixed_array_of_bytes() {
	aa := [`a`, `b`, `c`]!!
	assert aa.str() == '[a, b, c]'
	assert '$aa' == '[a, b, c]'
}

fn test_fixed_array_of_strings() {
	aa := ['aa', 'bb', 'cc']!!
	assert aa.str() == "['aa', 'bb', 'cc']"
	assert '$aa' == "['aa', 'bb', 'cc']"
}

struct Wrapper {
	foo &string
}
fn test_struct_with_string_pointer() {
	s := 'test'
	w := Wrapper{&s}
	assert '$w' == 'Wrapper{\n    foo: &\'test\'\n}'
	assert w.str() == 'Wrapper{\n    foo: &\'test\'\n}'
}

struct Wrapper2 {
	foo &int
}
fn test_struct_with_int_pointer() {
	i := 5
	w := Wrapper2{&i}
	assert '$w' == 'Wrapper2{\n    foo: &5\n}'
	assert w.str() == 'Wrapper2{\n    foo: &5\n}'
}

struct Wrapper3 {
	foo &bool
}
fn test_struct_with_bool_pointer() {
	b := true
	w := Wrapper3{&b}
	assert '$w' == 'Wrapper3{\n    foo: &true\n}'
	assert w.str() == 'Wrapper3{\n    foo: &true\n}'
}

struct Foo {}
struct Wrapper4 {
	foo &Foo
}
fn test_struct_with_struct_pointer() {
	b := Foo{}
	w := Wrapper4{&b}
	assert '$w' == 'Wrapper4{\n    foo: &Foo{}\n}'
	assert w.str() == 'Wrapper4{\n    foo: &Foo{}\n}'
}

fn test_struct_with_nil() {
	w := Wrapper4{0}
	assert '$w' == 'Wrapper4{\n    foo: &nil\n}'
	assert w.str() == 'Wrapper4{\n    foo: &nil\n}'
}

struct Wrapper5 {
	foo &f32
}
fn test_struct_with_f32_pointer() {
	i := f32(5.1)
	w := Wrapper5{&i}
	assert '$w' == 'Wrapper5{\n    foo: &5.1\n}'
	assert w.str() == 'Wrapper5{\n    foo: &5.1\n}'
}


struct TestStruct {
	x int
}
struct ArrayWithStruct {
	foo []TestStruct
}
fn test_array_with_struct() {
	a := ArrayWithStruct{[TestStruct{}]}
	assert a.str() == 'ArrayWithStruct{\n    foo: [TestStruct{\n        x: 0\n    }]\n}'
	assert '$a' == 'ArrayWithStruct{\n    foo: [TestStruct{\n        x: 0\n    }]\n}'
}

struct MapWithStruct {
	foo map[string]TestStruct
}
fn test_map_with_struct() {
	a := MapWithStruct{{'test': TestStruct{}}}
	assert a.str() == 'MapWithStruct{\n    foo: {\'test\': TestStruct{\n        x: 0\n    }}\n}'
	assert '$a' == 'MapWithStruct{\n    foo: {\'test\': TestStruct{\n        x: 0\n    }}\n}'
}

struct ForGeneric {}
fn generic_fn_interpolation<T>(p T) string {
	return '$p'
}

fn generic_fn_str<T>(p T) string {
	return p.str()
}

fn test_generic_auto_str() {
	s := ForGeneric{}
	assert generic_fn_interpolation(s) == 'ForGeneric{}'
	assert generic_fn_str(s) == 'ForGeneric{}'
}

type Alias1 = int
fn test_alias_in_array() {
	t := [Alias1(1)]
	assert t.str() == '[1]'
	assert '$t' == '[1]'
}

type Alias2 = int
fn test_alias_in_fixed_array() {
	t := [Alias1(1)]!!
	assert t.str() == '[1]'
	assert '$t' == '[1]'
}

fn test_alias_int() {
	a := Alias1(1)
	assert a.str() == '1'
	assert '$a' == '1'
}

type Alias3 = string
fn test_alias_string() {
	s := 'test'
	a := Alias3(s)
	assert a.str() == s
	assert '$a' == s
}

type TestAlias = TestStruct
fn test_alias_struct() {
	ts := TestStruct{}
	t := TestAlias(ts)
	assert t.str() == 'TestAlias($ts)'
	assert '$t' == 'TestAlias(TestStruct{\n    x: 0\n})'
}
