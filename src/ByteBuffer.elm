module ZElmQ.ByteBuffer exposing (..)

{-| Elm bindings for ByteBuffer

# ByteBuffer Object
@docs ByteBuffer

# API Methods
@docs make, wrap, limit, littleEndian, markedOffset, noAssert, offset, capacity, clear, flip, order, remaining, reset

# Readers
@docs readByte, readString, readDouble, readFloat, readLong, readInt, readShort

# Writers
@docs writeByte, writeString, writeDouble, writeFloat, writeLong, writeInt, writeShort
-}

import Task exposing (Task)
import Native.BB

{-| ByteBuffer object type -}
type ByteBuffer = ByteBuffer


-- API METHODS

{-| Create empty ByteBuffer -}
make: Task x ByteBuffer
make = Native.BB.make

{-| See https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferwrapbuffer-encoding-littleendian-noassert -}
wrap: buffer -> encoding -> littleEndian -> noAssert -> ByteBuffer
wrap = Native.BB.wrap

{-| See https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferlimit -}
limit: ByteBuffer -> Int
limit = Native.BB.limit

{-| See https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferlittleendian-}
littleEndian: ByteBuffer -> Bool
littleEndian = Native.BB.littleEndian

{-| See https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebuffermarkedoffset -}
markedOffset: ByteBuffer -> Int
markedOffset = Native.BB.markedOffset

{-| See https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebuffernoassert -}
noAssert: ByteBuffer -> Bool
noAssert = Native.BB.noAssert

{-| See https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferoffset -}
offset: ByteBuffer -> Int
offset = Native.BB.offset

{-| See https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebuffercapacity -}
capacity: ByteBuffer -> Int
capacity = Native.BB.capacity

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferclear -}
clear: ByteBuffer -> ByteBuffer
clear = Native.BB.clear

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferflip -}
flip: ByteBuffer -> ByteBuffer
flip = Native.BB.flip

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferorderlittleendian -}
order: ByteBuffer -> Bool -> ByteBuffer
order = Native.BB.order

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferremaining -}
remaining: ByteBuffer -> Int
remaining = Native.BB.remaining

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferreset -}
reset: ByteBuffer -> ByteBuffer
reset = Native.BB.reset


-- READERS

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferreadbyteoffset -}
readByte: ByteBuffer -> Int
readByte = Native.BB.readByte

{-| Custom string reader; reads an Int for numbytes then reads those bytes into array
    to create the string.
-}
readString: ByteBuffer -> String
readString = Native.BB.readString

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferreaddoubleoffset -}
readDouble: ByteBuffer -> Float
readDouble = Native.BB.readDouble

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferreadfloatoffset -}
readFloat: ByteBuffer -> Float
readFloat = Native.BB.readFloat

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferreadintoffset -}
readInt: ByteBuffer -> Int
readInt = Native.BB.readInt

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferreadlongoffset -}
readLong: ByteBuffer -> Int
readLong = Native.BB.readLong

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferreadshortoffset -}
readShort: ByteBuffer -> Int
readShort = Native.BB.readShort

-- WRITERS

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferwritebytevalue-offset -}
writeByte: Int -> ByteBuffer -> ByteBuffer
writeByte = Native.BB.writeByte

{-| Custom string writer -}
writeString: String -> ByteBuffer -> ByteBuffer
writeString = Native.BB.writeString

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferwritedoublevalue-offset -}
writeDouble: Float -> ByteBuffer ->  ByteBuffer
writeDouble = Native.BB.writeDouble

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferwritefloatvalue-offset -}
writeFloat: Float -> ByteBuffer -> ByteBuffer
writeFloat = Native.BB.writeFloat

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferwriteintvalue-offset -}
writeInt: Int -> ByteBuffer -> ByteBuffer
writeInt = Native.BB.writeInt

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferwritelongvalue-offset -}
writeLong: Int -> ByteBuffer -> ByteBuffer
writeLong = Native.BB.writeLong

{-| https://github.com/dcodeIO/bytebuffer.js/wiki/API#bytebufferwriteshortvalue-offset -}
writeShort: Int -> ByteBuffer -> ByteBuffer
writeShort = Native.BB.writeShort
