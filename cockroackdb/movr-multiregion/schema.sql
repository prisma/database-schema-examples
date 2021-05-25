-- Output from SHOW CREATE ALL TABLES on multi-region database "movr" --
-- Recommended reading: https://www.cockroachlabs.com/docs/v21.1/create-table.html#create-a-table-with-a-regional-by-row-locality --

CREATE TABLE public.users (
    id UUID NOT NULL,
    city VARCHAR NOT NULL,
    name VARCHAR NULL,
    address VARCHAR NULL,
    credit_card VARCHAR NULL,
    crdb_region public.crdb_internal_region NOT VISIBLE NOT NULL DEFAULT default_to_database_primary_region(gateway_region())::public.crdb_internal_region,
    CONSTRAINT "primary" PRIMARY KEY (id ASC),
    FAMILY "primary" (id, city, name, address, credit_card, crdb_region)
) LOCALITY REGIONAL BY ROW;
CREATE TABLE public.promo_codes (
    code VARCHAR NOT NULL,
    description VARCHAR NULL,
    creation_time TIMESTAMP NULL,
    expiration_time TIMESTAMP NULL,
    rules JSONB NULL,
    CONSTRAINT "primary" PRIMARY KEY (code ASC),
    FAMILY "primary" (code, description, creation_time, expiration_time, rules)
) LOCALITY GLOBAL;
CREATE TABLE public.vehicles (
    id UUID NOT NULL,
    city VARCHAR NOT NULL,
    type VARCHAR NULL,
    owner_id UUID NULL,
    creation_time TIMESTAMP NULL,
    status VARCHAR NULL,
    current_location VARCHAR NULL,
    ext JSONB NULL,
    crdb_region public.crdb_internal_region NOT VISIBLE NOT NULL DEFAULT default_to_database_primary_region(gateway_region())::public.crdb_internal_region,
    CONSTRAINT "primary" PRIMARY KEY (id ASC),
    FAMILY "primary" (id, city, type, owner_id, creation_time, status, current_location, ext, crdb_region)
) LOCALITY REGIONAL BY ROW;
CREATE TABLE public.user_promo_codes (
    city VARCHAR NOT NULL,
    user_id UUID NOT NULL,
    code VARCHAR NOT NULL,
    "timestamp" TIMESTAMP NULL,
    usage_count INT8 NULL,
    crdb_region public.crdb_internal_region NOT VISIBLE NOT NULL DEFAULT default_to_database_primary_region(gateway_region())::public.crdb_internal_region,
    CONSTRAINT "primary" PRIMARY KEY (user_id ASC, code ASC),
    FAMILY "primary" (city, user_id, code, "timestamp", usage_count, crdb_region)
) LOCALITY REGIONAL BY ROW;
CREATE TABLE public.rides (
    id UUID NOT NULL,
    city VARCHAR NOT NULL,
    rider_id UUID NULL,
    vehicle_id UUID NULL,
    start_address VARCHAR NULL,
    end_address VARCHAR NULL,
    start_time TIMESTAMP NULL,
    end_time TIMESTAMP NULL,
    revenue DECIMAL(10,2) NULL,
    crdb_region public.crdb_internal_region NOT VISIBLE NOT NULL DEFAULT default_to_database_primary_region(gateway_region())::public.crdb_internal_region,
    CONSTRAINT "primary" PRIMARY KEY (id ASC),
    FAMILY "primary" (id, city, rider_id, vehicle_id, start_address, end_address, start_time, end_time, revenue, crdb_region)
) LOCALITY REGIONAL BY ROW;
CREATE TABLE public.vehicle_location_histories (
    city VARCHAR NOT NULL,
    ride_id UUID NOT NULL,
    "timestamp" TIMESTAMP NOT NULL,
    lat FLOAT8 NULL,
    long FLOAT8 NULL,
    crdb_region public.crdb_internal_region NOT VISIBLE NOT NULL DEFAULT default_to_database_primary_region(gateway_region())::public.crdb_internal_region,
    CONSTRAINT "primary" PRIMARY KEY (ride_id ASC, "timestamp" ASC),
    FAMILY "primary" (city, ride_id, "timestamp", lat, long, crdb_region)
) LOCALITY REGIONAL BY ROW;
ALTER TABLE public.vehicles ADD CONSTRAINT fk_owner_id_ref_users FOREIGN KEY (owner_id) REFERENCES public.users(id);
ALTER TABLE public.user_promo_codes ADD CONSTRAINT fk_user_id_ref_users FOREIGN KEY (user_id) REFERENCES public.users(id);
ALTER TABLE public.rides ADD CONSTRAINT fk_rider_id_ref_users FOREIGN KEY (rider_id) REFERENCES public.users(id);
ALTER TABLE public.rides ADD CONSTRAINT fk_vehicle_id_ref_vehicles FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);
ALTER TABLE public.vehicle_location_histories ADD CONSTRAINT fk_ride_id_ref_rides FOREIGN KEY (ride_id) REFERENCES public.rides(id);
-- Validate foreign key constraints. These can fail if there was unvalidated data during the SHOW CREATE ALL TABLES
ALTER TABLE public.vehicles VALIDATE CONSTRAINT fk_owner_id_ref_users;
ALTER TABLE public.user_promo_codes VALIDATE CONSTRAINT fk_user_id_ref_users;
ALTER TABLE public.rides VALIDATE CONSTRAINT fk_rider_id_ref_users;
ALTER TABLE public.rides VALIDATE CONSTRAINT fk_vehicle_id_ref_vehicles;
ALTER TABLE public.vehicle_location_histories VALIDATE CONSTRAINT fk_ride_id_ref_rides;
