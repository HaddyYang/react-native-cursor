#import "RNCursor.h"
#import <React/RCTUtils.h>

@implementation RNCursor

#if TARGET_OS_OSX
- (void)resetCursorRects
{
  NSCursor *cursor;
  cursor = [NSCursor pointingHandCursor];
  /*switch (self.cursor) {
    case RCTCursorArrow:
      cursor = [NSCursor arrowCursor];
      break;
    case RCTCursorClosedHand:
      cursor = [NSCursor closedHandCursor];
      break;
    case RCTCursorContextualMenu:
      cursor = [NSCursor contextualMenuCursor];
      break;
    case RCTCursorCrosshair:
      cursor = [NSCursor crosshairCursor];
      break;
    case RCTCursorDisappearingItem:
      cursor = [NSCursor disappearingItemCursor];
      break;
    case RCTCursorDragCopy:
      cursor = [NSCursor dragCopyCursor];
      break;
    case RCTCursorDragLink:
      cursor = [NSCursor dragLinkCursor];
      break;
    case RCTCursorIBeam:
      cursor = [NSCursor IBeamCursor];
      break;
    case RCTCursorIBeamCursorForVerticalLayout:
      cursor = [NSCursor IBeamCursorForVerticalLayout];
      break;
    case RCTCursorOpenHand:
      cursor = [NSCursor openHandCursor];
      break;
    case RCTCursorOperationNotAllowed:
      cursor = [NSCursor operationNotAllowedCursor];
      break;
    case RCTCursorPointingHand:
      cursor = [NSCursor pointingHandCursor];
      break;
    case RCTCursorResizeDown:
      cursor = [NSCursor resizeDownCursor];
      break;
    case RCTCursorResizeLeft:
      cursor = [NSCursor resizeLeftCursor];
      break;
    case RCTCursorResizeLeftRight:
      cursor = [NSCursor resizeLeftRightCursor];
      break;
    case RCTCursorResizeRight:
      cursor = [NSCursor resizeRightCursor];
      break;
    case RCTCursorResizeUp:
      cursor = [NSCursor resizeUpCursor];
      break;
    case RCTCursorResizeUpDown:
      cursor = [NSCursor resizeUpDownCursor];
      break;
  }*/

  [self discardCursorRects];

  if (cursor) {
    [self addCursorRect:self.bounds cursor:cursor];
  }
}
# end if

RCT_EXPORT_MODULE()

RCT_REMAP_METHOD(setCursor) {
  [[NSCursor pointingHandCursor] push];
}

RCT_REMAP_METHOD(resetCursor) {
  [NSCursor pop];
}

/*RCT_REMAP_METHOD(setCursor,
        setCursorWithType:
        (NSString *) type
) {

//    [[NSCursor valueForKey:[type stringByAppendingString:@"Cursor"]] performSelector:@selector(set)];
    //NSCursor *cursor;
    //cursor = [NSCursor pointingHandCursor];
    //[self discardCursorRects];
    //[self addCursorRect:self.bounds cursor:cursor];

}*.

@end
