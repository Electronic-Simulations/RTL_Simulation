import numpy as np
import matplotlib.pyplot as plt

# Constants
fs = 1_000  # Sampling frequency: 1 KHz
f = 10    # Signal frequency: 100 Hz
A = 5       # Amplitude: 5

# Time vector for 10 seconds
t = np.arange(0, 0.5, 1/fs)  # Time vector for first 0.5 seconds

# Generate the wave
wave = A * np.sin(2 * np.pi * f * t) + 0.5 * np.sin(2 * np.pi * 50 * t)

# Plot
plt.figure(figsize=(10, 4))
plt.plot(t, wave, label='Waveform')
plt.title('Generated Waveform')
plt.xlabel('Time (seconds)')
plt.ylabel('Amplitude')
plt.grid(True)
plt.legend()
plt.show()
