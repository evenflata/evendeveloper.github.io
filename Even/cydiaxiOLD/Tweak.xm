@interface CydiaLoadingViewController : UIViewController
@end

%hook CydiaLoadingViewController
-(void)loadView {
%orig;
UIView *xiView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
xiView.backgroundColor = [UIColor whiteColor];
UIImageView *logo =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Logo.png"]];
logo.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 60, [UIScreen mainScreen].bounds.size.height / 2 - 90, 120, 120);
logo.layer.masksToBounds = YES;
logo.layer.cornerRadius = 10;
UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height / 2 + 60, [UIScreen mainScreen].bounds.size.width, 40)];
label.text = @"Cydia";
label.textAlignment = NSTextAlignmentCenter;
[label setFont:[UIFont boldSystemFontOfSize:30]];\
[xiView addSubview:logo];
[xiView addSubview:label];
[[self view] addSubview:xiView];
}

-(BOOL)hidesNavigationBar {
    return YES;
}
%end

@interface HomeController : UIViewController
-(void)setURL:(id)URL;
-(void)reloadData;
@end

%hook HomeController
#define cyHomeKitURLiPad @"/Applications/Cydia.app/CydiaXI.html"
#define cyHomeKitURLiPhone @"/Applications/Cydia.app/CydiaXI.html"

-(id)init {
    self.view.backgroundColor = [UIColor whiteColor];
    NSString* htmlString = [NSString stringWithContentsOfFile:cyHomeKitURLiPhone encoding:NSUTF8StringEncoding error:nil];
    [(UIWebView *)self.view loadHTMLString:htmlString baseURL:[NSURL URLWithString:cyHomeKitURLiPhone]];
    return self;
}

-(BOOL)hidesNavigationBar {
    return YES;
}
%end

%hook UITabBar
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor whiteColor];
}
%end


%hook UITabBarItem
- (id)initWithTitle:(id)arg1 image:(id)arg2 selectedImage:(id)arg3 {
if([arg1 isEqual:@"Cydia"]) {
return %orig(@"Cydia",[UIImage imageNamed:@"Cydia.png"],[UIImage imageNamed:@"CydiaSEL.png"]);
} else if([arg1 isEqual:@"Sources"]) {
return %orig(@"Sources",[UIImage imageNamed:@"Sources.png"],[UIImage imageNamed:@"SourcesSEL.png"]);
} else if([arg1 isEqual:@"Changes"]) {
return %orig(@"Changes",[UIImage imageNamed:@"Changes.png"],[UIImage imageNamed:@"ChangesSEL.png"]);
} else if([arg1 isEqual:@"Installed"]) {
return %orig(@"Installed",[UIImage imageNamed:@"Installed.png"],[UIImage imageNamed:@"InstalledSEL.png"]);
} else if([arg1 isEqual:@"Search"]) {
return %orig(@"Search",[UIImage imageNamed:@"Search.png"],[UIImage imageNamed:@"SearchSEL.png"]);
} else {
return %orig;
}
}
%end

//This tweak is made by @Even_Dev