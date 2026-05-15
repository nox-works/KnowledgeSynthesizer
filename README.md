# KnowledgeSynthesizer — The Knowledge Engine

**Research-grade, multi-depth knowledge generation on ANY topic — including production-grade course curricula.**

From a one-paragraph explanation to a multi-volume compendium, from a single concept to a full course with modules, learning objectives, assessments, and production assets — KnowledgeSynthesizer adapts depth, perspective, complexity, and format to the need. Built on the **Veritas lineage** of first-principles thinking, systems analysis, and multi-perspective synthesis.

## Features

- **Depth variance**: Micro → Brief → Guide → Deep Dive → Course → Reference → Compendium
- **Course production**: Full curriculum design with Bloom's Taxonomy-based objectives, assessments, scaffolding, and production asset blueprints (scripts, slides, exercises)
- **Perspective variance**: Scientific, Practical, Strategic, Philosophical, Historical, Psychological, Systems, First-Principles
- **Format variance**: Narrative, FAQ, Playbook, Dialogue, Framework, Reference, Guide
- **Full-deck builds**: Generate complete .opencode systems from knowledge architecture
- **Research integration**: Gathers current information before synthesis when needed
- **Zero bullshit**: No filler, no softening, no weasel words — just signal

## Installation

### Option 1: Run install script
```bash
# Windows
install.bat

# Unix/Mac
bash install.sh
```

### Option 2: Manual
Copy files into your `.config/opencode/` structure:
```
agent/knowledge-synthesizer.md → .config/opencode/agent/knowledge-synthesizer/
command/knowledge.md           → .config/opencode/command/
context/*                      → .config/opencode/context/knowledge/
```

## Usage

```
/knowledge {topic or question}
/knowledge {topic} @{depth} @{perspective}
/knowledge {topic} @compendium
/knowledge {topic} @variance
```

### Depth Flags
| Flag | Output | Length |
|------|--------|--------|
| `@micro` | 1-paragraph core explanation | ~100 words |
| `@brief` | Overview with key points | ~500 words |
| `@guide` | Step-by-step with examples | ~1,000 words |
| `@deep` | Comprehensive multi-section analysis | ~3,000 words |
| `@course` | Production-grade curriculum with modules, objectives, assessments, asset blueprints | Full course architecture |
| `@compendium` | Full multi-chapter volume | 10,000+ words |
| `@reference` | Structured lookup-ready | ~1,500 words |

### Perspective Flags
`@scientific` `@practical` `@strategic` `@philosophical` `@historical` `@psychological` `@systems` `@first-principles`

### Format Flags
`@variance` `@playbook` `@faq` `@dialogue` `@narrative` `@framework`

## Course Architecture (Production-Grade)

When `@course` is specified, KnowledgeSynthesizer activates a dedicated pedagogical pipeline (Stage C) that produces:

- **Curriculum Design**: Course → Modules → Lessons with progressive scaffolding
- **Learning Objectives**: Measurable outcomes at Bloom's Taxonomy levels (Remember → Create)
- **Assessment System**: Formative checks, summative exams, capstone projects with rubrics
- **Production Blueprints**: Per-lesson scripts, slide frames, exercises, summaries
- **Pedagogical Frameworks**: Constructivist theory, spaced repetition, cognitive load management, experiential learning cycle

### Course Outputs
Each course synthesis includes:
1. Course overview with prerequisites, duration, audience, outcomes
2. Module-by-module breakdown with learning objectives
3. Lesson-level content with hooks, core material, and takeaways
4. Assessment design with knowledge checks, exams, and project briefs
5. Production assets (scripts, slides, exercises) for each lesson
6. Learner experience design (onboarding, engagement, community, completion)

## Architecture

KnowledgeSynthesizer inherits the full **Veritas lineage** thinking architecture:

```
Veritas → xVeritas → VeritasX → KnowledgeSynthesizer
   ↑          ↑           ↑             ↑
 Truth    Think +    Absolute    Knowledge + Variance
 Engine    Build     Autonomy     
```

**Pipeline:** Reception → Research → First-Principles → Multi-Perspective Scan → System Mapping → Framework Application → Synthesis → Variance Generation → Structure Design → Delivery

## Examples

```bash
# Quick
/knowledge what is cognitive dissonance @micro

# Deep
/knowledge the psychology of persuasion @deep @scientific

# With variance
/knowledge stoicism @variance

# Production-grade course
/knowledge design a complete curriculum on negotiation @course
/knowledge build a course on persuasion psychology @course @practical
/knowledge create a mastery program for game theory @course @variance

# Full compendium
/knowledge I want a complete guide to negotiation @compendium
```

## Quality Guarantees

- **Truth**: Accurate to best current knowledge. Uncertainty labeled.
- **Clarity**: Core insight extractable from first section.
- **Depth**: Pushes to first principles before building up.
- **Variance**: Genuinely different versions, not restated content.
