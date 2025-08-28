# tailed-normal-sbi

Current neural posterior estimation (NPE) techniques have lower accuracy near parameter space boundaries due to sharp discontinuities introduced by uniform proposal distributions during training. These boundary pathologies become more problematic in high-dimensional parameter spaces, resulting in posterior estimates that are orders of magnitude less accurate than interior predictions. We present the **Tailed-Normal** proposal distribution, a hybrid approach that replaces sharp uniform boundaries with smooth, continuously differentiable Gaussian tails. This design allows neural networks to learn robust posterior approximations across the entire parameter space by providing training data that extends beyond the primary region of interest, eliminating the discontinuities that plague traditional uniform sampling methods.

The **Tailed-Normal** distribution combines a uniform core with smooth Gaussian tails:

```
p̃(x; a, b, σ) = { A·p_Normal(x; a, σ),     x ≤ a
                { B·p_Uniform(x; a, b),    x ∈ [a,b]  
                { A·p_Normal(x; b, σ),     x ≥ b
```


## 📊 Paper Status

- [x] Manuscript Draft Complete
- [ ] Submitted to Journal
- [ ] Under Review
- [ ] Published

**Last Updated:** August 28, 2025

## Quick Start

```bash
# Clone the repository
git clone https://github.com/chaipattira/tailed-normal-sbi.git
cd tailed-normal-sbi

# Run automated installation
chmod +x install.sh
./install.sh
```

## Core Dependencies

- Python 3.10 (required)
- PyTorch (neural networks and flows)
- sbi (simulation-based inference framework)
- ltu-ili (standardized SBI pipeline - custom install)
- symbolic_pofk (symbolic power spectrum - custom install)
- sbibm (benchmarking suite)
- numpy, scipy, matplotlib (scientific computing)

-----

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
