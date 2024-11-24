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
    A CFNullRef singleton instance.
*/
extern const __gshared CFNullRef kCFNull;