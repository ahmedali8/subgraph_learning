(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 7)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "log" "log.log" (func $~lib/matchstick-as/assembly/log/log.log (type 2)))
  (import "index" "mockFunction" (func $~lib/matchstick-as/assembly/index/mockFunction (type 8)))
  (import "ethereum" "ethereum.call" (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call (type 0)))
  (import "assert" "_assert.equals" (func $~lib/matchstick-as/assembly/assert/_assert.equals (type 1)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 3)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "numbers" "bigDecimal.toString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString (type 0)))
  (import "conversion" "typeConversion.bigIntToString" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString (type 0)))
  (import "index" "store.set" (func $~lib/@graphprotocol/graph-ts/index/store.set (type 3)))
  (import "conversion" "typeConversion.bigIntToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToHex (type 0)))
  (func $~lib/rt/stub/__alloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 33
      i32.const 29
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.tee 3
    i32.const 4
    i32.add
    local.tee 4
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee 5
    i32.add
    local.tee 0
    memory.size
    local.tee 2
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 1
    i32.gt_u
    if  ;; label = @1
      local.get 2
      local.get 0
      local.get 1
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee 1
      local.get 1
      local.get 2
      i32.lt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 1
        memory.grow
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          unreachable
        end
      end
    end
    local.get 0
    global.set $~lib/rt/stub/offset
    local.get 3
    local.get 5
    i32.store
    local.get 4)
  (func $~lib/rt/stub/__new (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 86
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    call $~lib/rt/stub/__alloc
    local.tee 3
    i32.const 4
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add)
  (func $~lib/memory/memory.fill (type 2) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 2
      i32.add
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 0
      local.get 0
      i32.const 4
      i32.and
      i32.const 24
      i32.add
      local.tee 1
      i32.add
      local.set 0
      local.get 2
      local.get 1
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 32
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          i64.const 0
          i64.store offset=24
          local.get 1
          i32.const 32
          i32.sub
          local.set 1
          local.get 0
          i32.const 32
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 5
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 7
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    i32.const 16
    i32.const 9
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func $~lib/typedarray/Uint8Array#__set (type 3) (param i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 2064
      i32.const 175
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    local.get 2
    i32.store8)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32 (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 12
        i32.const 12
        call $~lib/rt/stub/__new
        local.tee 1
        i32.eqz
        if  ;; label = @3
          i32.const 12
          i32.const 13
          call $~lib/rt/stub/__new
          local.set 1
        end
        local.get 1
      end
      i32.eqz
      if  ;; label = @2
        i32.const 12
        i32.const 2
        call $~lib/rt/stub/__new
        local.set 1
      end
      local.get 1
    end
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    i32.const 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 4
    i32.store offset=8
    local.get 1
    i32.const 0
    local.get 0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 0
    i32.const 8
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 0
    i32.const 16
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 0
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Uint8Array#__set
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32 (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/util/memory/memcpy (type 3) (param i32 i32 i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 1
      i32.const 3
      i32.and
      i32.const 0
      local.get 2
      select
      if  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 2
          i32.const 16
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.const 8
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 8
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 4
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 2
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load16_u
          i32.store16
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          local.get 0
          i32.const 2
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
      end
      return
    end
    local.get 2
    i32.const 32
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.load8_u
            i32.store8
            local.get 0
            local.tee 4
            i32.const 2
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 2
            i32.add
            local.set 1
            local.get 4
            local.get 3
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const 3
            i32.sub
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const 17
              i32.ge_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.load offset=1
                local.tee 3
                i32.const 8
                i32.shl
                local.get 5
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=5
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=9
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=8
                local.get 0
                local.get 1
                i32.load offset=13
                local.tee 5
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=12
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 2
                i32.const 16
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.load
          local.set 5
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.tee 4
          i32.const 2
          i32.add
          local.set 0
          local.get 1
          local.tee 3
          i32.const 2
          i32.add
          local.set 1
          local.get 4
          local.get 3
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const 2
          i32.sub
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 18
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.load offset=2
              local.tee 3
              i32.const 16
              i32.shl
              local.get 5
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=6
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=10
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=8
              local.get 0
              local.get 1
              i32.load offset=14
              local.tee 5
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=12
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 16
              i32.sub
              local.set 2
              br 1 (;@4;)
            end
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 19
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=3
            local.tee 3
            i32.const 24
            i32.shl
            local.get 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=7
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=11
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=8
            local.get 0
            local.get 1
            i32.load offset=15
            local.tee 5
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=12
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.sub
            local.set 2
            br 1 (;@3;)
          end
        end
      end
    end
    local.get 2
    i32.const 16
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 4
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 2
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func $~lib/memory/memory.copy (type 3) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      local.set 4
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.sub
      local.get 4
      i32.sub
      i32.const 0
      local.get 4
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        call $~lib/util/memory/memcpy
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.set 4
              local.get 0
              local.tee 2
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              local.tee 3
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              local.get 3
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i64.load
              i64.store
              local.get 4
              i32.const 8
              i32.sub
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 0
            local.tee 2
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.get 3
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
      else
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 4
              i32.const 8
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i64.load
              i64.store
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            local.get 0
            i32.add
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
      end
    end)
  (func $~lib/rt/__newArray (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 2
    i32.shl
    local.tee 4
    local.set 5
    local.get 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.set 3
    local.get 2
    if  ;; label = @1
      local.get 3
      local.get 2
      local.get 5
      call $~lib/memory/memory.copy
    end
    i32.const 16
    local.get 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1)
  (func $~lib/array/ensureCapacity (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    local.tee 7
    i32.const 2
    i32.shr_u
    i32.gt_u
    if  ;; label = @1
      local.get 1
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1728
        i32.const 1776
        i32.const 17
        i32.const 48
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i32.load
      local.tee 9
      local.set 2
      local.get 7
      i32.const 1
      i32.shl
      local.tee 3
      i32.const 1073741820
      local.get 3
      i32.const 1073741820
      i32.lt_u
      select
      local.tee 3
      local.get 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 1
      local.get 1
      local.get 3
      i32.lt_u
      select
      local.tee 3
      i32.const 1073741804
      i32.gt_u
      if  ;; label = @2
        i32.const 1056
        i32.const 1120
        i32.const 99
        i32.const 30
        call $~lib/builtins/abort
        unreachable
      end
      local.get 3
      i32.const 16
      i32.add
      local.set 4
      local.get 2
      i32.const 16
      i32.sub
      local.tee 1
      i32.const 15
      i32.and
      i32.const 1
      local.get 1
      select
      if  ;; label = @2
        i32.const 0
        i32.const 1120
        i32.const 45
        i32.const 3
        call $~lib/builtins/abort
        unreachable
      end
      global.get $~lib/rt/stub/offset
      local.get 1
      local.get 1
      i32.const 4
      i32.sub
      local.tee 8
      i32.load
      local.tee 6
      i32.add
      i32.eq
      local.set 5
      local.get 4
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      i32.const 4
      i32.sub
      local.set 2
      local.get 4
      local.get 6
      i32.gt_u
      if  ;; label = @2
        local.get 5
        if  ;; label = @3
          local.get 4
          i32.const 1073741820
          i32.gt_u
          if  ;; label = @4
            i32.const 1056
            i32.const 1120
            i32.const 52
            i32.const 33
            call $~lib/builtins/abort
            unreachable
          end
          local.get 1
          local.get 2
          i32.add
          local.tee 4
          memory.size
          local.tee 6
          i32.const 16
          i32.shl
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          local.tee 5
          i32.gt_u
          if  ;; label = @4
            local.get 6
            local.get 4
            local.get 5
            i32.sub
            i32.const 65535
            i32.add
            i32.const -65536
            i32.and
            i32.const 16
            i32.shr_u
            local.tee 5
            local.get 5
            local.get 6
            i32.lt_s
            select
            memory.grow
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              local.get 5
              memory.grow
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                unreachable
              end
            end
          end
          local.get 4
          global.set $~lib/rt/stub/offset
          local.get 8
          local.get 2
          i32.store
        else
          local.get 2
          local.get 6
          i32.const 1
          i32.shl
          local.tee 4
          local.get 2
          local.get 4
          i32.gt_u
          select
          call $~lib/rt/stub/__alloc
          local.tee 2
          local.get 1
          local.get 6
          call $~lib/memory/memory.copy
          local.get 2
          local.set 1
        end
      else
        local.get 5
        if  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          global.set $~lib/rt/stub/offset
          local.get 8
          local.get 2
          i32.store
        end
      end
      local.get 1
      i32.const 4
      i32.sub
      local.get 3
      i32.store offset=16
      local.get 7
      local.get 1
      i32.const 16
      i32.add
      local.tee 1
      i32.add
      local.get 3
      local.get 7
      i32.sub
      call $~lib/memory/memory.fill
      local.get 1
      local.get 9
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.store offset=4
      end
      local.get 0
      local.get 3
      i32.store offset=8
    end)
  (func $~lib/string/String#concat (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 4
    i32.add
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 3408
      return
    end
    local.get 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    call $~lib/memory/memory.copy
    local.get 2
    local.get 3
    i32.add
    local.get 1
    local.get 4
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/array/Array<~lib/string/String>#__get (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 1776
      i32.const 106
      i32.const 42
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 3632
      i32.const 1776
      i32.const 110
      i32.const 40
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/matchstick-as/assembly/log/format (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 3408
    local.set 5
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 4
    loop  ;; label = @1
      local.get 4
      local.get 6
      i32.gt_s
      if  ;; label = @2
        local.get 6
        local.get 4
        i32.const 1
        i32.sub
        i32.lt_s
        if (result i32)  ;; label = @3
          local.get 6
          local.get 0
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 0
            local.get 6
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
          end
          i32.const 123
          i32.eq
        else
          i32.const 0
        end
        if (result i32)  ;; label = @3
          local.get 6
          i32.const 1
          i32.add
          local.tee 3
          local.get 0
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 0
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
          end
          i32.const 125
          i32.eq
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.load offset=12
          i32.ge_s
          if (result i32)  ;; label = @4
            i32.const 3440
            local.get 0
            call $~lib/string/String#concat
            i32.const 3536
            i32.const 48
            i32.const 9
            call $~lib/builtins/abort
            unreachable
          else
            local.get 2
            local.tee 3
            i32.const 1
            i32.add
            local.set 2
            local.get 5
            local.get 1
            local.get 3
            call $~lib/array/Array<~lib/string/String>#__get
            call $~lib/string/String#concat
            local.set 5
            local.get 6
            i32.const 1
            i32.add
          end
          local.set 6
        else
          local.get 5
          local.get 6
          local.get 0
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const 3408
          else
            i32.const 2
            i32.const 1
            call $~lib/rt/stub/__new
            local.tee 5
            local.get 0
            local.get 6
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
            i32.store16
            local.get 5
          end
          call $~lib/string/String#concat
          local.set 5
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    local.get 5)
  (func $start:tests/gravity/gravity.test~anonymous|0 (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 152
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 2
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 6
    i32.store
    local.get 6
    i64.const 2656
    i64.store offset=8
    i32.const 2
    i32.const 18
    i32.const 2720
    call $~lib/rt/__newArray
    local.tee 4
    i32.load offset=12
    local.set 3
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 0
    i32.store
    local.get 7
    i32.const 0
    i32.store offset=4
    local.get 7
    i32.const 0
    i32.store offset=8
    local.get 7
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 268435455
    i32.gt_u
    if  ;; label = @1
      i32.const 1728
      i32.const 1776
      i32.const 64
      i32.const 60
      call $~lib/builtins/abort
      unreachable
    end
    local.get 3
    i32.const 8
    local.get 3
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee 5
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 5
    call $~lib/memory/memory.fill
    local.get 7
    local.get 1
    i32.store
    local.get 7
    local.get 1
    i32.store offset=4
    local.get 7
    local.get 5
    i32.store offset=8
    local.get 7
    local.get 3
    i32.store offset=12
    loop  ;; label = @1
      local.get 0
      local.get 4
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 4
        i32.load offset=12
        i32.ge_u
        if  ;; label = @3
          i32.const 2000
          i32.const 1776
          i32.const 106
          i32.const 42
          call $~lib/builtins/abort
          unreachable
        end
        local.get 4
        i32.load offset=4
        local.get 0
        i32.const 2
        i32.shl
        i32.add
        i32.load
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
        local.set 5
        local.get 0
        local.get 7
        i32.load offset=12
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            i32.const 2000
            i32.const 1776
            i32.const 122
            i32.const 22
            call $~lib/builtins/abort
            unreachable
          end
          local.get 7
          local.get 0
          i32.const 1
          i32.add
          local.tee 1
          call $~lib/array/ensureCapacity
          local.get 7
          local.get 1
          i32.store offset=12
        end
        local.get 7
        i32.load offset=4
        local.get 0
        i32.const 2
        i32.shl
        i32.add
        local.get 5
        i32.store
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    local.get 7
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 8
    i32.store
    local.get 7
    local.get 8
    i64.store offset=8
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 5
    i32.store
    local.get 0
    i64.const 1
    i64.store offset=8
    i32.const 2352
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.tee 1
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 2752
      i32.const 2848
      i32.const 197
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    local.get 8
    i64.store offset=8
    i32.const 2
    i32.const 19
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 5
    i32.load offset=4
    drop
    i32.const 152
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.set 1
    local.get 5
    i32.load offset=4
    local.get 1
    i32.store
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 2960
    i64.store offset=8
    local.get 5
    i32.load offset=4
    local.get 1
    i32.store offset=4
    local.get 5
    i64.extend_i32_u
    local.set 8
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 9
    i32.store
    local.get 5
    local.get 8
    i64.store offset=8
    i32.const 6
    i32.const 19
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    local.get 1
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    i32.load offset=4
    local.get 6
    i32.store offset=4
    local.get 1
    i32.load offset=4
    local.get 7
    i32.store offset=8
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=12
    local.get 1
    i32.load offset=4
    local.get 4
    i32.store offset=16
    local.get 1
    i32.load offset=4
    local.get 5
    i32.store offset=20
    i32.const 3008
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 0
    i32.const 20
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 0
    i32.store8
    local.get 7
    i32.const 0
    i32.store offset=4
    local.get 7
    i32.const 0
    i32.store offset=8
    local.get 7
    i32.const 0
    i32.store offset=12
    local.get 7
    i32.const 0
    i32.const 19
    i32.const 3344
    call $~lib/rt/__newArray
    i32.store offset=16
    local.get 7
    local.get 0
    i32.store offset=4
    local.get 7
    i32.const 3120
    i32.store offset=8
    local.get 7
    i32.const 3168
    i32.store offset=12
    local.get 1
    local.set 0
    local.get 7
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 2192
      i32.const 0
      i32.const 3
      i32.const 3376
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 7
      local.get 0
      i32.store offset=16
    end
    i32.const 1
    i32.const 19
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 6
    i32.store
    local.get 6
    i64.const 3760
    i64.store offset=8
    local.get 1
    i32.load offset=4
    local.get 6
    i32.store
    local.get 7
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 2192
      i32.const 0
      i32.const 3
      i32.const 3792
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/assembly/log/format
      call $~lib/matchstick-as/assembly/log/log.log
    else
      local.get 7
      i32.load offset=4
      local.get 7
      i32.load offset=8
      local.get 7
      i32.load offset=12
      local.get 7
      i32.load offset=16
      local.get 1
      i32.const 0
      call $~lib/matchstick-as/assembly/index/mockFunction
      local.get 7
      i32.const 1
      i32.store8
    end
    i32.const 3008
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 7
    i32.const 20
    i32.const 22
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 0
    i32.store
    local.get 6
    i32.const 0
    i32.store offset=4
    local.get 6
    i32.const 0
    i32.store offset=8
    local.get 6
    i32.const 0
    i32.store offset=12
    local.get 6
    i32.const 0
    i32.store offset=16
    local.get 6
    i32.const 3824
    i32.store
    local.get 6
    local.get 7
    i32.store offset=4
    local.get 6
    i32.const 3120
    i32.store offset=8
    local.get 6
    i32.const 3168
    i32.store offset=12
    local.get 6
    local.get 0
    i32.store offset=16
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 3872
      i32.const 3936
      i32.const 86
      i32.const 13
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    local.set 0
    i32.const 4
    i32.const 4016
    i32.const 1
    i32.const 3
    i32.const 4096
    call $~lib/rt/__newArray
    call $~lib/matchstick-as/assembly/log/format
    call $~lib/matchstick-as/assembly/log/log.log
    i32.const 16
    i32.const 17
    call $~lib/rt/stub/__new
    local.tee 7
    i32.const 6
    i32.store
    local.get 7
    i64.const 3760
    i64.store offset=8
    local.get 7
    local.get 0
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 4128
      i32.const 4192
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $~lib/string/String.__eq (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.const 0
    local.get 0
    select
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      local.get 0
      local.set 2
      local.get 1
      local.set 3
      local.get 2
      i32.const 7
      i32.and
      local.get 3
      i32.const 7
      i32.and
      i32.or
      i32.const 1
      local.get 4
      local.tee 0
      i32.const 4
      i32.ge_u
      select
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i64.load
          local.get 3
          i64.load
          i64.eq
          if  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 3
            i32.const 8
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.sub
            local.tee 0
            i32.const 4
            i32.ge_u
            br_if 1 (;@3;)
          end
        end
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 1
        i32.sub
        local.set 0
        local.get 1
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 1
          local.get 3
          i32.load16_u
          local.tee 4
          i32.ne
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.sub
            br 3 (;@1;)
          end
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    i32.eqz)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 3) (param i32 i32 i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 4
        local.get 3
        i32.load
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 3
          i32.load
          local.get 4
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load
          local.get 1
          call $~lib/string/String.__eq
          if  ;; label = @4
            local.get 3
            i32.load
            local.get 4
            call $~lib/array/Array<~lib/string/String>#__get
            br 3 (;@1;)
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 3
    if  ;; label = @1
      local.get 3
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 8
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 1
      i32.store
      local.get 3
      local.get 2
      i32.store offset=4
      local.get 3
      local.set 2
      local.get 0
      i32.load
      local.tee 0
      i32.load offset=12
      local.tee 3
      i32.const 1
      i32.add
      local.set 1
      local.get 0
      local.get 1
      call $~lib/array/ensureCapacity
      local.get 0
      i32.load offset=4
      local.get 3
      i32.const 2
      i32.shl
      i32.add
      local.get 2
      i32.store
      local.get 0
      local.get 1
      i32.store offset=12
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 6
    i32.ne
    if  ;; label = @1
      i32.const 4448
      i32.const 2848
      i32.const 88
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/Transaction#set:displayName (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 4352
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Transaction#set:imageUrl (type 2) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 4400
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get (type 0) (param i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 1
      local.get 0
      i32.load
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 1
        call $~lib/array/Array<~lib/string/String>#__get
        i32.load
        i32.const 4320
        call $~lib/string/String.__eq
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 1
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load offset=4
          return
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 0)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 4992
      i32.const 5056
      i32.const 70
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/util/number/itoa32 (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 5424
      return
    end
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_u
    local.tee 3
    select
    local.tee 1
    i32.const 100000
    i32.lt_u
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
      else
        local.get 1
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get 1
        i32.const 1000
        i32.ge_u
        i32.add
      end
    else
      local.get 1
      i32.const 10000000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
      else
        local.get 1
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get 1
        i32.const 100000000
        i32.ge_u
        i32.add
      end
    end
    local.get 3
    i32.add
    local.tee 0
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 4
    local.set 2
    loop  ;; label = @1
      local.get 1
      i32.const 10000
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 10000
        i32.rem_u
        local.set 5
        local.get 1
        i32.const 10000
        i32.div_u
        local.set 1
        local.get 2
        local.get 0
        i32.const 4
        i32.sub
        local.tee 0
        i32.const 1
        i32.shl
        i32.add
        local.get 5
        i32.const 100
        i32.div_u
        i32.const 2
        i32.shl
        i32.const 5436
        i32.add
        i64.load32_u
        local.get 5
        i32.const 100
        i32.rem_u
        i32.const 2
        i32.shl
        i32.const 5436
        i32.add
        i64.load32_u
        i64.const 32
        i64.shl
        i64.or
        i64.store
        br 1 (;@1;)
      end
    end
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.ge_u
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 2
          local.get 0
          i32.const 2
          i32.sub
          local.tee 0
          i32.const 1
          i32.shl
          i32.add
          local.get 1
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 5436
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const 100
          i32.div_u
        end
        local.set 1
      end
      local.get 1
    end
    i32.const 10
    i32.ge_u
    if  ;; label = @1
      local.get 2
      local.get 0
      i32.const 2
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 2
      i32.shl
      i32.const 5436
      i32.add
      i32.load
      i32.store
    else
      local.get 2
      local.get 0
      i32.const 1
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i32.store16
    end
    local.get 3
    if  ;; label = @1
      local.get 4
      i32.const 45
      i32.store16
    end
    local.get 4)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData)
  (func $~lib/util/string/joinStringArray (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.tee 7
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 3408
      return
    end
    local.get 7
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      if (result i32)  ;; label = @2
        local.get 0
      else
        i32.const 3408
      end
      return
    end
    loop  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          local.get 4
          local.get 6
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.add
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4
    local.get 7
    local.get 2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    i32.mul
    i32.add
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 1
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 7
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 6
            local.get 6
            i32.const 20
            i32.sub
            i32.load offset=16
            i32.const 1
            i32.shr_u
            local.tee 6
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 6
            i32.add
          end
          local.set 3
        end
        local.get 4
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 2
            local.get 4
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 4
            i32.add
          end
          local.set 3
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 1
      local.get 3
      i32.const 1
      i32.shl
      i32.add
      local.get 0
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
    end
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      br_table 0 (;@9;) 1 (;@8;) 2 (;@7;) 3 (;@6;) 4 (;@5;) 5 (;@4;) 6 (;@3;) 7 (;@2;) 8 (;@1;)
                    end
                    local.get 0
                    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
                    return
                  end
                  local.get 0
                  i32.load
                  i32.const 5
                  i32.eq
                  if (result i32)  ;; label = @8
                    i32.const 0
                  else
                    local.get 0
                    i32.load
                    i32.const 1
                    i32.ne
                    if  ;; label = @9
                      i32.const 5168
                      i32.const 5056
                      i32.const 65
                      i32.const 5
                      call $~lib/builtins/abort
                      unreachable
                    end
                    local.get 0
                    i64.load offset=8
                    i32.wrap_i64
                  end
                  call $~lib/util/number/itoa32
                  return
                end
                local.get 0
                i32.load
                i32.const 2
                i32.ne
                if  ;; label = @7
                  i32.const 7008
                  i32.const 5056
                  i32.const 80
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i32.wrap_i64
                call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
                return
              end
              i32.const 7168
              i32.const 7200
              local.get 0
              i32.load
              i32.const 5
              i32.eq
              if (result i32)  ;; label = @6
                i32.const 0
              else
                local.get 0
                i32.load
                i32.const 3
                i32.ne
                if  ;; label = @7
                  i32.const 7088
                  i32.const 5056
                  i32.const 52
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i64.const 0
                i64.ne
              end
              select
              return
            end
            local.get 0
            local.tee 1
            i32.load
            i32.const 4
            i32.ne
            if  ;; label = @5
              i32.const 7232
              i32.const 5056
              i32.const 85
              i32.const 5
              call $~lib/builtins/abort
              unreachable
            end
            i32.const 0
            local.set 0
            local.get 1
            i64.load offset=8
            i32.wrap_i64
            local.tee 1
            i32.load offset=12
            local.tee 3
            i32.const 3
            i32.const 0
            call $~lib/rt/__newArray
            local.tee 4
            i32.load offset=4
            local.set 5
            loop  ;; label = @5
              local.get 0
              local.get 3
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 2
              local.get 3
              i32.gt_s
              select
              i32.lt_s
              if  ;; label = @6
                local.get 0
                i32.const 2
                i32.shl
                local.tee 2
                local.get 1
                i32.load offset=4
                i32.add
                i32.load
                local.get 0
                local.get 1
                i32.const 7328
                i32.load
                call_indirect $0 (type 4)
                local.set 6
                local.get 2
                local.get 5
                i32.add
                local.get 6
                i32.store
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
            end
            i32.const 7296
            local.get 4
            i32.load offset=4
            local.get 4
            i32.load offset=12
            i32.const 7360
            call $~lib/util/string/joinStringArray
            call $~lib/string/String#concat
            i32.const 7392
            call $~lib/string/String#concat
            return
          end
          i32.const 1360
          return
        end
        local.get 0
        i32.load
        i32.const 6
        i32.ne
        if  ;; label = @3
          i32.const 7424
          i32.const 5056
          i32.const 57
          i32.const 5
          call $~lib/builtins/abort
          unreachable
        end
        local.get 0
        i64.load offset=8
        i32.wrap_i64
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        return
      end
      local.get 0
      i32.load
      i32.const 7
      i32.ne
      if  ;; label = @2
        i32.const 7504
        i32.const 5056
        i32.const 75
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i64.load offset=8
      i32.wrap_i64
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      return
    end
    i32.const 7668
    local.get 0
    i32.load
    call $~lib/util/number/itoa32
    i32.store
    i32.const 7664
    i32.const 7660
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 3408
    call $~lib/util/string/joinStringArray)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 1532
    i32.load
    i32.ge_s
    if (result i32)  ;; label = @1
      i32.const 7748
      local.get 0
      i32.load
      call $~lib/util/number/itoa32
      i32.store
      i32.const 7744
      i32.const 7740
      i32.load
      i32.const 2
      i32.shr_u
      i32.const 3408
      call $~lib/util/string/joinStringArray
    else
      i32.const 1520
      local.get 0
      i32.load
      call $~lib/array/Array<~lib/string/String>#__get
    end)
  (func $src/gravity/handleCreateGravatar (type 5) (param i32)
    (local i32 i32 i32 i64)
    local.get 0
    i32.load offset=12
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 1
    i32.const 4
    i32.const 30
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 2
    local.set 3
    local.get 1
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 4
    i64.store offset=8
    local.get 3
    i32.const 4320
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i64.const 3408
    i64.store offset=8
    local.get 2
    i32.const 4352
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i64.const 3408
    i64.store offset=8
    local.get 2
    i32.const 4400
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 31
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=16
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $generated/schema/Transaction#set:displayName
    i32.const 4
    i32.const 31
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=16
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $generated/schema/Transaction#set:imageUrl
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 4544
      i32.const 4656
      i32.const 88
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 4948
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 4956
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 4944
        i32.const 4940
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 3408
        call $~lib/util/string/joinStringArray
        i32.const 4656
        i32.const 90
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 7776
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $generated/schema/Gravatar#constructor (type 0) (param i32) (result i32)
    (local i32 i32 i64)
    i32.const 4
    i32.const 38
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 1
    local.set 2
    local.get 0
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 4320
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 6
    i32.store
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 1
    i32.const 7824
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i64.const 3408
    i64.store offset=8
    local.get 1
    i32.const 4352
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i64.const 3408
    i64.store offset=8
    local.get 1
    i32.const 4400
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1)
  (func $generated/schema/Gravatar#save (type 5) (param i32)
    (local i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8048
      i32.const 4656
      i32.const 26
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 8324
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 8332
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 8320
        i32.const 8316
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 3408
        call $~lib/util/string/joinStringArray
        i32.const 4656
        i32.const 28
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 8368
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $src/gravity/handleNewGravatar (type 5) (param i32)
    (local i32 i32 i32 i64)
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    local.tee 2
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 2
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 7856
      i32.const 2848
      i32.const 80
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 2
    i64.load offset=8
    i32.wrap_i64
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToHex
    call $generated/schema/Gravatar#constructor
    local.tee 2
    local.set 3
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    local.tee 1
    i32.load
    if  ;; label = @1
      i32.const 7952
      i32.const 2848
      i32.const 53
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i64.load offset=8
    i32.wrap_i64
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 4
    i64.store offset=8
    local.get 3
    i32.const 7824
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $generated/schema/Transaction#set:displayName
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
    call $generated/schema/Transaction#set:imageUrl
    local.get 2
    call $generated/schema/Gravatar#save)
  (func $~lib/@graphprotocol/graph-ts/common/value/JSONValue#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 3
    i32.ne
    if  ;; label = @1
      i32.const 8496
      i32.const 5056
      i32.const 327
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $tests/gravity/utils/processGravatar (type 2) (param i32 i32)
    (local i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const 5
      i32.ne
      if  ;; label = @2
        i32.const 8416
        i32.const 5056
        i32.const 337
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i64.load offset=8
      i32.wrap_i64
    end
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      return
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/JSONValue#toString
    call $generated/schema/Gravatar#constructor
    local.tee 2
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/JSONValue#toString
    call $~lib/string/String#concat
    call $generated/schema/Transaction#set:displayName
    local.get 2
    call $generated/schema/Gravatar#save)
  (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type (type 0) (param i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  block  ;; label = @104
                                                                                                                                                                                                                    block  ;; label = @105
                                                                                                                                                                                                                      block  ;; label = @106
                                                                                                                                                                                                                        block  ;; label = @107
                                                                                                                                                                                                                          block  ;; label = @108
                                                                                                                                                                                                                            block  ;; label = @109
                                                                                                                                                                                                                              block  ;; label = @110
                                                                                                                                                                                                                                block  ;; label = @111
                                                                                                                                                                                                                                  block  ;; label = @112
                                                                                                                                                                                                                                    block  ;; label = @113
                                                                                                                                                                                                                                      block  ;; label = @114
                                                                                                                                                                                                                                        block  ;; label = @115
                                                                                                                                                                                                                                          block  ;; label = @116
                                                                                                                                                                                                                                            block  ;; label = @117
                                                                                                                                                                                                                                              block  ;; label = @118
                                                                                                                                                                                                                                                block  ;; label = @119
                                                                                                                                                                                                                                                  block  ;; label = @120
                                                                                                                                                                                                                                                    block  ;; label = @121
                                                                                                                                                                                                                                                      block  ;; label = @122
                                                                                                                                                                                                                                                        block  ;; label = @123
                                                                                                                                                                                                                                                          block  ;; label = @124
                                                                                                                                                                                                                                                            block  ;; label = @125
                                                                                                                                                                                                                                                              block  ;; label = @126
                                                                                                                                                                                                                                                                block  ;; label = @127
                                                                                                                                                                                                                                                                  block  ;; label = @128
                                                                                                                                                                                                                                                                    block  ;; label = @129
                                                                                                                                                                                                                                                                      block  ;; label = @130
                                                                                                                                                                                                                                                                        block  ;; label = @131
                                                                                                                                                                                                                                                                          block  ;; label = @132
                                                                                                                                                                                                                                                                            block  ;; label = @133
                                                                                                                                                                                                                                                                              block  ;; label = @134
                                                                                                                                                                                                                                                                                local.get 0
                                                                                                                                                                                                                                                                                br_table 0 (;@134;) 1 (;@133;) 2 (;@132;) 3 (;@131;) 4 (;@130;) 5 (;@129;) 6 (;@128;) 7 (;@127;) 8 (;@126;) 9 (;@125;) 10 (;@124;) 11 (;@123;) 12 (;@122;) 13 (;@121;) 14 (;@120;) 15 (;@119;) 16 (;@118;) 17 (;@117;) 18 (;@116;) 19 (;@115;) 20 (;@114;) 21 (;@113;) 25 (;@109;) 26 (;@108;) 27 (;@107;) 28 (;@106;) 29 (;@105;) 22 (;@112;) 23 (;@111;) 24 (;@110;) 30 (;@104;) 31 (;@103;) 32 (;@102;) 33 (;@101;) 34 (;@100;) 35 (;@99;) 36 (;@98;) 37 (;@97;) 38 (;@96;) 39 (;@95;) 40 (;@94;) 41 (;@93;) 42 (;@92;) 43 (;@91;) 44 (;@90;) 45 (;@89;) 46 (;@88;) 47 (;@87;) 48 (;@86;) 49 (;@85;) 50 (;@84;) 51 (;@83;) 52 (;@82;) 53 (;@81;) 54 (;@80;) 55 (;@79;) 56 (;@78;) 57 (;@77;) 58 (;@76;) 59 (;@75;) 60 (;@74;) 61 (;@73;) 133 (;@1;) 62 (;@72;) 63 (;@71;) 64 (;@70;) 65 (;@69;) 66 (;@68;) 67 (;@67;) 68 (;@66;) 69 (;@65;) 70 (;@64;) 71 (;@63;) 72 (;@62;) 73 (;@61;) 74 (;@60;) 75 (;@59;) 76 (;@58;) 77 (;@57;) 78 (;@56;) 79 (;@55;) 80 (;@54;) 81 (;@53;) 82 (;@52;) 83 (;@51;) 84 (;@50;) 85 (;@49;) 86 (;@48;) 87 (;@47;) 88 (;@46;) 89 (;@45;) 90 (;@44;) 91 (;@43;) 92 (;@42;) 93 (;@41;) 94 (;@40;) 95 (;@39;) 96 (;@38;) 97 (;@37;) 98 (;@36;) 99 (;@35;) 100 (;@34;) 101 (;@33;) 102 (;@32;) 103 (;@31;) 104 (;@30;) 105 (;@29;) 106 (;@28;) 107 (;@27;) 108 (;@26;) 109 (;@25;) 110 (;@24;) 111 (;@23;) 112 (;@22;) 113 (;@21;) 114 (;@20;) 115 (;@19;) 116 (;@18;) 117 (;@17;) 118 (;@16;) 119 (;@15;) 120 (;@14;) 121 (;@13;) 122 (;@12;) 123 (;@11;) 124 (;@10;) 125 (;@9;) 126 (;@8;) 127 (;@7;) 128 (;@6;) 129 (;@5;) 130 (;@4;) 131 (;@3;) 132 (;@2;) 133 (;@1;)
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                              i32.const 1
                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                          i32.const 44
                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                        i32.const 45
                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                      i32.const 46
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 47
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 13
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 48
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 49
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 50
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 51
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 52
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 53
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 55
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 56
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 58
                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                              i32.const 60
                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                            i32.const 62
                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                          i32.const 3
                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                        i32.const 64
                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                      i32.const 66
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 71
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 72
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 73
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 74
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 75
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 63
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 79
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 80
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 81
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 57
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 59
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 61
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 82
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 67
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 83
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 68
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 83
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 84
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 87
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 89
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 90
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 91
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 92
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 93
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 94
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 95
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 18
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 96
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 97
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 98
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 99
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 101
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 102
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 104
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 105
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 110
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 112
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 114
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 116
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 117
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 103
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 109
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 113
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 118
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 119
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 117
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 100
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 120
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 121
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 122
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 123
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 124
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 125
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 127
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 128
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 129
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 130
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 106
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 131
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 111
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 132
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 108
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 115
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 133
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 134
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 142
                                                                                                  return
                                                                                                end
                                                                                                i32.const 141
                                                                                                return
                                                                                              end
                                                                                              i32.const 145
                                                                                              return
                                                                                            end
                                                                                            i32.const 102
                                                                                            return
                                                                                          end
                                                                                          i32.const 161
                                                                                          return
                                                                                        end
                                                                                        i32.const 140
                                                                                        return
                                                                                      end
                                                                                      i32.const 18
                                                                                      return
                                                                                    end
                                                                                    i32.const 18
                                                                                    return
                                                                                  end
                                                                                  i32.const 162
                                                                                  return
                                                                                end
                                                                                i32.const 163
                                                                                return
                                                                              end
                                                                              i32.const 167
                                                                              return
                                                                            end
                                                                            i32.const 168
                                                                            return
                                                                          end
                                                                          i32.const 169
                                                                          return
                                                                        end
                                                                        i32.const 170
                                                                        return
                                                                      end
                                                                      i32.const 171
                                                                      return
                                                                    end
                                                                    i32.const 172
                                                                    return
                                                                  end
                                                                  i32.const 173
                                                                  return
                                                                end
                                                                i32.const 175
                                                                return
                                                              end
                                                              i32.const 176
                                                              return
                                                            end
                                                            i32.const 164
                                                            return
                                                          end
                                                          i32.const 156
                                                          return
                                                        end
                                                        i32.const 143
                                                        return
                                                      end
                                                      i32.const 154
                                                      return
                                                    end
                                                    i32.const 155
                                                    return
                                                  end
                                                  i32.const 149
                                                  return
                                                end
                                                i32.const 150
                                                return
                                              end
                                              i32.const 165
                                              return
                                            end
                                            i32.const 146
                                            return
                                          end
                                          i32.const 147
                                          return
                                        end
                                        i32.const 135
                                        return
                                      end
                                      i32.const 148
                                      return
                                    end
                                    i32.const 151
                                    return
                                  end
                                  i32.const 152
                                  return
                                end
                                i32.const 157
                                return
                              end
                              i32.const 153
                              return
                            end
                            i32.const 166
                            return
                          end
                          i32.const 158
                          return
                        end
                        i32.const 160
                        return
                      end
                      i32.const 159
                      return
                    end
                    i32.const 136
                    return
                  end
                  i32.const 137
                  return
                end
                i32.const 138
                return
              end
              i32.const 139
              return
            end
            i32.const 177
            return
          end
          i32.const 174
          return
        end
        i32.const 144
        return
      end
      i32.const 178
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 6)
    (local i32 i32)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    i32.const 8668
    global.set $~lib/rt/stub/offset
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1824
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 2352
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/gravity/utils/contractAddress
    global.get $tests/gravity/utils/contractAddress
    local.set 1
    block (result i32)  ;; label = @1
      i32.const 8
      i32.const 15
      call $~lib/rt/stub/__new
      local.tee 0
      i32.eqz
      if  ;; label = @2
        i32.const 8
        i32.const 16
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 2464
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    i32.const 2512
    i32.const 0
    i32.const 4288
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 3 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $tests/gravity/utils/contractAddress (mut i32) (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.String i32 (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBuffer i32 (i32.const 1))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int8Array i32 (i32.const 2))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int16Array i32 (i32.const 3))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int32Array i32 (i32.const 4))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int64Array i32 (i32.const 5))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint8Array i32 (i32.const 6))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint16Array i32 (i32.const 7))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint32Array i32 (i32.const 8))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint64Array i32 (i32.const 9))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float32Array i32 (i32.const 10))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float64Array i32 (i32.const 11))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.BigDecimal i32 (i32.const 12))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBool i32 (i32.const 13))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayUint8Array i32 (i32.const 14))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEthereumValue i32 (i32.const 15))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayStoreValue i32 (i32.const 16))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayJsonValue i32 (i32.const 17))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayString i32 (i32.const 18))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEventParam i32 (i32.const 19))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringJsonValue i32 (i32.const 20))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringStoreValue i32 (i32.const 21))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.SmartContractCall i32 (i32.const 22))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EventParam i32 (i32.const 23))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumTransaction i32 (i32.const 24))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumBlock i32 (i32.const 25))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumCall i32 (i32.const 26))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedTypedMapStringJsonValue i32 (i32.const 27))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedBool i32 (i32.const 28))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedJsonValue i32 (i32.const 29))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumValue i32 (i32.const 30))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StoreValue i32 (i32.const 31))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.JsonValue i32 (i32.const 32))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumEvent i32 (i32.const 33))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringStoreValue i32 (i32.const 34))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringJsonValue i32 (i32.const 35))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringStoreValue i32 (i32.const 36))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringJsonValue i32 (i32.const 37))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringTypedMapStringJsonValue i32 (i32.const 38))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultTypedMapStringJsonValueBool i32 (i32.const 39))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultJsonValueBool i32 (i32.const 40))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU8 i32 (i32.const 41))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU16 i32 (i32.const 42))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU32 i32 (i32.const 43))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU64 i32 (i32.const 44))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI8 i32 (i32.const 45))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI16 i32 (i32.const 46))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI32 i32 (i32.const 47))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI64 i32 (i32.const 48))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF32 i32 (i32.const 49))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF64 i32 (i32.const 50))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBigDecimal i32 (i32.const 51))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayDataReceiver i32 (i32.const 52))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayCryptoHash i32 (i32.const 53))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayActionValue i32 (i32.const 54))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePath i32 (i32.const 55))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayValidatorStake i32 (i32.const 56))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySlashedValidator i32 (i32.const 57))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySignature i32 (i32.const 58))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayChunkHeader i32 (i32.const 59))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKeyPermissionValue i32 (i32.const 60))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionValue i32 (i32.const 61))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDirection i32 (i32.const 62))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearPublicKey i32 (i32.const 63))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSignature i32 (i32.const 64))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallPermission i32 (i32.const 65))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFullAccessPermission i32 (i32.const 66))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKey i32 (i32.const 67))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDataReceiver i32 (i32.const 68))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearCreateAccountAction i32 (i32.const 69))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeployContractAction i32 (i32.const 70))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallAction i32 (i32.const 71))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearTransferAction i32 (i32.const 72))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearStakeAction i32 (i32.const 73))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAddKeyAction i32 (i32.const 74))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteKeyAction i32 (i32.const 75))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteAccountAction i32 (i32.const 76))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionReceipt i32 (i32.const 77))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSuccessStatus i32 (i32.const 78))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePathItem i32 (i32.const 79))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearExecutionOutcome i32 (i32.const 80))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSlashedValidator i32 (i32.const 81))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlockHeader i32 (i32.const 82))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearValidatorStake i32 (i32.const 83))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearChunkHeader i32 (i32.const 84))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlock i32 (i32.const 85))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearReceiptWithOutcome i32 (i32.const 86))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayEventTx i32 (i32.const 87))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayEvent i32 (i32.const 88))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayCommitSig i32 (i32.const 89))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayBytes i32 (i32.const 90))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayEvidence i32 (i32.const 91))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayEventAttribute i32 (i32.const 92))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintBlockIDFlagEnum i32 (i32.const 93))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintSignedMsgTypeEnum i32 (i32.const 94))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEventList i32 (i32.const 95))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEventBlock i32 (i32.const 96))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintResponseBeginBlock i32 (i32.const 97))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintResponseEndBlock i32 (i32.const 98))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintValidatorUpdate i32 (i32.const 99))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayValidatorUpdate i32 (i32.const 100))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintConsensusParams i32 (i32.const 101))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintBlockParams i32 (i32.const 102))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEvidenceParams i32 (i32.const 103))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintValidatorParams i32 (i32.const 104))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintVersionParams i32 (i32.const 105))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintBlock i32 (i32.const 106))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintCommit i32 (i32.const 107))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintCommitSig i32 (i32.const 108))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintHeader i32 (i32.const 109))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintConsensus i32 (i32.const 110))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintBlockID i32 (i32.const 111))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintPartSetHeader i32 (i32.const 112))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintData i32 (i32.const 113))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEvidence i32 (i32.const 114))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintDuplicateVoteEvidence i32 (i32.const 115))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEventTx i32 (i32.const 116))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEventVote i32 (i32.const 117))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintLightClientAttackEvidence i32 (i32.const 118))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintLightBlock i32 (i32.const 119))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintValidatorSet i32 (i32.const 120))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintSignedHeader i32 (i32.const 121))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEvidenceList i32 (i32.const 122))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintValidator i32 (i32.const 123))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintArrayValidator i32 (i32.const 124))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintPublicKey i32 (i32.const 125))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintTxResult i32 (i32.const 126))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintResponseDeliverTx i32 (i32.const 127))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEvent i32 (i32.const 128))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEventAttribute i32 (i32.const 129))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEventValidatorSetUpdates i32 (i32.const 130))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintDuration i32 (i32.const 131))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintTimestamp i32 (i32.const 132))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TendermintEventData i32 (i32.const 133))
  (global $~started (mut i32) (i32.const 0))
  (export "handleCreateGravatar" (func $src/gravity/handleCreateGravatar))
  (export "handleNewGravatar" (func $src/gravity/handleNewGravatar))
  (export "processGravatar" (func $tests/gravity/utils/processGravatar))
  (export "TypeId.String" (global 2))
  (export "TypeId.ArrayBuffer" (global 3))
  (export "TypeId.Int8Array" (global 4))
  (export "TypeId.Int16Array" (global 5))
  (export "TypeId.Int32Array" (global 6))
  (export "TypeId.Int64Array" (global 7))
  (export "TypeId.Uint8Array" (global 8))
  (export "TypeId.Uint16Array" (global 9))
  (export "TypeId.Uint32Array" (global 10))
  (export "TypeId.Uint64Array" (global 11))
  (export "TypeId.Float32Array" (global 12))
  (export "TypeId.Float64Array" (global 13))
  (export "TypeId.BigDecimal" (global 14))
  (export "TypeId.ArrayBool" (global 15))
  (export "TypeId.ArrayUint8Array" (global 16))
  (export "TypeId.ArrayEthereumValue" (global 17))
  (export "TypeId.ArrayStoreValue" (global 18))
  (export "TypeId.ArrayJsonValue" (global 19))
  (export "TypeId.ArrayString" (global 20))
  (export "TypeId.ArrayEventParam" (global 21))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 22))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 23))
  (export "TypeId.SmartContractCall" (global 24))
  (export "TypeId.EventParam" (global 25))
  (export "TypeId.EthereumTransaction" (global 26))
  (export "TypeId.EthereumBlock" (global 27))
  (export "TypeId.EthereumCall" (global 28))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 29))
  (export "TypeId.WrappedBool" (global 30))
  (export "TypeId.WrappedJsonValue" (global 31))
  (export "TypeId.EthereumValue" (global 32))
  (export "TypeId.StoreValue" (global 33))
  (export "TypeId.JsonValue" (global 34))
  (export "TypeId.EthereumEvent" (global 35))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 36))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 37))
  (export "TypeId.TypedMapStringStoreValue" (global 38))
  (export "TypeId.TypedMapStringJsonValue" (global 39))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 40))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 41))
  (export "TypeId.ResultJsonValueBool" (global 42))
  (export "TypeId.ArrayU8" (global 43))
  (export "TypeId.ArrayU16" (global 44))
  (export "TypeId.ArrayU32" (global 45))
  (export "TypeId.ArrayU64" (global 46))
  (export "TypeId.ArrayI8" (global 47))
  (export "TypeId.ArrayI16" (global 48))
  (export "TypeId.ArrayI32" (global 49))
  (export "TypeId.ArrayI64" (global 50))
  (export "TypeId.ArrayF32" (global 51))
  (export "TypeId.ArrayF64" (global 52))
  (export "TypeId.ArrayBigDecimal" (global 53))
  (export "TypeId.NearArrayDataReceiver" (global 54))
  (export "TypeId.NearArrayCryptoHash" (global 55))
  (export "TypeId.NearArrayActionValue" (global 56))
  (export "TypeId.NearMerklePath" (global 57))
  (export "TypeId.NearArrayValidatorStake" (global 58))
  (export "TypeId.NearArraySlashedValidator" (global 59))
  (export "TypeId.NearArraySignature" (global 60))
  (export "TypeId.NearArrayChunkHeader" (global 61))
  (export "TypeId.NearAccessKeyPermissionValue" (global 62))
  (export "TypeId.NearActionValue" (global 63))
  (export "TypeId.NearDirection" (global 64))
  (export "TypeId.NearPublicKey" (global 65))
  (export "TypeId.NearSignature" (global 66))
  (export "TypeId.NearFunctionCallPermission" (global 67))
  (export "TypeId.NearFullAccessPermission" (global 68))
  (export "TypeId.NearAccessKey" (global 69))
  (export "TypeId.NearDataReceiver" (global 70))
  (export "TypeId.NearCreateAccountAction" (global 71))
  (export "TypeId.NearDeployContractAction" (global 72))
  (export "TypeId.NearFunctionCallAction" (global 73))
  (export "TypeId.NearTransferAction" (global 74))
  (export "TypeId.NearStakeAction" (global 75))
  (export "TypeId.NearAddKeyAction" (global 76))
  (export "TypeId.NearDeleteKeyAction" (global 77))
  (export "TypeId.NearDeleteAccountAction" (global 78))
  (export "TypeId.NearActionReceipt" (global 79))
  (export "TypeId.NearSuccessStatus" (global 80))
  (export "TypeId.NearMerklePathItem" (global 81))
  (export "TypeId.NearExecutionOutcome" (global 82))
  (export "TypeId.NearSlashedValidator" (global 83))
  (export "TypeId.NearBlockHeader" (global 84))
  (export "TypeId.NearValidatorStake" (global 85))
  (export "TypeId.NearChunkHeader" (global 86))
  (export "TypeId.NearBlock" (global 87))
  (export "TypeId.NearReceiptWithOutcome" (global 88))
  (export "TypeId.TendermintArrayEventTx" (global 89))
  (export "TypeId.TendermintArrayEvent" (global 90))
  (export "TypeId.TendermintArrayCommitSig" (global 91))
  (export "TypeId.TendermintArrayBytes" (global 92))
  (export "TypeId.TendermintArrayEvidence" (global 93))
  (export "TypeId.TendermintArrayEventAttribute" (global 94))
  (export "TypeId.TendermintBlockIDFlagEnum" (global 95))
  (export "TypeId.TendermintSignedMsgTypeEnum" (global 96))
  (export "TypeId.TendermintEventList" (global 97))
  (export "TypeId.TendermintEventBlock" (global 98))
  (export "TypeId.TendermintResponseBeginBlock" (global 99))
  (export "TypeId.TendermintResponseEndBlock" (global 100))
  (export "TypeId.TendermintValidatorUpdate" (global 101))
  (export "TypeId.TendermintArrayValidatorUpdate" (global 102))
  (export "TypeId.TendermintConsensusParams" (global 103))
  (export "TypeId.TendermintBlockParams" (global 104))
  (export "TypeId.TendermintEvidenceParams" (global 105))
  (export "TypeId.TendermintValidatorParams" (global 106))
  (export "TypeId.TendermintVersionParams" (global 107))
  (export "TypeId.TendermintBlock" (global 108))
  (export "TypeId.TendermintCommit" (global 109))
  (export "TypeId.TendermintCommitSig" (global 110))
  (export "TypeId.TendermintHeader" (global 111))
  (export "TypeId.TendermintConsensus" (global 112))
  (export "TypeId.TendermintBlockID" (global 113))
  (export "TypeId.TendermintPartSetHeader" (global 114))
  (export "TypeId.TendermintData" (global 115))
  (export "TypeId.TendermintEvidence" (global 116))
  (export "TypeId.TendermintDuplicateVoteEvidence" (global 117))
  (export "TypeId.TendermintEventTx" (global 118))
  (export "TypeId.TendermintEventVote" (global 119))
  (export "TypeId.TendermintLightClientAttackEvidence" (global 120))
  (export "TypeId.TendermintLightBlock" (global 121))
  (export "TypeId.TendermintValidatorSet" (global 122))
  (export "TypeId.TendermintSignedHeader" (global 123))
  (export "TypeId.TendermintEvidenceList" (global 124))
  (export "TypeId.TendermintValidator" (global 125))
  (export "TypeId.TendermintArrayValidator" (global 126))
  (export "TypeId.TendermintPublicKey" (global 127))
  (export "TypeId.TendermintTxResult" (global 128))
  (export "TypeId.TendermintResponseDeliverTx" (global 129))
  (export "TypeId.TendermintEvent" (global 130))
  (export "TypeId.TendermintEventAttribute" (global 131))
  (export "TypeId.TendermintEventValidatorSetUpdates" (global 132))
  (export "TypeId.TendermintDuration" (global 133))
  (export "TypeId.TendermintTimestamp" (global 134))
  (export "TypeId.TendermintEventData" (global 135))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $start:tests/gravity/gravity.test~anonymous|0 $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0)
  (data (;0;) (i32.const 1036) "<")
  (data (;1;) (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
  (data (;2;) (i32.const 1100) "<")
  (data (;3;) (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
  (data (;4;) (i32.const 1164) "\1c")
  (data (;5;) (i32.const 1176) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
  (data (;6;) (i32.const 1196) "\1c")
  (data (;7;) (i32.const 1208) "\01\00\00\00\06\00\00\00I\00n\00t")
  (data (;8;) (i32.const 1228) ",")
  (data (;9;) (i32.const 1240) "\01\00\00\00\14\00\00\00B\00i\00g\00D\00e\00c\00i\00m\00a\00l")
  (data (;10;) (i32.const 1276) "\1c")
  (data (;11;) (i32.const 1288) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
  (data (;12;) (i32.const 1308) "\1c")
  (data (;13;) (i32.const 1320) "\01\00\00\00\0a\00\00\00A\00r\00r\00a\00y")
  (data (;14;) (i32.const 1340) "\1c")
  (data (;15;) (i32.const 1352) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
  (data (;16;) (i32.const 1372) "\1c")
  (data (;17;) (i32.const 1384) "\01\00\00\00\0a\00\00\00B\00y\00t\00e\00s")
  (data (;18;) (i32.const 1404) "\1c")
  (data (;19;) (i32.const 1416) "\01\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t")
  (data (;20;) (i32.const 1436) "<")
  (data (;21;) (i32.const 1452) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;22;) (i32.const 1500) ",")
  (data (;23;) (i32.const 1512) "\03\00\00\00\10\00\00\00\b0\05\00\00\b0\05\00\00 \00\00\00\08")
  (data (;24;) (i32.const 1548) "l")
  (data (;25;) (i32.const 1560) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;26;) (i32.const 1660) ",")
  (data (;27;) (i32.const 1672) "\01\00\00\00\0e\00\00\00m\00a\00i\00n\00n\00e\00t")
  (data (;28;) (i32.const 1708) ",")
  (data (;29;) (i32.const 1720) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;30;) (i32.const 1756) ",")
  (data (;31;) (i32.const 1768) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;32;) (i32.const 1804) "l")
  (data (;33;) (i32.const 1816) "\01\00\00\00T\00\00\000\00x\00A\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;34;) (i32.const 1916) "<")
  (data (;35;) (i32.const 1928) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
  (data (;36;) (i32.const 1980) "<")
  (data (;37;) (i32.const 1992) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
  (data (;38;) (i32.const 2044) "<")
  (data (;39;) (i32.const 2056) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;40;) (i32.const 2108) "<")
  (data (;41;) (i32.const 2120) "\01\00\00\00 \00\00\00d\00e\00f\00a\00u\00l\00t\00_\00l\00o\00g\00_\00t\00y\00p\00e")
  (data (;42;) (i32.const 2172) "\9c")
  (data (;43;) (i32.const 2184) "\01\00\00\00\86\00\00\00Y\00o\00u\00 \00c\00a\00n\00'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00 \00M\00o\00c\00k\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00 \00i\00n\00s\00t\00a\00n\00c\00e\00 \00a\00f\00t\00e\00r\00 \00i\00t\00 \00h\00a\00s\00 \00b\00e\00e\00n\00 \00s\00a\00v\00e\00d\00.")
  (data (;44;) (i32.const 2332) "l")
  (data (;45;) (i32.const 2344) "\01\00\00\00T\00\00\000\00x\008\009\002\000\005\00A\003\00A\003\00b\002\00A\006\009\00D\00e\006\00D\00b\00f\007\00f\000\001\00E\00D\001\003\00B\002\001\000\008\00B\002\00c\004\003\00e\007")
  (data (;46;) (i32.const 2444) ",")
  (data (;47;) (i32.const 2456) "\01\00\00\00\0e\00\00\00G\00r\00a\00v\00i\00t\00y")
  (data (;48;) (i32.const 2492) "\8c")
  (data (;49;) (i32.const 2504) "\01\00\00\00p\00\00\00C\00a\00n\00 \00m\00o\00c\00k\00 \00a\00n\00d\00 \00c\00a\00l\00l\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00w\00i\00t\00h\00 \00d\00i\00f\00f\00e\00r\00e\00n\00t\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00t\00y\00p\00e\00s")
  (data (;50;) (i32.const 2636) "<")
  (data (;51;) (i32.const 2648) "\01\00\00\00(\00\00\00e\00x\00a\00m\00p\00l\00e\00 \00s\00t\00r\00i\00n\00g\00 \00v\00a\00l\00u\00e")
  (data (;52;) (i32.const 2700) "\1c")
  (data (;53;) (i32.const 2716) "\08\00\00\00\fac\02\00\14\e2\01")
  (data (;54;) (i32.const 2732) "\5c")
  (data (;55;) (i32.const 2744) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;56;) (i32.const 2828) "l")
  (data (;57;) (i32.const 2840) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;58;) (i32.const 2940) ",")
  (data (;59;) (i32.const 2952) "\01\00\00\00\18\00\00\00s\00t\00r\00i\00n\00g\00 \00v\00a\00l\00u\00e")
  (data (;60;) (i32.const 2988) "l")
  (data (;61;) (i32.const 3000) "\01\00\00\00T\00\00\000\00x\009\000\00c\00B\00a\002\00B\00b\00b\001\009\00e\00c\00c\002\009\001\00A\001\002\000\006\006\00F\00d\008\003\002\009\00D\006\005\00F\00A\001\00f\001\009\004\007")
  (data (;62;) (i32.const 3100) ",")
  (data (;63;) (i32.const 3112) "\01\00\00\00\10\00\00\00f\00u\00n\00c\00N\00a\00m\00e")
  (data (;64;) (i32.const 3148) "\ac")
  (data (;65;) (i32.const 3160) "\01\00\00\00\8e\00\00\00f\00u\00n\00c\00N\00a\00m\00e\00(\00i\00n\00t\003\002\00,\00 \00s\00t\00r\00i\00n\00g\00,\00 \00i\00n\00t\003\002\00[\00]\00,\00 \00b\00o\00o\00l\00,\00 \00a\00d\00d\00r\00e\00s\00s\00,\00 \00(\00i\00n\00t\003\002\00,\00 \00s\00t\00r\00i\00n\00g\00)\00)\00:\00(\00v\00o\00i\00d\00)")
  (data (;66;) (i32.const 3324) "\1c")
  (data (;67;) (i32.const 3356) "\1c")
  (data (;68;) (i32.const 3388) "\1c")
  (data (;69;) (i32.const 3400) "\01")
  (data (;70;) (i32.const 3420) "\5c")
  (data (;71;) (i32.const 3432) "\01\00\00\00J\00\00\00T\00o\00o\00 \00f\00e\00w\00 \00a\00r\00g\00u\00m\00e\00n\00t\00s\00 \00f\00o\00r\00 \00f\00o\00r\00m\00a\00t\00 \00s\00t\00r\00i\00n\00g\00:\00 ")
  (data (;72;) (i32.const 3516) "\5c")
  (data (;73;) (i32.const 3528) "\01\00\00\00D\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00o\00g\00.\00t\00s")
  (data (;74;) (i32.const 3612) "|")
  (data (;75;) (i32.const 3624) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;76;) (i32.const 3740) "\1c")
  (data (;77;) (i32.const 3752) "\01\00\00\00\0c\00\00\00r\00e\00s\00u\00l\00t")
  (data (;78;) (i32.const 3772) "\1c")
  (data (;79;) (i32.const 3804) ",")
  (data (;80;) (i32.const 3816) "\01\00\00\00\0e\00\00\00c\00o\00n\00N\00a\00m\00e")
  (data (;81;) (i32.const 3852) "<")
  (data (;82;) (i32.const 3864) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;83;) (i32.const 3916) "L")
  (data (;84;) (i32.const 3928) "\01\00\00\00:\00\00\00t\00e\00s\00t\00s\00/\00g\00r\00a\00v\00i\00t\00y\00/\00g\00r\00a\00v\00i\00t\00y\00.\00t\00e\00s\00t\00.\00t\00s")
  (data (;85;) (i32.const 3996) "\1c")
  (data (;86;) (i32.const 4008) "\01\00\00\00\04\00\00\00h\00w")
  (data (;87;) (i32.const 4028) ",")
  (data (;88;) (i32.const 4040) "\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
  (data (;89;) (i32.const 4076) "\1c")
  (data (;90;) (i32.const 4092) "\04\00\00\00\d0\0f")
  (data (;91;) (i32.const 4108) "<")
  (data (;92;) (i32.const 4120) "\01\00\00\00\1e\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;93;) (i32.const 4172) "\5c")
  (data (;94;) (i32.const 4184) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;95;) (i32.const 4268) "\1c")
  (data (;96;) (i32.const 4280) "\17\00\00\00\08\00\00\00\01")
  (data (;97;) (i32.const 4300) "\1c")
  (data (;98;) (i32.const 4312) "\01\00\00\00\04\00\00\00i\00d")
  (data (;99;) (i32.const 4332) ",")
  (data (;100;) (i32.const 4344) "\01\00\00\00\16\00\00\00d\00i\00s\00p\00l\00a\00y\00N\00a\00m\00e")
  (data (;101;) (i32.const 4380) ",")
  (data (;102;) (i32.const 4392) "\01\00\00\00\10\00\00\00i\00m\00a\00g\00e\00U\00r\00l")
  (data (;103;) (i32.const 4428) "\5c")
  (data (;104;) (i32.const 4440) "\01\00\00\00>\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;105;) (i32.const 4524) "l")
  (data (;106;) (i32.const 4536) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;107;) (i32.const 4636) "<")
  (data (;108;) (i32.const 4648) "\01\00\00\00&\00\00\00g\00e\00n\00e\00r\00a\00t\00e\00d\00/\00s\00c\00h\00e\00m\00a\00.\00t\00s")
  (data (;109;) (i32.const 4700) "\ac")
  (data (;110;) (i32.const 4712) "\01\00\00\00\90\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;111;) (i32.const 4876) ",")
  (data (;112;) (i32.const 4888) "\01\00\00\00\1a\00\00\00'\00 \00i\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 ")
  (data (;113;) (i32.const 4924) ",")
  (data (;114;) (i32.const 4936) " \00\00\00\14\00\00\00p\12\00\00\00\00\00\00 \13\00\00\00\00\00\00P\0d")
  (data (;115;) (i32.const 4972) "<")
  (data (;116;) (i32.const 4984) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;117;) (i32.const 5036) "l")
  (data (;118;) (i32.const 5048) "\01\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00v\00a\00l\00u\00e\00.\00t\00s")
  (data (;119;) (i32.const 5148) "<")
  (data (;120;) (i32.const 5160) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\003\002\00.")
  (data (;121;) (i32.const 5212) "|")
  (data (;122;) (i32.const 5224) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
  (data (;123;) (i32.const 5340) "<")
  (data (;124;) (i32.const 5352) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
  (data (;125;) (i32.const 5404) "\1c")
  (data (;126;) (i32.const 5416) "\01\00\00\00\02\00\00\000")
  (data (;127;) (i32.const 5436) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
  (data (;128;) (i32.const 5836) "\1c\04")
  (data (;129;) (i32.const 5848) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
  (data (;130;) (i32.const 6892) "\5c")
  (data (;131;) (i32.const 6904) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
  (data (;132;) (i32.const 6988) "L")
  (data (;133;) (i32.const 7000) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00.")
  (data (;134;) (i32.const 7068) "L")
  (data (;135;) (i32.const 7080) "\01\00\00\00.\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;136;) (i32.const 7148) "\1c")
  (data (;137;) (i32.const 7160) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
  (data (;138;) (i32.const 7180) "\1c")
  (data (;139;) (i32.const 7192) "\01\00\00\00\0a\00\00\00f\00a\00l\00s\00e")
  (data (;140;) (i32.const 7212) "<")
  (data (;141;) (i32.const 7224) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00.")
  (data (;142;) (i32.const 7276) "\1c")
  (data (;143;) (i32.const 7288) "\01\00\00\00\02\00\00\00[")
  (data (;144;) (i32.const 7308) "\1c")
  (data (;145;) (i32.const 7320) "#\00\00\00\08\00\00\00\02")
  (data (;146;) (i32.const 7340) "\1c")
  (data (;147;) (i32.const 7352) "\01\00\00\00\04\00\00\00,\00 ")
  (data (;148;) (i32.const 7372) "\1c")
  (data (;149;) (i32.const 7384) "\01\00\00\00\02\00\00\00]")
  (data (;150;) (i32.const 7404) "L")
  (data (;151;) (i32.const 7416) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00y\00t\00e\00 \00a\00r\00r\00a\00y\00.")
  (data (;152;) (i32.const 7484) "<")
  (data (;153;) (i32.const 7496) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00I\00n\00t\00.")
  (data (;154;) (i32.const 7548) "<")
  (data (;155;) (i32.const 7560) "\01\00\00\00*\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00d\00a\00t\00a\00 \00(\00k\00i\00n\00d\00 \00=\00 ")
  (data (;156;) (i32.const 7612) "\1c")
  (data (;157;) (i32.const 7624) "\01\00\00\00\02\00\00\00)")
  (data (;158;) (i32.const 7644) "\1c")
  (data (;159;) (i32.const 7656) " \00\00\00\0c\00\00\00\90\1d\00\00\00\00\00\00\d0\1d")
  (data (;160;) (i32.const 7676) ",")
  (data (;161;) (i32.const 7688) "\01\00\00\00\12\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00(")
  (data (;162;) (i32.const 7724) "\1c")
  (data (;163;) (i32.const 7736) " \00\00\00\0c\00\00\00\10\1e\00\00\00\00\00\00\d0\1d")
  (data (;164;) (i32.const 7756) ",")
  (data (;165;) (i32.const 7768) "\01\00\00\00\16\00\00\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n")
  (data (;166;) (i32.const 7804) "\1c")
  (data (;167;) (i32.const 7816) "\01\00\00\00\0a\00\00\00o\00w\00n\00e\00r")
  (data (;168;) (i32.const 7836) "\5c")
  (data (;169;) (i32.const 7848) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;170;) (i32.const 7932) "\5c")
  (data (;171;) (i32.const 7944) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;172;) (i32.const 8028) "l")
  (data (;173;) (i32.const 8040) "\01\00\00\00R\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00G\00r\00a\00v\00a\00t\00a\00r\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;174;) (i32.const 8140) "\9c")
  (data (;175;) (i32.const 8152) "\01\00\00\00\8a\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00G\00r\00a\00v\00a\00t\00a\00r\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;176;) (i32.const 8300) ",")
  (data (;177;) (i32.const 8312) " \00\00\00\14\00\00\00\e0\1f\00\00\00\00\00\00 \13\00\00\00\00\00\00P\0d")
  (data (;178;) (i32.const 8348) ",")
  (data (;179;) (i32.const 8360) "\01\00\00\00\10\00\00\00G\00r\00a\00v\00a\00t\00a\00r")
  (data (;180;) (i32.const 8396) "L")
  (data (;181;) (i32.const 8408) "\01\00\00\008\00\00\00J\00S\00O\00N\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00.")
  (data (;182;) (i32.const 8476) "L")
  (data (;183;) (i32.const 8488) "\01\00\00\006\00\00\00J\00S\00O\00N\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;184;) (i32.const 8556) "<")
  (data (;185;) (i32.const 8572) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;186;) (i32.const 8620) ",")
  (data (;187;) (i32.const 8632) "\03\00\00\00\10\00\00\00\80!\00\00\80!\00\00 \00\00\00\08"))
