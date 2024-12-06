/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/

/**
    Core Foundation Type Definitions
*/
module corefoundation.types;
import corefoundation.core;

/**
    A type for unique, constant integer values that identify particular Core Foundation opaque types.
*/
alias CFTypeID = uint;

/**
    CFOptionFlags
*/
alias CFOptionFlags = uint;

/**
    A type for hash codes returned by the CFHash function.
*/
alias CFHashCode = uint;

/**
    Priority values used for kAXPriorityKey
*/
alias CFIndex = int;

/**
    Type used to represent elapsed time in seconds.
*/
alias CFTimeInterval = double;

/**
    Type used to represent a specific point in time relative to the 
    absolute reference date of 1 Jan 2001 00:00:00 GMT.
*/
alias CFAbsoluteTime = CFTimeInterval;

/**
    Type to mean any instance of a property list type;
    currently, CFString, CFData, CFNumber, CFBoolean, CFDate,
    CFArray, and CFDictionary.
*/
alias CFPropertyListRef = CFTypeRef;

/**
    Callback function that compares two values. 
    You provide a pointer to this callback in certain Core Foundation sorting functions.
*/
alias CFComparatorFunction = extern(C) CFComparisonResult function(const(void)* val1, const(void)* val2, void* context);

/**
    Result of a comparison.
*/
enum CFComparisonResult : CFIndex {
    lessThan = -1,
    equalTo = 0,
    greaterThan = 1
}

/**
    Constant used by some functions to indicate failed searches.
*/
enum CFIndex kCFNotFound = -1;

/**
    A structure representing a range of sequential items in a container, 
    such as characters in a buffer or elements in a collection.
*/
struct CFRange {
    /**
        An integer representing the number of items in the range.
    
        For type compatibility with the rest of the system, [CFIndex.max] is the maximum value you should use for length.
    */
    CFIndex length;

    /**
        An integer representing the starting location of the range.
    
        For type compatibility with the rest of the system, [CFIndex.max] is the maximum value you should use for location.
    */
    CFIndex location;
}
