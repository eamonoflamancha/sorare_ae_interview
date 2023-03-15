WITH
  source AS (

    SELECT * FROM {{ source('us_sports', 'fixtures') }}

  )

  , renamed AS (

    SELECT
      created_at::TIMESTAMP AS created_at
      , end_date::TIMESTAMP AS end_date
      , game_week::INT AS game_week
      , id::TEXT AS fixture_id
      , opened_at::TIMESTAMP AS opened_at
      , slug::TEXT AS slug
      , sport::TEXT AS sport
      , start_date::TIMESTAMP AS start_date
      , state::TEXT AS state
      , updated_at::TIMESTAMP AS updated_at

    FROM source

  )

SELECT * FROM renamed
