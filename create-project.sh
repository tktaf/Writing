#!/bin/bash

# Creative Writing Project Setup Script
# Usage: ./create-project.sh "Project Name"

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a project name"
    echo "Usage: ./create-project.sh \"Project Name\""
    exit 1
fi

PROJECT_NAME="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$SCRIPT_DIR/$PROJECT_NAME"

echo "Creating creative writing project: $PROJECT_NAME"

# Check if project directory already exists
if [ -d "$PROJECT_DIR" ]; then
    echo "Error: Project directory '$PROJECT_NAME' already exists"
    exit 1
fi

# Create project directory
mkdir -p "$PROJECT_DIR"
echo "✓ Created project directory: $PROJECT_DIR"

# List of system files to copy
SYSTEM_FILES=(
    "Manager.md"
    "Worker.md"
    "Scoring.md"
    "Organization.md"
    "Concept.txt"
    "Config.txt"
    "ImplementationChecklistInstructions.md"
    "Prompt.txt"
    "Seed.txt"
)

# Copy system files
echo "Copying system files..."
for file in "${SYSTEM_FILES[@]}"; do
    if [ -f "$SCRIPT_DIR/$file" ]; then
        cp "$SCRIPT_DIR/$file" "$PROJECT_DIR/"
        echo "✓ Copied $file"
    else
        echo "⚠ Warning: $file not found in source directory"
    fi
done

# Create project-specific folder structure based on Organization.md
echo "Creating project folder structure..."

# Create main organizational folders
mkdir -p "$PROJECT_DIR/00-SYSTEM"
mkdir -p "$PROJECT_DIR/01-PROJECT-SETUP"
mkdir -p "$PROJECT_DIR/02-PLANNING"
mkdir -p "$PROJECT_DIR/03-RESEARCH"
mkdir -p "$PROJECT_DIR/04-WRITING"
mkdir -p "$PROJECT_DIR/05-QUALITY-CONTROL"
mkdir -p "$PROJECT_DIR/06-INTEGRATION"
mkdir -p "$PROJECT_DIR/07-FINAL-OUTPUT"
mkdir -p "$PROJECT_DIR/99-ARCHIVE"

echo "✓ Created organizational folder structure"

# Move system files to appropriate folders
echo "Organizing system files..."

# Keep Manager.md and Worker.md at project root, move others to 00-SYSTEM
mv "$PROJECT_DIR/Scoring.md" "$PROJECT_DIR/00-SYSTEM/"
mv "$PROJECT_DIR/Organization.md" "$PROJECT_DIR/00-SYSTEM/"
mv "$PROJECT_DIR/ImplementationChecklistInstructions.md" "$PROJECT_DIR/00-SYSTEM/"
mv "$PROJECT_DIR/Prompt.txt" "$PROJECT_DIR/00-SYSTEM/"

# Move project setup files to 01-PROJECT-SETUP
mv "$PROJECT_DIR/Concept.txt" "$PROJECT_DIR/01-PROJECT-SETUP/"
mv "$PROJECT_DIR/Config.txt" "$PROJECT_DIR/01-PROJECT-SETUP/"
mv "$PROJECT_DIR/Seed.txt" "$PROJECT_DIR/01-PROJECT-SETUP/"

echo "✓ Organized files into appropriate folders"

# Create detailed subfolder structure
echo "Creating detailed subfolder structure..."

# 02-PLANNING subfolders
mkdir -p "$PROJECT_DIR/02-PLANNING/Master-Outline"
mkdir -p "$PROJECT_DIR/02-PLANNING/Chapter-Outlines"
mkdir -p "$PROJECT_DIR/02-PLANNING/Task-Planning"
mkdir -p "$PROJECT_DIR/02-PLANNING/Research-Strategy"

# 03-RESEARCH subfolders
mkdir -p "$PROJECT_DIR/03-RESEARCH/Primary-Sources"
mkdir -p "$PROJECT_DIR/03-RESEARCH/Secondary-Sources"
mkdir -p "$PROJECT_DIR/03-RESEARCH/Research-Notes"
mkdir -p "$PROJECT_DIR/03-RESEARCH/Citations"
mkdir -p "$PROJECT_DIR/03-RESEARCH/Fact-Checking"

# 04-WRITING subfolders (template structure)
mkdir -p "$PROJECT_DIR/04-WRITING/Writing-Log"

# 05-QUALITY-CONTROL subfolders
mkdir -p "$PROJECT_DIR/05-QUALITY-CONTROL/Self-Assessments"
mkdir -p "$PROJECT_DIR/05-QUALITY-CONTROL/Editor-Reviews"
mkdir -p "$PROJECT_DIR/05-QUALITY-CONTROL/Revision-Tracking"
mkdir -p "$PROJECT_DIR/05-QUALITY-CONTROL/Approval-Records"
mkdir -p "$PROJECT_DIR/05-QUALITY-CONTROL/Quality-Standards"

# 06-INTEGRATION subfolders
mkdir -p "$PROJECT_DIR/06-INTEGRATION/Consistency-Checks"
mkdir -p "$PROJECT_DIR/06-INTEGRATION/Cross-References"
mkdir -p "$PROJECT_DIR/06-INTEGRATION/Combined-Drafts"
mkdir -p "$PROJECT_DIR/06-INTEGRATION/Integration-Tools"

# 07-FINAL-OUTPUT subfolders
mkdir -p "$PROJECT_DIR/07-FINAL-OUTPUT/Deliverables"
mkdir -p "$PROJECT_DIR/07-FINAL-OUTPUT/Documentation"
mkdir -p "$PROJECT_DIR/07-FINAL-OUTPUT/Archive-Ready"
mkdir -p "$PROJECT_DIR/07-FINAL-OUTPUT/Client-Package"

