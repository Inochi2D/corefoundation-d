/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/

/**
    Core Foundation Plugin API
*/
module corefoundation.plugin;
import corefoundation;

extern(C) @nogc nothrow:

/**
    CFPlugIn provides a standard architecture for application extensions.
*/
alias CFPlugInRef = CFTypeRef;

/**
    A callback which provides a plug-in the opportunity to dynamically 
    register its types with a host.
*/
alias CFPlugInDynamicRegisterFunction = void function(CFPlugInRef plugIn);

/**
    Callback function that a plug-in author must implement to create a plug-in instance.
*/
alias CFPlugInFactoryFunction = void* function(CFAllocatorRef allocator, CFUUIDRef typeUUID);

/**
    Callback function that is called, if present, 
    just before a plug-in's code is unloaded. 
*/
alias CFPlugInUnloadFunction = void function(CFPlugInRef plugIn);

/**
    Creates a CFPlugIn given its URL.
*/
extern CFPlugInRef CFPlugInCreate(CFAllocatorRef allocator, CFURLRef plugInURL);

/**
    Creates a CFPlugIn instance of a given type using a given factory.
*/
extern void* CFPlugInInstanceCreate(CFAllocatorRef allocator, CFUUIDRef factoryUUID, CFUUIDRef typeUUID);

/**
    Registers a factory function and its UUID with a CFPlugIn object.
*/
extern bool CFPlugInRegisterFactoryFunction(CFUUIDRef factoryUUID, CFPlugInFactoryFunction func);

/**
    Registers a factory function with a CFPlugIn object using the function's name instead of its UUID.
*/
extern bool CFPlugInRegisterFactoryFunctionByName(CFUUIDRef factoryUUID, CFPlugInRef plugIn, CFStringRef functionName);

/**
    Registers a type and its corresponding factory function with a CFPlugIn object.
*/
extern bool CFPlugInRegisterPlugInType(CFUUIDRef factoryUUID, CFUUIDRef typeUUID);

/**
    Removes the given function from a plug-in’s list of registered factory functions.
*/
extern bool CFPlugInUnregisterFactory(CFUUIDRef factoryUUID);

/**
    Removes the given type from a plug-in’s list of registered types.
*/
extern bool CFPlugInUnregisterPlugInType(CFUUIDRef factoryUUID, CFUUIDRef typeUUID);

/**
    Registers a new instance of a type with CFPlugIn.
*/
extern void CFPlugInAddInstanceForFactory(CFUUIDRef factoryID);

/**
    Searches all registered plug-ins for factory functions capable of 
    creating an instance of the given type.
*/
extern CFArrayRef CFPlugInFindFactoriesForPlugInType(CFUUIDRef typeUUID);

/**
    Searches the given plug-in for factory functions capable of creating an 
    instance of the given type.
*/
extern CFArrayRef CFPlugInFindFactoriesForPlugInTypeInPlugIn(CFUUIDRef typeUUID, CFPlugInRef plugIn);

/**
    Returns a plug-in's bundle.
*/
extern CFBundleRef CFPlugInGetBundle(CFPlugInRef plugIn);

/**
    Returns the type identifier for the CFPlugIn opaque type.
*/
extern CFTypeID CFPlugInGetTypeID();

/**
    Determines whether or not a plug-in is loaded on demand.
*/
extern bool CFPlugInIsLoadOnDemand(CFPlugInRef plugIn);

/**
    Unregisters an instance of a type with CFPlugIn.
*/
extern void CFPlugInRemoveInstanceForFactory(CFUUIDRef factoryID);

/**
    Enables or disables load on demand for plug-ins that do dynamic registration 
    (only when a client requests an instance of a supported type).
*/
extern void CFPlugInSetLoadOnDemand(CFPlugInRef plugIn, Boolean flag);

/**
    Used to statically register the factories that can create each supported type.
*/
extern __gshared const CFStringRef kCFPlugInDynamicRegistrationKey;

/**
    Used to specify a plug-in’s registration function.
*/
extern __gshared const CFStringRef kCFPlugInDynamicRegisterFunctionKey;

/**
    Used to specify a plug-in’s unload function.
*/
extern __gshared const CFStringRef kCFPlugInUnloadFunctionKey;

/**
    Used to statically register factory functions.
*/
extern __gshared const CFStringRef kCFPlugInFactoriesKey;

/**
    Used to statically register the factories that can create each supported type.
*/
extern __gshared const CFStringRef kCFPlugInTypesKey;
