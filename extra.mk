#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra-edo

ifeq ($(TARGET_USES_EXTRAS_DOLBY),true)
# Dolby Sound
    $(call inherit-product, vendor/sony/extra-edo/extra/dolby/dolby.mk)
endif

ifeq ($(TARGET_USES_EXTRAS_CAMERAAPPS),true)
    $(call inherit-product, vendor/sony/extra-edo/extra/camera/camera.mk)
endif

# Framework
PRODUCT_PACKAGES += \
        com.sonyericsson.idd_impl \
        com.sony.device