# 99-ARCHIVE subfolders
mkdir -p "$PROJECT_DIR/99-ARCHIVE/Unused-Content"
mkdir -p "$PROJECT_DIR/99-ARCHIVE/Version-History"
mkdir -p "$PROJECT_DIR/99-ARCHIVE/Project-History"

echo "✓ Created detailed subfolder structure"

# Create README file for the project
cat > "$PROJECT_DIR/README.md" << EOF
# $PROJECT_NAME

Creative writing project created on $(date)

## Project Structure

This project follows the systematic creative writing workflow defined in the system files located in \`00-SYSTEM/\`.

### Getting Started

1. **Review System Files**: Start by reading the files in \`00-SYSTEM/\` to understand the workflow
2. **Complete Project Setup**: Fill out \`01-PROJECT-SETUP/Concept.txt\` and \`01-PROJECT-SETUP/Config.txt\`
3. **Plan Your Story**: Use \`02-PLANNING/\` to develop your story outline and structure
4. **Begin Writing**: Follow the systematic approach outlined in the system files

### Key Files

- **Manager.md**: Editorial role and responsibilities (at project root)
- **Worker.md**: Writer role and responsibilities (at project root)
- **00-SYSTEM/Scoring.md**: Quality evaluation system (95+ required)
- **00-SYSTEM/Organization.md**: Project organization guidelines
- **00-SYSTEM/ImplementationChecklistInstructions.md**: Template for creating scene-specific task lists
- **00-SYSTEM/Prompt.txt**: LLM prompt for expanding story ideas into complete Concept.txt and Config.txt

### Project Configuration

- **01-PROJECT-SETUP/Seed.txt**: Initial creative inspiration and story seed
- **01-PROJECT-SETUP/Concept.txt**: Story vision and creative direction
- **01-PROJECT-SETUP/Config.txt**: Story requirements and specifications

## Workflow

This project uses an LLM-to-LLM workflow where:
1. Editor provides strategic guidance and task assignments
2. Writer completes systematic scene/chapter development
3. Both Editor and Writer must score work 95+ using Scoring.md
4. Memory bank integration maintains story continuity
5. Systematic quality control ensures creative excellence

Created by Creative Writing Workflow System v1.0
EOF

echo "✓ Created project README.md"

# Create initial log files
cat > "$PROJECT_DIR/04-WRITING/Writing-Log/Progress-Context.md" << EOF
# Writing Progress Log - $PROJECT_NAME

## Project Started
Date: $(date)

## Completion Status
- [ ] Seed.txt captured initial inspiration
- [ ] Concept.txt completed
- [ ] Config.txt completed  
- [ ] Story outline developed
- [ ] Chapter outlines created
- [ ] Scene implementation began

## Current Focus
[Update with current writing focus]

## Recent Accomplishments
[Track completed scenes/chapters]

## Next Steps
[Plan upcoming work]

## Notes & Insights
[Creative discoveries and decisions]
EOF

echo "✓ Created initial progress log"

# Create a quick start guide
cat > "$PROJECT_DIR/QUICK-START.md" << EOF
# Quick Start Guide - $PROJECT_NAME

## Immediate Next Steps

### 1. Define Your Story (Editor Role)
- [ ] Start: Capture initial inspiration in \`01-PROJECT-SETUP/Seed.txt\`
- [ ] Option A: Use \`00-SYSTEM/Prompt.txt\` to expand Seed.txt into complete Concept.txt and Config.txt
- [ ] Option B: Manually develop \`01-PROJECT-SETUP/Concept.txt\` and \`Config.txt\` from your Seed.txt
- [ ] Review \`00-SYSTEM/Organization.md\` for project structure

### 2. Plan Your Story (Editor Role)  
- [ ] Create master story outline in \`02-PLANNING/Master-Outline/\`
- [ ] Develop chapter outlines in \`02-PLANNING/Chapter-Outlines/\`
- [ ] Plan research needs in \`02-PLANNING/Research-Strategy/\`

### 3. Begin Writing (Worker Role)
- [ ] Review \`Worker.md\` for responsibilities
- [ ] Use \`00-SYSTEM/ImplementationChecklistInstructions.md\` as guide
- [ ] Start with Chapter 1, Scene 1 following systematic checklist

### 4. Quality Control (Both Roles)
- [ ] Use \`00-SYSTEM/Scoring.md\` for all evaluations
- [ ] Both Manager and Worker must score 95+ before proceeding
- [ ] Document all work in appropriate folders

## Important Reminders

- This is an LLM-to-LLM workflow optimized for conversation-based collaboration
- Quality standards are non-negotiable (95+ scoring requirement)
- Systematic documentation ensures story continuity
- Every scene requires complete Implementation checklist completion

Ready to create your story!
EOF

echo "✓ Created quick start guide"

# Make the script executable if it isn't already
chmod +x "$SCRIPT_DIR/create-project.sh" 2>/dev/null

# Final summary
echo ""
echo "🎉 Project '$PROJECT_NAME' created successfully!"
echo ""
echo "Project location: $PROJECT_DIR"
echo ""
echo "Next steps:"
echo "1. cd \"$PROJECT_NAME\""
echo "2. Read QUICK-START.md for immediate next steps"
echo "3. Start with Seed.txt, then complete Concept.txt and Config.txt in 01-PROJECT-SETUP/"
echo "4. Begin systematic story development using the workflow"
echo ""
echo "Happy writing! 📝"