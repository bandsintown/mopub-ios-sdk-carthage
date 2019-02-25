//
//  MPWebView+Viewability.h
//
//  Copyright 2018-2019 Twitter, Inc.
//  Licensed under the MoPub SDK License Agreement
//  http://www.mopub.com/legal/sdk-license-agreement/
//

#import "MPWebView.h"

@interface MPWebView (Viewability)

// Returns the UIWebView or WKWebView instance attached to this MPWebView. If using WKWebView, this property will return
// the WKWebView instance regardless of if it's currently in the view hierarchy of this MPWebView. Exposed for the
// purpose of having a reliable way to attach viewability SDKs to a web view.
//
// Note: Please do not alter the hierarchy of this view (i.e., don't ever call it with `addSubview` or
// `removeFromSuperview`). Call those methods on the MPWebView instance instead.
@property (nonatomic, readonly) UIView *containedWebView;

@end
