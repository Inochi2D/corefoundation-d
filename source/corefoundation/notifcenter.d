/*
    Copyright © 2024, Inochi2D Project
    Distributed under the 2-Clause BSD License, see LICENSE file.
    
    Authors: Luna Nielsen
*/
module corefoundation.notifcenter;
import corefoundation;

extern(C) @nogc nothrow:

/**
    A CFNotificationCenter object provides the means by which you can send a message, or notification, 
    to any number of recipients, or observers, without having to know anything about the recipients.
*/
alias CFNotificationCenterRef = CFTypeRef;