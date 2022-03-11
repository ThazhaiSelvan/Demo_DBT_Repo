{{ config(materialized='ephemeral') }}

SELECT 'Welcome to Hexaware' as Message from dual