/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/
module corefoundation.uuid;
import corefoundation;

extern(C) @nogc nothrow:

/**
    A reference to a CFUUID object.
*/
alias CFUUIDRef = CFTypeRef;

/**
    128-bit storage.
*/
alias CFUUIDBytes = ubyte[16];

/**
    Creates a Universally Unique Identifier (UUID) object.
*/
extern CFUUIDRef CFUUIDCreate(CFAllocatorRef alloc);

/**
    Creates a CFUUID object for a specified string.
*/
extern CFUUIDRef CFUUIDCreateFromString(CFAllocatorRef alloc, CFStringRef uuidStr);

/**
    Creates a CFUUID object from raw UUID bytes.
*/
extern CFUUIDRef CFUUIDCreateFromUUIDBytes(CFAllocatorRef alloc, CFUUIDBytes bytes);

/**
    Returns the string representation of a specified CFUUID object.
*/
extern CFStringRef CFUUIDCreateString(CFAllocatorRef alloc, CFUUIDRef uuid);

/**
    Returns the value of a UUID object as raw bytes.
*/
extern CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid);

/**
    Returns the type identifier for all CFUUID objects.
*/
extern CFTypeID CFUUIDGetTypeID();
