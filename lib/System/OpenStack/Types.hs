module System.OpenStack.Types
(
    OpenStackConfig
) where

import           Data.Text
import           Network.URI

data OpenStackConfig = OpenStackConfig {
      _authURL  :: URI
    , _username :: Text
    , _password :: Text
    , _tenant   :: Text
}
