/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/

/**
    CFArray
*/
module corefoundation.cfnull;
import corefoundation;

extern(C) @nogc nothrow:

alias CFNullRef = CFTypeRef;

/**
    Returns the type identifier for the CFNull opaque type.
*/
extern CFTypeID CFNullGetTypeID();

/**
    A CFNullRef singleton instance.
*/
extern const __gshared CFNullRef kCFNull;