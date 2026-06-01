# Telemetry

This Extension creates extra telemetry and has three purposes

## 1. Count Records

Write Record Count to the Traces table in your Application Insights database.

This allows you to calculate Key Performance Indicators bases on table sizes

For example : Slow Queries based on number or records in table

## 2. Monitor Data Lifecyle 

Not every table is designed to grow indefinately. These tables often need housekeeping such as retention policies or manual discipline.

This extension allows you to setup tresholds per table and alerts on undesired growth.

## 3. Log Insert, Modify & Delete per user and session

Count the number of records inserted, modified and deleted per user per session and store this in the Traces table when the user signs out or switches to another company.