#import "PhysicalDiagonalPlugin.h"
#import <physical_diagonal/physical_diagonal-Swift.h>

@implementation PhysicalDiagonalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPhysicalDiagonalPlugin registerWithRegistrar:registrar];
}
@end
