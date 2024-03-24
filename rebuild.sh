#!/bin/bash

source .env

export OSM_HOSTNAME
export OSM_USER
export OSM_PASSWORD
export OSM_PROJECT

# osm nsd-list
# osm vnfpkg-list
# osm ns-list

osm ns-delete neo-vro
osm nspkg-delete neo_vro_nsd
osm vnfpkg-delete neo_vro_vnfd

osm vnfpkg-create neo_vro_knf
osm nspkg-create neo_vro_ns

osm ns-create --ns_name neo-vro --nsd_name neo_vro_nsd --vim_account openstack
