//
//  NBGallery.h
//
//  Created by Josh Justice on 11/25/13.
//  Copyright (c) 2013 NeedBee. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol NBGalleryDelegate;

@interface NBGallery : UIScrollView
    <UIScrollViewDelegate>

@property (nonatomic,assign) IBOutlet id<NBGalleryDelegate> galleryDelegate;
@property (nonatomic,assign) int displayedIndex;

@end

@protocol NBGalleryDelegate

-(void)galleryDidScroll:(NBGallery*)gallery;

-(void)gallery:(NBGallery*)gallery
    scrolledToIndex:(int)i;

@end
