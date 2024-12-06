/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/

/**
    Bindings to CoreFoundation's C API.
*/
module corefoundation;

public import corefoundation.allocator;
public import corefoundation.array;
public import corefoundation.base;
public import corefoundation.byteorder;
public import corefoundation.charset;
public import corefoundation.data;
public import corefoundation.dictionary;
public import corefoundation.locale;
public import corefoundation.cfnull;
public import corefoundation.preferences;
public import corefoundation.string;
public import corefoundation.types;
public import corefoundation.plugin;
public import corefoundation.uuid;
public import corefoundation.url;

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