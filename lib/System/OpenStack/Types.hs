module System.OpenStack.Types
(
    OpenStackConfig
) where

import Network.URI
import Data.Text

data OpenStackConfig = OpenStackConfig {
      _authURL :: URI
    , _username :: Text
    , _password :: Text
    , _tenant :: Text
}
