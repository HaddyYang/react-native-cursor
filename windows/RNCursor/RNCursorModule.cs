using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Cursor.RNCursor
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNCursorModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNCursorModule"/>.
        /// </summary>
        internal RNCursorModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNCursor";
            }
        }
    }
}
