#!/bin/bash
mkdir -p /epics/opi

pandablocks-ioc softioc bl22i-mo-panda-02 BL22I-EA-PANDA-02 --clear-bobfiles --screens-dir /epics/opis


