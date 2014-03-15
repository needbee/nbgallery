//
//  NBImageGallery.m
//
//  Created by Josh Justice on 11/4/13.
//  Copyright (c) 2013 NeedBee. All rights reserved.
//

#import "NBImageGallery.h"

@interface NBImageGallery ()

@property (nonatomic,retain) NSMutableArray *imageViews;

@end

@implementation NBImageGallery

- (void)setImages:(NSArray *)images
{
    _images = images;
    
    // TODO: if ever change these, need to remove old views here
    UIImageView *imageView;
    CGRect frame;
    float w = self.bounds.size.width;
    float h = self.bounds.size.height;
    
    int i = 0;

    self.contentSize = CGSizeMake( w * images.count, h );

    _imageViews = [[NSMutableArray alloc] initWithCapacity:images.count];
    for( UIImage *image in images )
    {
        frame = CGRectMake(w*i, 0.0, w, h);
//        NSLog(@"adding image at frame %@", NSStringFromCGRect(frame));
        imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = image;
        
        [_imageViews addObject:imageView];
        [self addSubview:imageView];
        i++;
    }
}

@end
