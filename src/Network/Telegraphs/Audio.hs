{-# LANGUAGE DeriveGeneric #-}
module Network.Telegraphs.Audio where

import Data.Aeson
import GHC.Generics

data Audio =
  Audio { file_id   :: String
        , duration  :: Integer
        , performer :: Maybe String
        , title     :: Maybe String
        , mime_type :: Maybe String
        , file_size :: Maybe Integer }
  deriving (Read, Show, Generic)

instance FromJSON Audio
instance ToJSON Audio
