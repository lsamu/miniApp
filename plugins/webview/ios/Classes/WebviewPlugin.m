#import "WebviewPlugin.h"
#if __has_include(<webview/webview-Swift.h>)
#import <webview/webview-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "webview-Swift.h"
#endif

@implementation WebviewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWebviewPlugin registerWithRegistrar:registrar];
}
@end
