#include "Python/Headers/Python.h"

#define kBundlePath @"/Library/MobileSubstrate/DynamicLibraries/com.yourcompany.pythonfortheos.bundle"

%ctor{
  //NSString *path = NSBundle.mainBundle.resourcePath;
  //NSBundle *bundle = [[NSBundle alloc] initWithPath:kBundlePath];

  //NSString *imagePath = [bundle pathForResource:@"/Resources/Python/Resources" ofType:@""];
  NSString *pyhome = [NSString stringWithFormat:@"%@%@%@",@"PYTHONHOME",kBundlePath,@"/Resources/Python/Resources"];
  putenv((char *)[pyhome UTF8String]);
  Py_Initialize();
  PyRun_SimpleStringFlags("import sys\nprint(sys.version_info)", nil);
}
