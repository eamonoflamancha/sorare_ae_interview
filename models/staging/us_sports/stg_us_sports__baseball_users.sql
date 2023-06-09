WITH
  source AS (

    SELECT * FROM {{ source('us_sports', 'baseball_users') }}

  )

  , renamed AS (

    SELECT
      account_created_at::TIMESTAMP AS account_created_at
      , baseball_user_data_json::VARIANT AS baseball_user_data_json
      , created_at::TIMESTAMP AS created_at
      , first_deposit_at::TIMESTAMP AS first_deposit_at
      , id::TEXT AS user_id
      , updated_at::TIMESTAMP AS updated_at

    FROM source

  )

SELECT * FROM renamed
