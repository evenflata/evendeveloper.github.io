#line 1 "Tweak.xm"
@interface CydiaLoadingViewController : UIViewController
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UISearchBarTextField; @class UITableViewCell; @class _UITableViewHeaderFooterContentView; @class SourceCell; @class SourcesController; @class CydiaLoadingViewController; @class UIStatusBarForegroundView; @class UITableView; @class UINavigationBar; @class HomeController; @class CyteTableViewCellContentView; @class _UIBarBackground; @class UITabBar; 
static void (*_logos_orig$_ungrouped$CydiaLoadingViewController$loadView)(_LOGOS_SELF_TYPE_NORMAL CydiaLoadingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CydiaLoadingViewController$loadView(_LOGOS_SELF_TYPE_NORMAL CydiaLoadingViewController* _LOGOS_SELF_CONST, SEL); static HomeController* (*_logos_orig$_ungrouped$HomeController$init)(_LOGOS_SELF_TYPE_INIT HomeController*, SEL) _LOGOS_RETURN_RETAINED; static HomeController* _logos_method$_ungrouped$HomeController$init(_LOGOS_SELF_TYPE_INIT HomeController*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$UITabBar$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UITabBar$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UINavigationBar$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UINavigationBar$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UISearchBarTextField$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextField* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UISearchBarTextField$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextField* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UIStatusBarForegroundView$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UIStatusBarForegroundView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITableView$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UITableView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CyteTableViewCellContentView$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL CyteTableViewCellContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CyteTableViewCellContentView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL CyteTableViewCellContentView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SourceCell$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL SourceCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SourceCell$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL SourceCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITableViewCell$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UITableViewCell$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SourcesController$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL SourcesController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SourcesController$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL SourcesController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$didMoveToSuperview)(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterContentView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UITableViewHeaderFooterContentView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterContentView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_UIBarBackground$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL); 

#line 4 "Tweak.xm"

static void _logos_method$_ungrouped$CydiaLoadingViewController$loadView(_LOGOS_SELF_TYPE_NORMAL CydiaLoadingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
_logos_orig$_ungrouped$CydiaLoadingViewController$loadView(self, _cmd);
UIView *xiView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
xiView.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
UIImageView *logo =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Logo.png"]];
logo.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 60, [UIScreen mainScreen].bounds.size.height / 2 - 90, 120, 120);
logo.layer.masksToBounds = YES;
logo.layer.cornerRadius = 10;
UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height / 2 + 60, [UIScreen mainScreen].bounds.size.width, 40)];
label.text = @"Cydia";
label.textAlignment = NSTextAlignmentCenter;
label.textColor = [UIColor whiteColor];
[label setFont:[UIFont boldSystemFontOfSize:30]];\
[xiView addSubview:logo];
[xiView addSubview:label];
[[self view] addSubview:xiView];
}



@interface HomeController : UIViewController
-(void)setURL:(id)URL;
-(void)reloadData;
@end


#define cyHomeKitURLiPad @"/Applications/Cydia.app/CydiaXIdark.html"
#define cyHomeKitURLiPhone @"/Applications/Cydia.app/CydiaXIdark.html"

static HomeController* _logos_method$_ungrouped$HomeController$init(_LOGOS_SELF_TYPE_INIT HomeController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    self.view.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
    NSString* htmlString = [NSString stringWithContentsOfFile:cyHomeKitURLiPhone encoding:NSUTF8StringEncoding error:nil];
    [(UIWebView *)self.view loadHTMLString:htmlString baseURL:[NSURL URLWithString:cyHomeKitURLiPhone]];
    return self;
}



static void _logos_method$_ungrouped$UITabBar$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UITabBar$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}



static void _logos_method$_ungrouped$UINavigationBar$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UINavigationBar$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}


@interface UISearchBarTextField : UIView
@end


static void _logos_method$_ungrouped$UISearchBarTextField$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextField* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UISearchBarTextField$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}


@interface UIStatusBarForegroundView : UIView
@end


static void _logos_method$_ungrouped$UIStatusBarForegroundView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UIStatusBarForegroundView$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}



static void _logos_method$_ungrouped$UITableView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UITableView$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}


@interface CyteTableViewCellContentView : UIView
@end


