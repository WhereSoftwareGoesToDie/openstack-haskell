module System.OpenStack.Types
(
    OpenStackConfig
) where

import           Data.ByteString (ByteString)
import qualified Data.ByteString as S
import           Data.Text
import           Data.UUID
import           Network.URI

-- | The base configuration needed to connect to an OpenStack API.
data OpenStackConfig = OpenStackConfig {
      _authURL  :: URI
    , _username :: Text
    , _password :: Text
    , _tenant   :: Text
}
