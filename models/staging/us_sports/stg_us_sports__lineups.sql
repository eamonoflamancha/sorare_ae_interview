WITH
  source AS (

    SELECT * FROM {{ source('us_sports', 'lineups') }}

  )

  , renamed AS (

    SELECT
      id::TEXT AS lineup_id
      , user_id::TEXT AS user_id
      , fixture_id::TEXT AS fixture_id
      , leaderboard_id::TEXT AS leaderboard_id
      , card_ids::ARRAY AS card_ids
      , rank::INT AS rank
      , created_at::TIMESTAMP AS created_at
      , updated_at::TIMESTAMP AS updated_at

    FROM source

  )

SELECT * FROM renamed
