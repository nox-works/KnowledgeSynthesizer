---
description: "Summon KnowledgeSynthesizer — research-grade, multi-depth knowledge on ANY topic: from one-paragraph explanation to full compendium. Supports depth, perspective, and format variance."
agent: knowledge-synthesizer
---

# /knowledge

Summon KnowledgeSynthesizer — the knowledge engine. Generates research-grade, well-structured, multi-variant knowledge on ANY topic at ANY depth.

## Usage

```
/knowledge {topic or question}
/knowledge {topic} @{depth} @{perspective}
/knowledge {topic} @compendium 
/knowledge {topic} @variance
```

## Depth Flags

| Flag | Output | Length |
|------|--------|--------|
| `@micro` | 1-paragraph core explanation | ~100 words |
| `@brief` | Overview with key points | ~500 words |
| `@guide` | Step-by-step with examples | ~1,000 words |
| `@deep` | Multi-section comprehensive analysis | ~3,000 words |
| `@compendium` | Full multi-chapter volume | 10,000+ words |
| `@reference` | Structured definitions, relationships, lookup-ready | ~1,500 words |
| *(no flag)* | Automatically determined from context | varies |

## Perspective Flags

| Flag | Viewpoint |
|------|-----------|
| `@scientific` | Empirical, evidence-based, mechanistic |
| `@practical` | Action-oriented, real-world application |
| `@strategic` | Power, leverage, advantage-focused |
| `@philosophical` | Meaning, purpose, existential dimensions |
| `@historical` | Evolution through time, lessons from past |
| `@psychological` | Cognitive, emotional, behavioral dynamics |
| `@systems` | Feedback loops, leverage points, dynamics |
| `@first-principles` | Fundamental truths, stripped of assumption |
| *(no flag)* | Multi-perspective synthesis (default) |

## Format Flags

| Flag | Structure |
|------|-----------|
| `@variance` | Generate multiple depths/perspectives/formats |
| `@playbook` | Action-oriented framework with steps |
| `@faq` | Question-and-answer format |
| `@dialogue` | Socratic conversation format |
| `@narrative` | Story-based explanation |
| `@framework` | Structured model with components |

## Examples

### Quick Explanation
```
/knowledge what is cognitive dissonance?
/knowledge explain the pareto principle @micro
/knowledge how does compounding work @brief
```

### Deep Analysis
```
/knowledge why do some people resist changing their minds @deep
/knowledge the psychology of persuasion @deep @scientific
/knowledge how to build a cult of personality @compendium @strategic
```

### With Variance
```
/knowledge stoicism @variance
/knowledge supply and demand @deep @variance @faq
/knowledge game theory @compendium @variance @playbook
```

### Full System/Compendium
```
/knowledge I want a complete guide to social dynamics @compendium
/knowledge build a knowledge system for negotiation @compendium @reference
```

## What KnowledgeSynthesizer Delivers

| Request | Pipeline | Output |
|---------|----------|--------|
| "Explain X" | Quick synthesis | Clear, accurate explanation |
| "Guide me on X" | Research + synthesis | Step-by-step actionable guide |
| "Deep dive on X" | Full thinking pipeline | Multi-section comprehensive analysis |
| "Compendium on X" | Full pipeline + structure | Complete organized volume |
| "X @variance" | Full pipeline + variance | Multiple versions (depth/perspective/format) |

## Quality Guarantees

- **Truth**: Accurate to best current knowledge. Uncertainty labeled.
- **Clarity**: Core insight extractable from first section.
- **Depth**: Pushes to first principles before building up.
- **No bullshit**: No filler. No softening. No weasel words.
- **Variance**: Genuinely different versions, not restated content.

## Inherited from Veritas Lineage

KnowledgeSynthesizer carries the full Veritas thinking architecture:
- **Veritas**: First-principles decomposition, systems thinking, multi-perspective scanning
- **xVeritas**: Research integration, execution capability
- **VeritasX**: Unrestricted synthesis on ANY topic
