// Described in Hacker's Delight (Figure 5-2).
int bitCount(int n) {
  n = n - ((n >> 1) & 0x5555555555555555);
  n = (n & 0x3333333333333333) + ((n >> 2) & 0x3333333333333333);
  n = (n + (n >> 4)) & 0x0f0f0f0f0f0f0f0f;
  n = n + (n >> 8);
  n = n + (n >> 16);
  n = n + (n >> 32);
  return n & 0x7f;
}
