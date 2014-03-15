//
//  NBGallery.m
//
//  Created by Josh Justice on 11/25/13.
//  Copyright (c) 2013 NeedBee. All rights reserved.
//

#import "NBGallery.h"

@implementation NBGallery

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.pagingEnabled = YES;
        self.delegate = self; // handling UIScrollViewDelegate events
    }
    return self;
}

- (void)setDisplayedIndex:(int)i
{
    _displayedIndex = i;
    
    float offset = self.bounds.size.width * i;
    [self setContentOffset:CGPointMake(offset,0.0) animated:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if( nil != _galleryDelegate )
    {
        [_galleryDelegate galleryDidScroll:self];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if( nil != _galleryDelegate )
    {
        int whichImage = lroundf(self.contentOffset.x / self.bounds.size.width);
        [_galleryDelegate gallery:self
                  scrolledToIndex:whichImage];
    }
}

@end
