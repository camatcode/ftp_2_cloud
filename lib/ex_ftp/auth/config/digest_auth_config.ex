# SPDX-License-Identifier: Apache-2.0
defmodule ExFTP.Auth.DigestAuthConfig do
  @moduledoc """
  A module describing the **authenticator_config** value for `ExFTP.Auth.DigestAuth`

  <!-- tabs-open -->

  #{ExFTP.Doc.related(["`ExFTP.Auth.DigestAuth`", "`ExFTP.Authenticator`"])}

  #{ExFTP.Doc.resources()}

  <!-- tabs-close -->
  """
  import ExFTP.Auth.Common

  alias ExFTP.Auth.Common
  alias ExFTP.Auth.DigestAuthConfig

  @typedoc """
  The **authenticator_config** value for `ExFTP.Auth.DigestAuth`

  <!-- tabs-open -->
  ### 🏷️ Required Keys
    * **login_url** :: `t:ExFTP.Auth.Common.login_url/0`

  ### 🏷️ Optional Keys
    * **login_method** :: `t:ExFTP.Auth.Common.login_method/0`
    * **authenticated_url** :: `t:ExFTP.Auth.Common.authenticated_url/0`
    * **authenticated_method** :: `t:ExFTP.Auth.Common.authenticated_method/0`
    * **authenticated_ttl_ms** :: `t:ExFTP.Auth.Common.authenticated_ttl_ms/0`

  <!-- tabs-open -->
  """
  @type t() :: %DigestAuthConfig{
          authenticated_ttl_ms: Common.authenticated_ttl_ms(),
          login_url: Common.login_url(),
          login_method: Common.login_method(),
          authenticated_url: Common.authenticated_url() | nil,
          authenticated_method: Common.authenticated_method()
        }

  @enforce_keys [:login_url]

  defstruct [
    :login_url,
    :authenticated_url,
    :authenticated_ttl_ms,
    login_method: :get,
    authenticated_method: :get
  ]

  @doc """
  Builds a `t:ExFTP.Auth.DigestAuthConfig.t/0` from a map

  <!-- tabs-open -->

  ### 🏷️ Params
    * **m** :: A map to build into a `t:ExFTP.Auth.DigestAuthConfig.t/0`

  <!-- tabs-close -->
  """
  @spec build(m :: map) :: DigestAuthConfig.t()
  def build(m) do
    fields = prepare(m)

    struct(DigestAuthConfig, fields)
  end
end
