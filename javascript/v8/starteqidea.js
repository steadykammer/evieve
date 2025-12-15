export class BiquadFilter {
  filter;
  frequency;
  gain;
  qors;
  a0;
  a1;
  a2;
  b1;
  b2;
  constructor(filter, frequency, qors, gain) {
    this.filter = filter || "peaknotch";
    this.frequency = frequency || 1e3;
    this.gain = gain || 0;
    this.qors = qors || Math.SQRT1_2;
  }
}
