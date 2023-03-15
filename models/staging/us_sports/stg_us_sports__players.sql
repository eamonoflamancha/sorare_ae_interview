WITH
  source AS (

    SELECT * FROM {{ source('us_sports', 'players') }}

  )

  , renamed AS (

    SELECT
      active::BOOLEAN AS is_active
      , birth_date::DATE AS birth_date
      , created_at::TIMESTAMP AS created_at
      , full_name::TEXT AS full_name
      , id::TEXT AS player_id
      , player_data_json::VARIANT AS player_data_json
      , positions::ARRAY AS positions
      , slug::TEXT AS slug
      , sport::TEXT AS sport
      , team_id::TEXT AS team_id
      , updated_at::TIMESTAMP AS updated_at

    FROM source

  )

SELECT * FROM renamed
