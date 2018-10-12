@interface CydiaLoadingViewController : UIViewController
@end

%hook CydiaLoadingViewController
-(void)loadView {
%orig;
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
%end


@interface HomeController : UIViewController
-(void)setURL:(id)URL;
-(void)reloadData;
@end

%hook HomeController
#define cyHomeKitURLiPad @"/Applications/Cydia.app/CydiaXIdark.html"
#define cyHomeKitURLiPhone @"/Applications/Cydia.app/CydiaXIdark.html"

-(id)init {
    self.view.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
    NSString* htmlString = [NSString stringWithContentsOfFile:cyHomeKitURLiPhone encoding:NSUTF8StringEncoding error:nil];
    [(UIWebView *)self.view loadHTMLString:htmlString baseURL:[NSURL URLWithString:cyHomeKitURLiPhone]];
    return self;
}
%end

%hook UITabBar
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}
%end

%hook UINavigationBar
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}
%end

@interface UISearchBarTextField : UIView
@end

%hook UISearchBarTextField
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}
%end

@interface UIStatusBarForegroundView : UIView
@end

%hook UIStatusBarForegroundView
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}
%end

%hook UITableView
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}
%end

@interface CyteTableViewCellContentView : UIView
@end

%hook CyteTableViewCellContentView
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}
%end

@interface SourceCell : UIView
@end

%hook SourceCell
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}
%end

%hook UITableViewCell
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.25 green:0.25 blue:0.25 alpha:1.0];
}
%end

@interface SourcesController : UIViewController
@end

%hook SourcesController
-(void)didMoveToSuperview {
  %orig;
  [UILabel.textColor = [UIColor whiteColor]];
}
%end

@interface _UITableViewHeaderFooterContentView : UIView
@end

%hook _UITableViewHeaderFooterContentView
-(void)didMoveToSuperview {
    %orig;
    self.backgroundColor = [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0];
}
%end

@interface _UIBarBackground : UIView
@end

%hook _UIBarBackground
-(void)layoutSubviews {
  %orig;
  self.hidden = YES;
}
%end
