# install via: sudo apt-get install clang-format
find gsplat_original/cuda/include \
  -path "third_party" -prune -o \
  -type f \( -iname "*.cpp" -o -iname "*.cuh" -o -iname "*.cu" -o -iname "*.h" \) \
  -exec clang-format -i {} \;

# install via: pip install black==22.3.0
black . gsplat_original/ tests/ examples/ profiling/