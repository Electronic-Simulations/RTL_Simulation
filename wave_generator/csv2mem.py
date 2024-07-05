import numpy as np

# Parameters
fs = 1_000  # Sampling frequency: 1 KHz
f = 100         # Signal frequency: 100 Hz
A = 5           # Amplitude: 5
t = np.arange(0, 10, 1/fs)  # Time vector for 1 second

# Generate the wave
wave = A * np.sin(2 * np.pi * f * t)
wave_withnoise = wave + 0.001*np.sin(2 * np.pi * 50 * t)

# Scale the wave for fixed-point representation (e.g., 16-bit signed integers)
scaled_wave = np.int16(wave_withnoise * (2**15 - 1) / A)

# Save to a memory file
with open('wave.mem', 'w') as memfile:
    for sample in scaled_wave:
        memfile.write(f"{sample & 0xFFF:03X}\n")  # Convert to 3-digit hex
