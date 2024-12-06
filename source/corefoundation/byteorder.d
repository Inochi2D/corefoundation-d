/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/
module corefoundation.byteorder;
import corefoundation.types;

extern(C) @nogc nothrow:

/**
    Flags that identify byte order.
*/
enum CFByteOrder : CFIndex {
    
    /**
        Byte order is unknown
    */
    Unknown,
    
    /**
        Byte order is little-endian
    */
    LittleEndian,
    
    /**
        Byte order is big-endian
    */
    BigEndian
}

alias CFSwappedFloat32 = uint;
alias CFSwappedFloat64 = ulong;

/**
    Returns the byte order of the current computer.
*/
extern CFByteOrder CFByteOrderGetCurrent();

/**
    Swaps the bytes of a 16-bit integer.
*/
extern ushort CFSwapInt16(ushort arg);

/**
    Swaps the bytes of a 32-bit integer.
*/
extern uint CFSwapInt32(uint arg);

/**
    Swaps the bytes of a 64-bit integer.
*/
extern ulong CFSwapInt64(ulong arg);

/**
    Converts a 16-bit integer from big-endian format to the host’s native byte order.
*/
extern ushort CFSwapInt16BigToHost(ushort arg);

/**
    Converts a 32-bit integer from big-endian format to the host’s native byte order.
*/
extern uint CFSwapInt32BigToHost(uint arg);

/**
    Converts a 64-bit integer from big-endian format to the host’s native byte order.
*/
extern ulong CFSwapInt64BigToHost(ulong arg);

/**
    Converts a 16-bit integer from the host’s native byte order to big-endian format.
*/
extern ushort CFSwapInt16HostToBig(ushort arg);

/**
    Converts a 32-bit integer from the host’s native byte order to big-endian format.
*/
extern uint CFSwapInt32HostToBig(uint arg);

/**
    Converts a 64-bit integer from the host’s native byte order to big-endian format.
*/
extern ulong CFSwapInt64HostToBig(ulong arg);

/**
    Converts a 16-bit integer from little-endian format to the host’s native byte order.
*/
extern ushort CFSwapInt16LittleToHost(ushort arg);

/**
    Converts a 32-bit integer from little-endian format to the host’s native byte order.
*/
extern uint CFSwapInt32LittleToHost(uint arg);

/**
    Converts a 64-bit integer from little-endian format to the host’s native byte order.
*/
extern ulong CFSwapInt64BLittleToHost(ulong arg);

/**
    Converts a 16-bit integer from the host’s native byte order to little-endian format.
*/
extern ushort CFSwapInt16HostToLittle(ushort arg);

/**
    Converts a 32-bit integer from the host’s native byte order to little-endian format.
*/
extern uint CFSwapInt32HostToLittle(uint arg);

/**
    Converts a 64-bit integer from the host’s native byte order to little-endian format.
*/
extern ulong CFSwapInt64HostToLittle(ulong arg);

/**
    Converts a 32-bit float from the host’s native byte order to a platform-independent format.
*/
extern CFSwappedFloat32 CFConvertFloat32HostToSwapped(float arg);

/**
    Converts a 32-bit float from a platform-independent format to the host’s native byte order.
*/
extern float CFConvertFloat32SwappedToHost(CFSwappedFloat32 arg);

/**
    Converts a 64-bit float from the host’s native byte order to a platform-independent format.
*/
extern CFSwappedFloat64 CFConvertFloat64HostToSwapped(double arg);

/**
    Converts a 64-bit float from a platform-independent format to the host’s native byte order.
*/
extern double CFConvertFloat64SwappedToHost(CFSwappedFloat64 arg);
