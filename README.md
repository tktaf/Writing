# Creative Writing Workflow System

A comprehensive, systematic approach to creative writing designed for LLM-to-LLM collaboration with integrated knowledge management and quality control.

## Overview

This repository contains a complete creative writing workflow system that ensures consistent quality, story continuity, and systematic development through structured collaboration between Editor and Writer LLM roles.

### Key Features

- **LLM-Optimized Workflow**: Designed specifically for AI collaboration
- **Mandatory Memory Bank Integration**: Uses MCP memoryBank tools for story knowledge management
- **Internet Research Integration**: Uses MCP duckduckgo for factual accuracy
- **95+ Quality Requirement**: Systematic scoring system ensures excellence
- **Complete Project Structure**: Automated setup for organized story development
- **Scene-by-Scene Development**: Detailed Implementation checklists for systematic progress

## Quick Start

### 1. Create a New Project
```bash
./create-project.sh "Your Story Name"
cd "Your Story Name"
```

### 2. Begin Story Development
1. **Capture Inspiration**: Fill out `01-PROJECT-SETUP/Seed.txt`
2. **Document Characters**: Add existing characters to `01-PROJECT-SETUP/Characters.md`
3. **Develop Concept**: Use `00-SYSTEM/Prompt.txt` to expand Seed.txt and Characters.md into complete `Concept.txt` and `Config.txt`
4. **Plan Story**: Create outlines in `02-PLANNING/`
5. **Begin Writing**: Follow systematic scene development using `00-SYSTEM/ImplementationChecklistInstructions.md`

## System Files

### Core Workflow
- **`Editor.md`**: Editorial role definition with story oversight and MCP integration requirements
- **`Writer.md`**: Writer role definition with systematic development and MCP integration requirements
- **`Scoring.md`**: 6-category scoring system (95+ required for quality gates)
- **`Organization.md`**: Project structure and folder organization

### Templates & Tools
- **`Seed.txt`**: Template for capturing initial creative inspiration
- **`Characters.md`**: Pre-created character registry with naming requirements
- **`Concept.txt`**: Story vision and creative direction template
- **`Config.txt`**: Story requirements and specifications template
- **`Prompt.txt`**: LLM prompt for expanding seeds and characters into complete concepts
- **`ImplementationChecklistInstructions.md`**: Meta-template for creating scene-specific task lists

### Setup Tools
- **`create-project.sh`**: Automated project creation with complete folder structure

## Memory Bank Integration (CRITICAL)

This workflow **REQUIRES** the memoryBank MCP to function properly. The system uses:

- **`mcp__memoryBank__create_entities`**: For characters, settings, plot threads
- **`mcp__memoryBank__create_relations`**: For character/plot/setting relationships  
- **`mcp__memoryBank__add_observations`**: For updating story knowledge
- **`mcp__memoryBank__search_nodes`**: For context retrieval
- **`mcp__memoryBank__open_nodes`**: For accessing specific story elements
- **`mcp__memoryBank__read_graph`**: For complete story state review

## Research Integration (CRITICAL)

Factual accuracy is maintained through:

- **`mcp__duckduckgo__duckduckgo_web_search`**: For all real-world information verification
- **Required research protocols**: Built into every scene development phase
- **Fantasy element exceptions**: Research requirements bypass for creative elements

## Quality Control

### Scoring System
- **Content Quality & Completeness**: 25 points
- **Structure & Organization**: 20 points  
- **Writing Quality & Style**: 20 points
- **Research & Accuracy**: 15 points
- **Technical Compliance**: 10 points
- **Reader Engagement**: 10 points

**Total: 100 points | Minimum Required: 95 points**

### Quality Gates
- Every scene must score 95+ before proceeding
- Both Editor and Writer must approve quality
- Memory bank updates mandatory for continuity
- Research verification required for factual elements

## Project Structure

Each project follows this organizational structure:

```
Project-Name/
├── 00-SYSTEM/              # Workflow system files
├── 01-PROJECT-SETUP/       # Seed, Concept, Config files
├── 02-PLANNING/            # Outlines and planning documents
├── 03-RESEARCH/            # Research materials and notes
├── 04-WRITING/             # Active writing and scene development
├── 05-QUALITY-CONTROL/     # Assessments and reviews
├── 06-INTEGRATION/         # Story integration and consistency
├── 07-FINAL-OUTPUT/        # Completed deliverables
└── 99-ARCHIVE/             # Historical versions and unused content
```

## Workflow Process

### 1. Story Initialization
- Editor captures inspiration in Seed.txt
- Develops Concept.txt and Config.txt
- Establishes memory bank entities for core story elements

### 2. Planning Phase
- Create master outline with memory bank integration
- Develop chapter outlines with plot thread mapping
- Plan research strategy for factual elements

### 3. Writing Phase
- Scene-by-scene development using Implementation checklists
- Mandatory memory bank updates after each scene
- Internet research integration for accuracy
- 95+ scoring requirement before proceeding

### 4. Quality Control
- Systematic scoring using Scoring.md
- Memory bank consistency verification
- Story integration checks
- Editorial review and approval

### 5. Integration & Completion
- Cross-scene consistency verification
- Final memory bank state documentation
- Complete story package assembly

## Technical Requirements

### Required MCP Servers
- **memoryBank**: For story knowledge management
- **duckduckgo**: For internet research

### Supported Platforms
- Compatible with any environment supporting MCP tools
- Optimized for conversation-based LLM collaboration
- No external file system dependencies

## Contributing

This workflow system is designed for continuous improvement:

1. Monitor effectiveness across projects
2. Refine templates based on real usage
3. Enhance MCP integration protocols
4. Improve quality control measures

## License

Creative Writing Workflow System - Designed for collaborative creative excellence.

---

**Created**: December 2024  
**Version**: 1.0  
**Optimized for**: LLM-to-LLM creative collaboration with systematic quality control