# TexToUnicode

A Ruby gem that converts TeX mathematical and other symbols to their Unicode character equivalents, enabling easier display of mathematical notation in plain text.

## Installation

Install the gem locally:

```bash
gem build tex_to_unicode.gemspec
gem install tex_to_unicode-0.1.0.gem
```

Or add it to your Gemfile:

```ruby
gem 'tex_to_unicode'
```

## Usage

### Command Line

The gem provides a `tex_to_unicode` executable that converts TeX expressions passed as arguments:

```bash
# Basic usage
tex_to_unicode '\alpha + \beta = \gamma'
# Output: α + β = γ

# Greek letters
tex_to_unicode '\pi \approx 3.14159'
# Output: π ≈ 3.14159

# Math operators
tex_to_unicode 'x \times y \leq z'
# Output: x × y ≤ z

# Arrows
tex_to_unicode 'A \rightarrow B \Rightarrow C'
# Output: A → B ⇒ C

# Integrals and sums
tex_to_unicode '\int_0^\infty x^2 dx'
# Output: ∫₀^∞ x² dx

# Set notation
tex_to_unicode 'x \in \mathbb{R}, y \notin \emptyset'
# Output: x ∈ ℝ, y ∉ ∅

# Complex expressions
tex_to_unicode '\forall x \exists y : x \leq y'
# Output: ∀ x ∃ y : x ≤ y
```

### Ruby API

You can also use the gem in your Ruby code:

```ruby
require 'tex_to_unicode'

# Convert TeX to Unicode
result = TexToUnicode.convert('\alpha + \beta = \gamma')
puts result  # => α + β = γ

# Use in string interpolation
formula = '\sum_{i=1}^n i = \frac{n(n+1)}{2}'
puts "The formula is: #{TexToUnicode.convert(formula)}"
# Output: The formula is: ∑ᵢ₌₁ⁿ i = n(n+1)/2
```

## Supported Symbols

The gem supports a wide range of TeX symbols including:

### Greek Letters
- Lowercase: `\alpha`, `\beta`, `\gamma`, `\delta`, `\epsilon`, `\theta`, `\lambda`, `\mu`, `\pi`, `\sigma`, `\phi`, `\omega`, etc.
- Uppercase: `\Gamma`, `\Delta`, `\Theta`, `\Lambda`, `\Pi`, `\Sigma`, `\Phi`, `\Omega`, etc.

### Math Operators
- `\pm` (±), `\times` (×), `\div` (÷), `\cdot` (·)
- `\oplus` (⊕), `\otimes` (⊗), `\ast` (∗)

### Relations
- `\leq` (≤), `\geq` (≥), `\neq` (≠), `\approx` (≈)
- `\equiv` (≡), `\sim` (∼), `\propto` (∝)
- `\subset` (⊂), `\supset` (⊃), `\in` (∈), `\notin` (∉)

### Arrows
- `\rightarrow` or `\to` (→), `\leftarrow` (←), `\leftrightarrow` (↔)
- `\Rightarrow` (⇒), `\Leftarrow` (⇐), `\Leftrightarrow` (⇔)
- `\uparrow` (↑), `\downarrow` (↓)

### Calculus & Analysis
- `\int` (∫), `\sum` (∑), `\prod` (∏)
- `\partial` (∂), `\nabla` (∇), `\infty` (∞)

### Logic & Set Theory
- `\forall` (∀), `\exists` (∃), `\neg` (¬)
- `\land` (∧), `\lor` (∨), `\cap` (∩), `\cup` (∪)
- `\emptyset` (∅), `\therefore` (∴), `\because` (∵)

### Superscripts & Subscripts
- `^0` through `^9` (⁰¹²³⁴⁵⁶⁷⁸⁹)
- `_0` through `_9` (₀₁₂₃₄₅₆₇₈₉)
- `^+`, `^-`, `^(`, `^)` and subscript equivalents

### Brackets
- `\langle`, `\rangle` (⟨⟩)
- `\lceil`, `\rceil` (⌈⌉)
- `\lfloor`, `\rfloor` (⌊⌋)

### Miscellaneous
- `\checkmark` (✓), `\degree` (°), `\copyright` (©)
- `\dots` (…), `\cdots` (⋯)
- Musical symbols: `\sharp` (♯), `\flat` (♭), `\natural` (♮)

## Examples

```bash
# Quadratic formula
tex_to_unicode 'x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}'
# Output: x = -b ± √(b² - 4ac)/2a

# Euler's identity
tex_to_unicode 'e^{i\pi} + 1 = 0'
# Output: eⁱᵖⁱ + 1 = 0

# Set theory
tex_to_unicode 'A \cup B = \{x : x \in A \lor x \in B\}'
# Output: A ∪ B = {x : x ∈ A ∨ x ∈ B}

# Calculus
tex_to_unicode '\int_a^b f(x)dx = F(b) - F(a)'
# Output: ∫ₐᵇ f(x)dx = F(b) - F(a)
```

## Limitations

While Unicode provides many mathematical symbols, some TeX constructs cannot be perfectly represented:
- Complex fractions are approximated
- Matrices and arrays have limited support
- Some accents and diacritics are approximated
- Subscripts and superscripts support limited characters

## Development

To build and test locally:

```bash
# Build the gem
gem build tex_to_unicode.gemspec

# Install locally
gem install tex_to_unicode-0.1.0.gem

# Test the executable
tex_to_unicode '\alpha + \beta'
```

## Contributing

Bug reports and pull requests are welcome!

## License

This gem is available as open source under the terms of the MIT License.
