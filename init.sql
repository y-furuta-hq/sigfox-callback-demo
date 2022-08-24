-- drop table if exists sigfox_data;
-- drop type if exists callback_type;
-- CREATE TYPE IF NOT EXISTS callback_type AS ENUM ('data/uplink', 'data/downlink', 'service/geoloc');

create table if not exists sigfox_data(
  id serial primary key,
  date timestamp not null,
  type callback_type not null,
  device varchar(10) not null,
  data smallint,
  stationId varchar(10),
  rssi float,
  duplicate boolean
);
