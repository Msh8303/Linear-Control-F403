# Final Project 📊

This project is a **final submission** for the **Linear Control Systems** course by **Mohammad Amin Shabestari**. 

---

## **Project Structure**

The report is structured into several questions, each addressing a different aspect of **control system analysis and design**.

### **📌 Question 1: Frequency Response Analysis**
- **Objective**: Analyze the system’s **frequency response** using **Bode plots**.
- **Key Steps**:
  1. **Load Data** from `Data.mat`.
  2. **Extract information** (magnitude, phase, and frequency).
  3. **Convert magnitude to dB**.
  4. **Plot Bode diagrams** using MATLAB.
- **Result**: Bode plot successfully represents the system’s **gain and phase response**.

### **📌 Question 2: System Type & Characteristics**
- **Objective**: Determine **system properties** from frequency response data.
- **Key Analyses**:
  - **System Type**: Check if the system has **integrators**.
  - **Order Determination**: Based on **pole-zero locations**.
  - **Time Delay**: Check for **significant phase lag**.
  - **Minimum Phase Check**: Detect **right-half-plane zeros**.
- **Conclusion**: The system is **Type 1, Third-order, No significant delay, and Non-minimum phase**.

### **📌 Question 3: System Estimation & Approximation**
- **Objective**: Estimate a **transfer function** based on frequency response.
- **Key Steps**:
  1. Assume a **second-order system with an integrator**.
  2. **Extract key parameters**: damping ratio (ζ) and natural frequency (ωn).
  3. **Use System Identification Toolbox** for MATLAB-based estimation.
- **Result**: The final estimated transfer function is a **third-order system with optimized parameters**.

### **📌 Question 4: Stability Analysis using Routh-Hurwitz**
- **Objective**: Determine stability conditions using **Routh-Hurwitz criterion**.
- **Key Findings**:
  - Stability condition: **-27.93 < K < 0**.
  - **Positive gains make the system unstable**.

### **📌 Question 5: Root Locus & Controller Design**
- **Objective**: Analyze system behavior via **root locus** and **design controllers**.
- **Steps**:
  1. **Plot Root Locus**: Visualize pole movement.
  2. **Design Controllers**:
     - **PI Controller**: Improves **steady-state error**, but reduces stability margin.
     - **PD Controller**: **Fails to stabilize** the system alone.
  3. **Test PID Tuning** in MATLAB.
- **Conclusion**:
  - **PI controller stabilizes** the system.
  - **PD controller alone is ineffective**.

### **📌 Question 6: Lead & Lag Compensator Design**
- **Objective**: Improve system response using **Lead-Lag compensators**.
- **Steps**:
  1. Add **fixed gain** to reduce **steady-state error**.
  2. **Lead Controller**: Improves **stability & phase margin**.
  3. **Lag Controller**: Enhances **steady-state accuracy**.
  4. **Final Lead-Lag Controller** is implemented for optimal performance.
- **Final Performance**:
  - **Overshoot** = **11.8%**
  - **Settling Time** < **10 sec**
  - **Stable system behavior**

### **📌 Question 7: Sensitivity & Robust Control**
- **Objective**: Design a robust controller to satisfy sensitivity constraints.
- **Steps**:
  1. **Compute Sensitivity Functions (T(s) and S(s))**.
  2. **Design Controllers to meet robustness conditions**.
  3. **Optimize Frequency Response** to handle disturbances.
- **Conclusion**:
  - **Sensitivity constraints met**.
  - **A negative gain (-5.68) is required for stability**.

- **Controller Performance Evaluation**
- **Objective**: Validate final controller performance.
- **Key Tests**:
  - **Step Response**: Evaluates steady-state accuracy.
  - **Ramp Response**: Checks tracking ability.
- **Findings**:
  - **Step response**: Fast settling time.
  - **Ramp response**: Small steady-state error.

---



