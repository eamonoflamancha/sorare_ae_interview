with source as (

    select * from {{ source('us_sports', 'cards') }}

),

renamed as (

    select
        allocated_at::TIMESTAMP AS allocated_at,
        allocation_type::TEXT AS allocation_type,
        card_data_json::VARIANT AS card_data_json,
        created_at::TIMESTAMP AS created_at,
        id::TEXT AS card_id,
        owner_changed_at::TIMESTAMP AS owner_changed_at,
        player_id::TEXT AS player_id,
        rarity::TEXT AS rarity,
        season::INT AS season,
        serial::INT AS serial,
        slug::TEXT AS slug,
        sport::TEXT AS sport,
        updated_at::TIMESTAMP AS updated_at,
        user_id::TEXT AS user_id,
        xp::NUMBER(38, 4) AS xp

    from source

)

select * from renamed