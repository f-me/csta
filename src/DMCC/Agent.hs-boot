module DMCC.Agent

where

import           Control.Concurrent.STM.Lifted (TChan)
import           Data.Text (Text)

import           DMCC.Types
import           DMCC.Prelude
import           Control.Monad.Logger
import qualified DMCC.XML.Response as Rs
import {-# SOURCE #-} DMCC.Session


data Agent


newtype AgentHandle = AgentHandle (AgentId, Session)


monitorId :: Agent -> Text


rspChan :: Agent -> TChan Rs.Response


releaseAgent :: MonadLoggerIO m => AgentHandle -> m ()
