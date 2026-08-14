# Integrated Flight Control Computer (IFCC) Simulation

### Fault-Tolerant Flight Guidance, Navigation & Control Architecture

A **MATLAB/Simulink-based Integrated Flight Control Computer (IFCC)** simulation integrating flight guidance, navigation/state estimation, flight-control laws, sensor validation, fault detection, redundancy management, actuator management, and closed-loop aircraft dynamics.

The project extends a Digital Flight Control Computer (DFCC) architecture into a more integrated and fault-tolerant flight-control system, with emphasis on **modular architecture, sensor integrity, state estimation, fault handling, redundancy, closed-loop control, and quantitative verification**.

---

## Project Overview

Modern flight-control systems must continuously integrate information from multiple sensors, estimate aircraft state, generate guidance references, execute flight-control laws, manage actuators, detect failures, and maintain controlled operation under degraded conditions.

This project models these functions as an integrated IFCC architecture using **MATLAB and Simulink**.

### Core engineering objectives

- Integrate navigation, guidance and flight-control functions
- Estimate aircraft states using sensor fusion and EKF
- Validate sensor measurements before control-loop usage
- Generate flight-guidance references
- Execute closed-loop flight-control laws
- Manage actuator commands and limits
- Detect and isolate sensor and subsystem faults
- Maintain operation through redundancy and degraded modes
- Evaluate performance using quantitative simulation metrics
- Validate system behaviour under nominal and fault-injected conditions

---

# System Architecture

```text
                           ┌───────────────────────────┐
                           │   MISSION / FLIGHT MODE   │
                           │       MANAGEMENT          │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │     FLIGHT GUIDANCE       │
                           │                           │
                           │  Desired Pitch            │
                           │  Desired Roll             │
                           │  Desired Heading          │
                           │  Desired Altitude         │
                           │  Desired Airspeed         │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │    FLIGHT CONTROL LAWS    │
                           │                           │
                           │  Pitch Control             │
                           │  Roll Control              │
                           │  Yaw Control               │
                           │  Altitude Control          │
                           │  Airspeed Control          │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │     CONTROL ALLOCATION    │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │    ACTUATOR MANAGEMENT    │
                           │                           │
                           │  Command Limiting         │
                           │  Saturation Handling      │
                           │  Actuator Monitoring      │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │       AIRCRAFT PLANT      │
                           │                           │
                           │  Aircraft Dynamics        │
                           │  Flight Response          │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │     SENSOR SIMULATION     │
                           │                           │
                           │  IMU                       │
                           │  GNSS / GPS                │
                           │  Pitot / Air Data          │
                           │  Altitude                  │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │     SENSOR VALIDATION     │
                           │                           │
                           │  Range Checks              │
                           │  Validity Checks           │
                           │  Fault Detection           │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │   STATE ESTIMATION / EKF  │
                           │                           │
                           │  Attitude                  │
                           │  Altitude                  │
                           │  Airspeed                  │
                           │  Navigation State           │
                           └─────────────┬─────────────┘
                                         │
                                         ▼
                           ┌───────────────────────────┐
                           │ FAULT DETECTION &          │
                           │ REDUNDANCY MANAGEMENT     │
                           └─────────────┬─────────────┘
                                         │
                                         └──────────► IFCC
