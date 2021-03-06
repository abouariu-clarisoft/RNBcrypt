using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Bcrypt.RNBcrypt
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNBcryptModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNBcryptModule"/>.
        /// </summary>
        internal RNBcryptModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNBcrypt";
            }
        }
    }
}
