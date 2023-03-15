WITH
  source AS (

    SELECT * FROM {{ source('SO5', 'USERS') }}

  )

  , renamed AS (

    SELECT
      created_at::TIMESTAMP AS created_at
      , first_deposit_at::TIMESTAMP AS first_deposit_at
      , id::TEXT AS user_id
      , updated_at::TIMESTAMP AS updated_at
      , utm_params::VARIANT AS utm_params

    FROM source

  )

SELECT * FROM renamed
