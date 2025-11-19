module TexToUnicode
  class Converter
    # Comprehensive mapping of TeX commands to Unicode characters
    TEX_TO_UNICODE = {
      # Greek letters (lowercase)
      '\\alpha' => "α", '\\beta' => "β", '\\gamma' => "γ", '\\delta' => "δ",
      '\\epsilon' => "ε", '\\varepsilon' => "ϵ", '\\zeta' => "ζ", '\\eta' => "η",
      '\\theta' => "θ", '\\vartheta' => "ϑ", '\\iota' => "ι", '\\kappa' => "κ",
      '\\lambda' => "λ", '\\mu' => "μ", '\\nu' => "ν", '\\xi' => "ξ",
      '\\pi' => "π", '\\varpi' => "ϖ", '\\rho' => "ρ", '\\varrho' => "ϱ",
      '\\sigma' => "σ", '\\varsigma' => "ς", '\\tau' => "τ", '\\upsilon' => "υ",
      '\\phi' => "φ", '\\varphi' => "ϕ", '\\chi' => "χ", '\\psi' => "ψ",
      '\\omega' => "ω",

      # Greek letters (uppercase)
      '\\Gamma' => "Γ", '\\Delta' => "Δ", '\\Theta' => "Θ", '\\Lambda' => "Λ",
      '\\Xi' => "Ξ", '\\Pi' => "Π", '\\Sigma' => "Σ", '\\Upsilon' => "Υ",
      '\\Phi' => "Φ", '\\Psi' => "Ψ", '\\Omega' => "Ω",

      # Math operators
      '\\pm' => "±", '\\mp' => "∓", '\\times' => "×", '\\div' => "÷",
      '\\cdot' => "·", '\\ast' => "∗", '\\star' => "⋆", '\\circ' => "∘",
      '\\bullet' => "•", '\\oplus' => "⊕", '\\ominus' => "⊖", '\\otimes' => "⊗",
      '\\oslash' => "⊘", '\\odot' => "⊙", '\\bigcirc' => "◯",

      # Relations
      '\\leq' => "≤", '\\le' => "≤", '\\geq' => "≥", '\\ge' => "≥",
      '\\neq' => "≠", '\\ne' => "≠", '\\equiv' => "≡", '\\approx' => "≈",
      '\\cong' => "≅", '\\simeq' => "≃", '\\sim' => "∼", '\\propto' => "∝",
      '\\ll' => "≪", '\\gg' => "≫", '\\asymp' => "≍",
      '\\subset' => "⊂", '\\supset' => "⊃", '\\subseteq' => "⊆", '\\supseteq' => "⊇",
      '\\in' => "∈", '\\ni' => "∋", '\\notin' => "∉",

      # Arrows
      '\\leftarrow' => "←", '\\gets' => "←", '\\rightarrow' => "→", '\\to' => "→",
      '\\leftrightarrow' => "↔", '\\Leftarrow' => "⇐", '\\Rightarrow' => "⇒",
      '\\Leftrightarrow' => "⇔", '\\uparrow' => "↑", '\\downarrow' => "↓",
      '\\updownarrow' => "↕", '\\Uparrow' => "⇑", '\\Downarrow' => "⇓",
      '\\Updownarrow' => "⇕", '\\mapsto' => "↦", '\\longleftarrow' => "⟵",
      '\\longrightarrow' => "⟶", '\\longleftrightarrow' => "⟷",
      '\\Longleftarrow' => "⟸", '\\Longrightarrow' => "⟹", '\\Longleftrightarrow' => "⟺",

      # Special symbols
      '\\infty' => "∞", '\\partial' => "∂", '\\nabla' => "∇", '\\emptyset' => "∅",
      '\\varnothing' => "∅", '\\aleph' => "ℵ", '\\wp' => "℘", '\\Re' => "ℜ",
      '\\Im' => "ℑ", '\\ell' => "ℓ", '\\hbar' => "ℏ", '\\angle' => "∠",
      '\\forall' => "∀", '\\exists' => "∃", '\\nexists' => "∄",
      '\\neg' => "¬", '\\lnot' => "¬", '\\land' => "∧", '\\lor' => "∨",
      '\\wedge' => "∧", '\\vee' => "∨", '\\cap' => "∩", '\\cup' => "∪",
      '\\top' => "⊤", '\\bot' => "⊥", '\\perp' => "⊥",

      # Calculus
      '\\int' => "∫", '\\iint' => "∬", '\\iiint' => "∭", '\\oint' => "∮",
      '\\sum' => "∑", '\\prod' => "∏", '\\coprod' => "∐",

      # Set theory
      '\\setminus' => "∖", '\\bigcap' => "⋂", '\\bigcup' => "⋃",
      '\\sqsubset' => "⊏", '\\sqsupset' => "⊐", '\\sqsubseteq' => "⊑", '\\sqsupseteq' => "⊒",

      # Logic
      '\\vdash' => "⊢", '\\dashv' => "⊣", '\\models' => "⊨",
      '\\therefore' => "∴", '\\because' => "∵",

      # Misc
      '\\dagger' => "†", '\\ddagger' => "‡", '\\S' => "§", '\\P' => "¶",
      '\\copyright' => "©", '\\pounds' => "£", '\\yen' => "¥", '\\euro' => "€",
      '\\degree' => "°", '\\prime' => "′", '\\dprime' => "″",
      '\\dots' => "…", '\\ldots' => "…", '\\cdots' => "⋯",
      '\\vdots' => "⋮", '\\ddots' => "⋱",

      # Fractions (common ones)
      '\\frac12' => "½", '\\frac13' => "⅓", '\\frac14' => "¼",
      '\\frac23' => "⅔", '\\frac34' => "¾",

      # Superscripts
      "^0" => "⁰", "^1" => "¹", "^2" => "²", "^3" => "³", "^4" => "⁴",
      "^5" => "⁵", "^6" => "⁶", "^7" => "⁷", "^8" => "⁸", "^9" => "⁹",
      "^+" => "⁺", "^-" => "⁻", "^=" => "⁼", "^(" => "⁽", "^)" => "⁾",
      "^n" => "ⁿ", "^i" => "ⁱ",

      # Subscripts
      "_0" => "₀", "_1" => "₁", "_2" => "₂", "_3" => "₃", "_4" => "₄",
      "_5" => "₅", "_6" => "₆", "_7" => "₇", "_8" => "₈", "_9" => "₉",
      "_+" => "₊", "_-" => "₋", "_=" => "₌", "_(" => "₍", "_)" => "₎",

      # Brackets
      '\\langle' => "⟨", '\\rangle' => "⟩", '\\lceil' => "⌈", '\\rceil' => "⌉",
      '\\lfloor' => "⌊", '\\rfloor' => "⌋", '\\lbrace' => "{", '\\rbrace' => "}",
      '\\lbrack' => "[", '\\rbrack' => "]",

      # Accents and modifiers (approximate)
      '\\hat{a}' => "â", '\\hat{e}' => "ê", '\\hat{i}' => "î", '\\hat{o}' => "ô", '\\hat{u}' => "û",
      '\\tilde{a}' => "ã", '\\tilde{n}' => "ñ", '\\tilde{o}' => "õ",
      "\\'{a}" => "á", "\\'{e}" => "é", "\\'{i}" => "í", "\\'{o}" => "ó", "\\'{u}" => "ú",
      '\\`{a}' => "à", '\\`{e}' => "è", '\\`{i}' => "ì", '\\`{o}' => "ò", '\\`{u}' => "ù",

      # Box drawing
      '\\square' => "□", '\\blacksquare' => "■", '\\Box' => "□",
      '\\triangle' => "△", '\\blacktriangle' => "▲",
      '\\diamondsuit' => "♦", '\\heartsuit' => "♥", '\\clubsuit' => "♣", '\\spadesuit' => "♠",

      # Musical
      '\\sharp' => "♯", '\\flat' => "♭", '\\natural' => "♮",

      # Misc symbols
      '\\checkmark' => "✓", '\\maltese' => "✠",

      # Blackboard bold (common sets)
      '\\mathbb{C}' => "ℂ", '\\mathbb{H}' => "ℍ", '\\mathbb{N}' => "ℕ",
      '\\mathbb{P}' => "ℙ", '\\mathbb{Q}' => "ℚ", '\\mathbb{R}' => "ℝ",
      '\\mathbb{Z}' => "ℤ",

      # Additional useful symbols
      '\\sqrt' => "√", '\\surd' => "√"
    }.freeze

    def self.convert(text)
      result = text.dup

      # Remove braces used for grouping first (before conversions)
      # This allows super/subscripts within braces to be processed
      result.gsub!(/\{([^}]*)\}/) { $1 }

      # Sort by length (descending) to match longer patterns first
      TEX_TO_UNICODE.keys.sort_by { |k| -k.length }.each do |tex|
        result.gsub!(tex, TEX_TO_UNICODE[tex])
      end

      # Remove unsupported superscript/subscript markers
      # If a ^ or _ is still present after conversion, it means that character
      # doesn't have a Unicode super/subscript equivalent, so we remove the marker
      result.gsub!(/\^(.)/) { $1 }  # Remove ^ before any remaining character
      result.gsub!(/_(.)/) { $1 }   # Remove _ before any remaining character

      result
    end
  end
end
