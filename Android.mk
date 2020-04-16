#
# Copyright (C) 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq ($(TARGET_BOARD_PLATFORM), exynos5)
ifeq ($(TARGET_SLSI_VARIANT), bsp)
ifeq ($(TARGET_SOC), exynos7420)
exynos7420_dirs := \
	mobicore \
	libgatekeeper \
	libkeymaster \

#ifeq ($(BOARD_BACK_CAMERA_USES_EXTERNAL_CAMERA), true)
#exynos7420_dirs += \
#	libcamera_external
#else ifeq ($(BOARD_FRONT_CAMERA_USES_EXTERNAL_CAMERA), true)
#exynos7420_dirs += \
#	libcamera_external
#else
#exynos7420_dirs += \
#	libcamera \
#	libcamera3 \
#	libcameraInterface
#endif

include $(call all-named-subdir-makefiles,$(exynos7420_dirs))

endif
endif
endif
