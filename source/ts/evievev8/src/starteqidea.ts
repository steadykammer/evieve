
export interface BiquadCoefficients {
    a0: number,
    a1: number,
    a2: number,
    b1: number,
    b2: number
}

export interface BiquadCalculator extends BiquadCoefficients {
    filter: string, // filter type
    frequency: number, // Hz
    gain: number, // dB
    qors: number // Q
}

export class BiquadFilter implements BiquadCalculator {
    filter: string
    frequency: number
    gain: number
    qors: number
    a0: number
    a1: number
    a2: number
    b1: number
    b2: number

    constructor (filter?: string, frequency?: number, qors?: number, gain?: number) {
        this.filter = filter || "peaknotch";
        this.frequency = frequency || 1000.0;
        this.gain = gain || 0.0;
        this.qors = qors || Math.SQRT1_2;
    };

}