static void _logos_method$_ungrouped$CyteTableViewCellContentView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL CyteTableViewCellContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$CyteTableViewCellContentView$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}


@interface SourceCell : UIView
@end


static void _logos_method$_ungrouped$SourceCell$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL SourceCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$SourceCell$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}



static void _logos_method$_ungrouped$UITableViewCell$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UITableViewCell$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}


@interface SourcesController : UIViewController
@end


static void _logos_method$_ungrouped$SourcesController$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL SourcesController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$SourcesController$didMoveToSuperview(self, _cmd);
  [UILabel.textColor = [UIColor whiteColor]];
}


@interface _UITableViewHeaderFooterContentView : UIView
@end


static void _logos_method$_ungrouped$_UITableViewHeaderFooterContentView$didMoveToSuperview(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$didMoveToSuperview(self, _cmd);
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}


@interface _UIBarBackground : UIView
@end


static void _logos_method$_ungrouped$_UIBarBackground$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$_UIBarBackground$layoutSubviews(self, _cmd);
  self.hidden = YES;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CydiaLoadingViewController = objc_getClass("CydiaLoadingViewController"); MSHookMessageEx(_logos_class$_ungrouped$CydiaLoadingViewController, @selector(loadView), (IMP)&_logos_method$_ungrouped$CydiaLoadingViewController$loadView, (IMP*)&_logos_orig$_ungrouped$CydiaLoadingViewController$loadView);Class _logos_class$_ungrouped$HomeController = objc_getClass("HomeController"); MSHookMessageEx(_logos_class$_ungrouped$HomeController, @selector(init), (IMP)&_logos_method$_ungrouped$HomeController$init, (IMP*)&_logos_orig$_ungrouped$HomeController$init);Class _logos_class$_ungrouped$UITabBar = objc_getClass("UITabBar"); MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$UITabBar$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$UITabBar$didMoveToSuperview);Class _logos_class$_ungrouped$UINavigationBar = objc_getClass("UINavigationBar"); MSHookMessageEx(_logos_class$_ungrouped$UINavigationBar, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$UINavigationBar$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$UINavigationBar$didMoveToSuperview);Class _logos_class$_ungrouped$UISearchBarTextField = objc_getClass("UISearchBarTextField"); MSHookMessageEx(_logos_class$_ungrouped$UISearchBarTextField, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$UISearchBarTextField$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$UISearchBarTextField$didMoveToSuperview);Class _logos_class$_ungrouped$UIStatusBarForegroundView = objc_getClass("UIStatusBarForegroundView"); MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundView, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundView$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundView$didMoveToSuperview);Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$UITableView$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$UITableView$didMoveToSuperview);Class _logos_class$_ungrouped$CyteTableViewCellContentView = objc_getClass("CyteTableViewCellContentView"); MSHookMessageEx(_logos_class$_ungrouped$CyteTableViewCellContentView, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$CyteTableViewCellContentView$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$CyteTableViewCellContentView$didMoveToSuperview);Class _logos_class$_ungrouped$SourceCell = objc_getClass("SourceCell"); MSHookMessageEx(_logos_class$_ungrouped$SourceCell, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$SourceCell$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$SourceCell$didMoveToSuperview);Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$UITableViewCell$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$didMoveToSuperview);Class _logos_class$_ungrouped$SourcesController = objc_getClass("SourcesController"); MSHookMessageEx(_logos_class$_ungrouped$SourcesController, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$SourcesController$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$SourcesController$didMoveToSuperview);Class _logos_class$_ungrouped$_UITableViewHeaderFooterContentView = objc_getClass("_UITableViewHeaderFooterContentView"); MSHookMessageEx(_logos_class$_ungrouped$_UITableViewHeaderFooterContentView, @selector(didMoveToSuperview), (IMP)&_logos_method$_ungrouped$_UITableViewHeaderFooterContentView$didMoveToSuperview, (IMP*)&_logos_orig$_ungrouped$_UITableViewHeaderFooterContentView$didMoveToSuperview);Class _logos_class$_ungrouped$_UIBarBackground = objc_getClass("_UIBarBackground"); MSHookMessageEx(_logos_class$_ungrouped$_UIBarBackground, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIBarBackground$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews);} }
#line 139 "Tweak.xm"
