(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$jjj (func (param i64 i64) (result i64)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s\00")
 (table $0 5 funcref)
 (elem (i32.const 0) $null $function-types/makeAdder<i32>~anonymous|0 $function-types/makeAdder<i64>~anonymous|0 $function-types/makeAdder<f64>~anonymous|0 $function-types/addI32)
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $~lib/closure (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $function-types/makeAdder<i32>~anonymous|0 (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $function-types/makeAdder<i32> (; 3 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
  call $~lib/rt/stub/__retain
 )
 (func $function-types/makeAdder<i64>~anonymous|0 (; 4 ;) (type $FUNCSIG$jjj) (param $0 i64) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $function-types/makeAdder<i64> (; 5 ;) (type $FUNCSIG$i) (result i32)
  i32.const 2
  call $~lib/rt/stub/__retain
 )
 (func $function-types/makeAdder<f64>~anonymous|0 (; 6 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $function-types/makeAdder<f64> (; 7 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/rt/stub/__release (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $function-types/doAddWithFn<i32> (; 9 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  local.tee $3
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $3
   global.set $~lib/closure
   local.get $3
   i32.load
   local.set $3
  end
  i32.const 2
  global.set $~lib/argc
  local.get $0
  local.get $1
  local.get $3
  call_indirect (type $FUNCSIG$iii)
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $function-types/doAdd<i32> (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  call $function-types/makeAdder<i32>
  local.tee $2
  local.tee $3
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $3
   global.set $~lib/closure
   local.get $3
   i32.load
   local.set $3
  end
  i32.const 2
  global.set $~lib/argc
  local.get $0
  local.get $1
  local.get $3
  call_indirect (type $FUNCSIG$iii)
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $function-types/addI32 (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-types/makeAndAdd<i32> (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  local.tee $3
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $3
   global.set $~lib/closure
   local.get $3
   i32.load
   local.set $3
  end
  i32.const 2
  global.set $~lib/argc
  local.get $0
  local.get $1
  local.get $3
  call_indirect (type $FUNCSIG$iii)
  local.set $3
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $function-types/makeAndAdd<i32>|trampoline (; 13 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   call $function-types/makeAdder<i32>
   local.tee $3
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $function-types/makeAndAdd<i32>
  local.set $4
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $start:function-types (; 14 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $function-types/makeAdder<i32>
  global.set $function-types/i32Adder
  global.get $function-types/i32Adder
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $0
   global.set $~lib/closure
   local.get $0
   i32.load
   local.set $0
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  local.get $0
  call_indirect (type $FUNCSIG$iii)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $function-types/makeAdder<i64>
  global.set $function-types/i64Adder
  global.get $function-types/i64Adder
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $0
   global.set $~lib/closure
   local.get $0
   i32.load
   local.set $0
  end
  i32.const 2
  global.set $~lib/argc
  i64.const 10
  i64.const 20
  local.get $0
  call_indirect (type $FUNCSIG$jjj)
  i64.const 30
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $function-types/makeAdder<f64>
  local.tee $0
  local.tee $1
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $1
   global.set $~lib/closure
   local.get $1
   i32.load
   local.set $1
  end
  i32.const 2
  global.set $~lib/argc
  f64.const 1.5
  f64.const 2.5
  local.get $1
  call_indirect (type $FUNCSIG$ddd)
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  global.get $function-types/i32Adder
  call $function-types/doAddWithFn<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  call $function-types/doAdd<i32>
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 5
  i32.const 4
  call $function-types/doAddWithFn<i32>
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  i32.const 0
  call $function-types/makeAndAdd<i32>|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $function-types/makeAdder<i32>
  local.tee $1
  call $function-types/makeAndAdd<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $start (; 15 ;) (type $FUNCSIG$v)
  call $start:function-types
 )
 (func $null (; 16 ;) (type $FUNCSIG$v)
  unreachable
 )
)
