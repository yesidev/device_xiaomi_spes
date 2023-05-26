# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

#Remove compat stuff to avoid errors
rm -rf hardware/lineage/compat

#Sync qcom-caf bootctrl
rm -rf hardware/qcom-caf/bootctrl
git clone https://github.com/LineageOS/android_hardware_qcom_bootctrl.git -b lineage-19.1-caf hardware/qcom-caf/bootctrl

#sync Hardware tree
git clone https://github.com/CHRISL7/hardware_xiaomi.git hardware/xiaomi 

#Sync Vendor tree
git clone https://github.com/shripad-jyothinath/vendor_xiaomi_spes.git vendor/xiaomi/spes

#Sync Kernel tree
git clone https://github.com/Jabiyeff/kernel_xiaomi_spes_header.git kernel/xiaomi/spes
