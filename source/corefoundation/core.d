/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/

/**
    Core Foundation Core APIs
*/
module corefoundation.core;
import corefoundation.allocator;
import corefoundation.string;
import corefoundation.types;

/**
    An untyped "generic" reference to any Core Foundation object.
*/
struct CFTypeRef {
nothrow @nogc:
    void* isa;
    alias isa this;
}

extern(C) @nogc nothrow:

/**
    Returns the allocator used to allocate a Core Foundation object.
*/
extern CFAllocatorRef CFGetAllocator(CFTypeRef);

/**
    Returns the reference count of a Core Foundation object.
*/
extern CFIndex CFGetRetainCount(CFTypeRef);

/**
    Makes a newly-allocated Core Foundation object eligible for garbage collection.
*/
extern CFTypeRef CFMakeCollectable(CFTypeRef);

/**
    Retains a Core Foundation object.
*/
extern void CFRetain(CFTypeRef);

/**
    Releases a Core Foundation object.
*/
extern void CFRelease(CFTypeRef);

/**
    Releases a Core Foundation object.
*/
extern CFTypeRef CFAutorelease(CFTypeRef arg);

/**
    Determines whether two Core Foundation objects are considered equal.
*/
extern bool CFEqual(CFTypeRef, CFTypeRef);

/**
    Determines whether two Core Foundation objects are considered equal.
*/
extern CFHashCode CFHash(CFTypeRef, CFTypeRef);

/**
    Returns a textual description of a Core Foundation object.
*/
extern CFStringRef CFCopyDescription(CFTypeRef);

/**
    Returns a textual description of a Core Foundation object.
*/
extern CFStringRef CFCopyTypeIDDescription(CFTypeID);

/**
    Returns the unique identifier of an opaque type to which a Core Foundation object belongs.
*/
extern CFTypeID CFGetTypeID(CFTypeRef);

/**
    Prints a description of a Core Foundation object to stderr.
*/
extern void CFShow(CFTypeRef);
