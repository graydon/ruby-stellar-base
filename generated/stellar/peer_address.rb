# This code was automatically generated using xdrgen
# DO NOT EDIT or your changes may be overwritten

require 'xdr'

# === xdr source ============================================================
#
#   struct PeerAddress
#   {
#       opaque ip[4];
#       uint32 port;
#       uint32 numFailures;
#   };
#
# ===========================================================================
module Stellar
  class PeerAddress < XDR::Struct
    attribute :ip,           XDR::Opaque[4]
    attribute :port,         Uint32
    attribute :num_failures, Uint32
  end
end
