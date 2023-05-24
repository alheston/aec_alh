
  
    

    create or replace table `aec-students`.`dbt_alh`.`stg_github_pull_request`
    
    
    OPTIONS()
    as (
      

with source as (

    select * from `analytics-engineers-club`.`github`.`pull_request`

),

renamed as (

    select
        id,
        _fivetran_synced,
        base_label,
        base_ref,
        base_repo_id,
        base_sha,
        base_user_id,
        draft,
        head_label,
        head_ref,
        head_repo_id,
        head_sha,
        head_user_id,
        issue_id,
        merge_commit_sha

    from source

)

select * from renamed
    );
  