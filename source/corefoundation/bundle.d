/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/

/**
    CFBundle
*/
module corefoundation.bundle;
import corefoundation;

extern(C) @nogc nothrow:

/**
    A reference to a CFBundle object.
*/
alias CFBundleRef = CFTypeRef;

/**
    Type that identifies a distinct reference number for a resource map.
*/
alias CFBundleRefNum = int;

/**
    Creates a CFBundle object.
*/
extern CFBundleRef CFBundleCreate(CFAllocatorRef allocator, CFURLRef bundleURL);

/**
    Searches a directory and constructs an array of CFBundle objects from all 
    valid bundles in the specified directory.
*/
extern CFArrayRef CFBundleCreateBundlesFromDirectory(CFAllocatorRef allocator, CFURLRef directoryURL, CFStringRef bundleType);

/**
    Returns an array containing all of the bundles currently open in the application.
*/
extern CFArrayRef CFBundleGetAllBundles();

/**
    Locate a bundle given its program-defined identifier.
*/
extern CFBundleRef CFBundleGetBundleWithIdentifier(CFStringRef bundleID);

/**
    Returns an application’s main bundle.
*/
extern CFBundleRef CFBundleGetMainBundle();

/**
    Obtains information about the load status for a bundle’s main executable.
*/
extern bool CFBundleIsExecutableLoaded(CFBundleRef bundle);

/**
    Returns a Boolean value that indicates whether a given bundle is loaded or 
    appears to be loadable.
*/
extern bool CFBundlePreflightExecutable(CFBundleRef bundle, CFErrorRef *error);

/**
    Loads a bundle’s main executable code into memory and dynamically links it 
    into the running application.
*/
extern bool CFBundleLoadExecutable(CFBundleRef bundle);

/**
    Returns a Boolean value that indicates whether a given bundle is loaded, 
    attempting to load it if necessary.
*/
extern bool CFBundleLoadExecutableAndReturnError(CFBundleRef bundle, CFErrorRef *error);

/**
    Unloads the main executable for the specified bundle.
*/
extern void CFBundleUnloadExecutable(CFBundleRef bundle);

/**
    Returns the type identifier for the CFBundle opaque type.
*/
extern CFTypeID CFBundleGetTypeID();
