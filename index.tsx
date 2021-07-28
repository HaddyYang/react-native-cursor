import React from "react";
import { View, NativeModules } from 'react-native';

const { RNCursor } = NativeModules;
// const Cursor = NativeModules.Cursor;


type CURSOR_TYPES =
  'arrow' |
  'IBeam' |
  'pointingHand' |
  'closedHand' |
  'openHand' |
  'resizeLeft' |
  'resizeRight' |
  'resizeLeftRight' |
  'resizeUp' |
  'resizeDown' |
  'resizeUpDown' |
  'crosshair' |
  'disappearingItem' |
  'operationNotAllowed' |
  'dragLink' |
  'dragCopy' |
  'contextualMenu' |
  'IBeamCursorForVertical';

export function setCursor(type: CURSOR_TYPES) {
  RNCursor.setCursor(type);
}

export class CursorView extends React.PureComponent {
  constructor(props) {
    super(props);
    this.state = {
      cursorType: props.cursorType,
    };
  }

  onMouseEnter(e) {
    RNCursor.setCursor();
    //setCursor(this.state.cursorType);
  }

  onMouseLeave(e) {
    //setCursor('arrow');
    RNCursor.resetCursor();
  }

  render() {
    return <View
      style={this.props.style || {}}
      onMouseEnter={this.onMouseEnter} 
      onMouseLeave={this.onMouseLeave}>
      {this.props.children}
    </View>;
  }
}
