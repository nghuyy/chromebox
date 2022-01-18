#import "ChromeboxPlugin.h"
#if __has_include(<chromebox/chromebox-Swift.h>)
#import <chromebox/chromebox-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "chromebox-Swift.h"
#endif

@implementation ChromeboxPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftChromeboxPlugin registerWithRegistrar:registrar];
}
@end
