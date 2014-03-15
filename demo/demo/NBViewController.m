//
//  NBViewController.m
//  demo
//
//  Created by Josh Justice on 3/15/14.
//  Copyright (c) 2014 NeedBee. All rights reserved.
//

#import "NBViewController.h"
#import "NBImageGallery.h"

@interface NBViewController ()

@property (nonatomic,retain) IBOutlet NBImageGallery *gallery;
@property (nonatomic,retain) IBOutlet UILabel *status;

-(IBAction)tappedLeftButton;
-(IBAction)tappedRightButton;

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *imageNames = @[@"lime1.png", @"lime2.jpg"];
    NSMutableArray *images = [[NSMutableArray alloc] initWithCapacity:imageNames.count];
    for( NSString *imageName in imageNames )
    {
        [images addObject:[UIImage imageNamed:imageName]];
    }
    _gallery.images = images; // lays them out as well
}

-(IBAction)tappedLeftButton
{
    _gallery.displayedIndex--;
}

-(IBAction)tappedRightButton
{
    _gallery.displayedIndex++;
}

#pragma mark - NBGalleryDelegate methods

-(void)galleryDidScroll:(NBGallery*)gallery
{
    _status.text = @"Scrolling…";
}

-(void)gallery:(NBGallery*)gallery
scrolledToIndex:(int)i
{
    _status.text = [NSString stringWithFormat:@"Scrolled to %d", i];
}

@end
