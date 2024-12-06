/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/

/**
    Core Foundation Base APIs
*/
module corefoundation.base;
import corefoundation.allocator;
import corefoundation.string;
import corefoundation.types;

extern(C) @nogc nothrow:

/**
    The current version of the Core Foundation framework
*/
__gshared double kCFCoreFoundationVersionNumber;

enum kCFCoreFoundationVersionNumber10_0     = 196.4;
enum kCFCoreFoundationVersionNumber10_0_3   = 196.5;
enum kCFCoreFoundationVersionNumber10_1     = 226.0;
enum kCFCoreFoundationVersionNumber10_1_2   = 227.2;
enum kCFCoreFoundationVersionNumber10_1_4   = 227.3;
enum kCFCoreFoundationVersionNumber10_2     = 263.0;

/**
    Callback function that compares two values. 
    You provide a pointer to this callback in certain Core Foundation sorting functions.
*/
alias CFComparatorFunction = extern(C) CFComparisonResult function(const(void)* val1, const(void)* val2, void* context);

/**
    Gets the Type ID of the CoreFundation Null type.
*/
extern CFTypeID CFNullGetTypeID();

/**
    Releases a Core Foundation object.
*/
extern void CFRelease(CFTypeRef);

/**
    Retains a Core Foundation object.
*/
extern void CFRetain(CFTypeRef);

/**
    Makes a newly-allocated Core Foundation object eligible for garbage collection.
*/
extern CFTypeRef CFMakeCollectable(CFTypeRef);

/**
    Returns the reference count of a Core Foundation object.
*/
extern CFIndex CFGetRetainCount(CFTypeRef);

/**
    Returns the allocator used to allocate a Core Foundation object.
*/
extern CFAllocatorRef CFGetAllocator(CFTypeRef);

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
