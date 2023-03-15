WITH
  source AS (

    SELECT * FROM {{ source('us_sports', 'teams') }}

  )

  , renamed AS (

    SELECT
      created_at::TIMESTAMP AS created_at
      , id::TEXT AS team_id
      , is_all_star::BOOLEAN AS is_all_star
      , slug::TEXT AS slug
      , sport::TEXT AS sport
      , team_data_json::VARIANT AS team_data_json
      , updated_at::TIMESTAMP AS updated_at

    FROM source

  )

SELECT * FROM renamed
