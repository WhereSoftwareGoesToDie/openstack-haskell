module System.OpenStack.Types
(
    OpenStackConfig,
    AuthToken
) where

import           Data.Aeson.TH
import           Data.ByteString (ByteString)
import qualified Data.ByteString as S
import           Data.Text
import           Data.Time.Clock
import           Data.UUID
import           Network.URI

-- | The base configuration needed to connect to an OpenStack API.
data OpenStackConfig = OpenStackConfig {
      _authURL  :: URI
    , _username :: Text
    , _password :: Text
    , _tenant   :: Text
}

-- | An authentication token as returned by the Keystone API.
data AuthToken = AuthToken {
      _token   :: UUID
    , _expires :: UTCTime
}
