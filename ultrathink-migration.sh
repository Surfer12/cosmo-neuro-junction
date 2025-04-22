#!/bin/bash

# Ultrathink File Migration Script
# This script moves existing files into the ultrathink structure

ROOT_DIR="/Users/ryandavidoates/cosmo-neuro-junction"
echo "Starting ultrathink migration of files..."

# Create function to make directory if it doesn't exist
mkdir_if_missing() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created directory: $1"
    fi
}

# Create function to copy file (creating target directory if needed)
copy_file() {
    local source=$1
    local target=$2
    local target_dir=$(dirname "$target")
    
    mkdir_if_missing "$target_dir"
    
    if [ -f "$source" ]; then
        cp "$source" "$target"
        echo "Copied: $source -> $target"
    else
        echo "Warning: Source file doesn't exist: $source"
    fi
}

# 1. Move bauman-oates files
echo "\nProcessing bauman-oates files..."

# Core documents to narrative
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/component-analysis.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/component-analysis.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/project-file-map.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/project-file-map.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/project-index.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/project-index.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/project-organization.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/project-organization.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/proposal-for-merg.ini" "$ROOT_DIR/junction_layers/bauman-oates/narrative/proposal-for-merg.md"

# Configuration files to context
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/config/junction.ini" "$ROOT_DIR/junction_layers/bauman-oates/context/junction.ini"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/config/cursor-version-bauman-oates.ini" "$ROOT_DIR/junction_layers/bauman-oates/context/cursor-version-bauman-oates.ini"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/config/dulicate.ini" "$ROOT_DIR/junction_layers/bauman-oates/context/dulicate.ini"

# Documentation files to additional narrative
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/docs/Project-Analysis-Documentation.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/Project-Analysis-Documentation.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/docs/Project-Timeline.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/Project-Timeline.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/docs/Stepwise-Process.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/Stepwise-Process.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/docs/goose.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/goose.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/docs/Project-Goals.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/Project-Goals.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/docs/gemini.md" "$ROOT_DIR/junction_layers/bauman-oates/narrative/gemini.md"

# Therapeutic model files
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/therapeutic-model/Collaborative Junction Manifold Fractal Pathways for Implicate Integration.ini" "$ROOT_DIR/junction_layers/bauman-oates/tools/therapeutic-model/Collaborative-Junction-Manifold.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/therapeutic-model/# Ryan Oates Persona in Julia Structs.jl" "$ROOT_DIR/junction_layers/bauman-oates/tools/therapeutic-model/Ryan-Oates-Persona.jl"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/therapeutic-model/goose-grok-full-revise-mem-proj.md" "$ROOT_DIR/junction_layers/bauman-oates/tools/therapeutic-model/goose-grok-full-revise-mem-proj.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/therapeutic-model/therapeutic_model_v3.jl" "$ROOT_DIR/junction_layers/bauman-oates/tools/therapeutic-model/therapeutic_model_v3.jl"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/therapeutic-model/Emergent Frameworks in Cosmic Patterning.md" "$ROOT_DIR/junction_layers/bauman-oates/tools/therapeutic-model/Emergent-Frameworks-Cosmic-Patterning.md"

# Shark tracker files
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/shark-tracker/shark-tracker-calendar.md" "$ROOT_DIR/junction_layers/bauman-oates/tools/shark-tracker/shark-tracker-calendar.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/shark-tracker/shark-tracker-sheet.md" "$ROOT_DIR/junction_layers/bauman-oates/tools/shark-tracker/shark-tracker-sheet.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/shark-tracker/Create a project description for a shark.md" "$ROOT_DIR/junction_layers/bauman-oates/tools/shark-tracker/shark-project-description.md"
copy_file "$ROOT_DIR/services/bauman-oates/bauman-oates/shark-tracker/shark-tracker-timeline.md" "$ROOT_DIR/junction_layers/bauman-oates/tools/shark-tracker/shark-tracker-timeline.md"

# 2. Move grok-mem files
echo "\nProcessing grok-mem files..."

# Narrative files
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/storage-goose.md" "$ROOT_DIR/junction_layers/grok-mem/narrative/storage-goose.md"
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/README_TESTS.md" "$ROOT_DIR/junction_layers/grok-mem/narrative/README_TESTS.md"
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/CLAUDE.md" "$ROOT_DIR/junction_layers/grok-mem/narrative/CLAUDE.md"

# Context files
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/grok-settings.jsonc" "$ROOT_DIR/junction_layers/grok-mem/context/grok-settings.jsonc"

# Elements files
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/TherapeuticFractalFramework.jl" "$ROOT_DIR/junction_layers/grok-mem/elements/julia/TherapeuticFractalFramework.jl"
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/The user wants to compare the Julia code.jl" "$ROOT_DIR/junction_layers/grok-mem/elements/julia/Julia-code-comparison.jl"

# Timeline files
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/timeline/fractal_communication_guide.md" "$ROOT_DIR/junction_layers/grok-mem/timeline/fractal_communication_guide.md"

# Misc files
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/session-id.md" "$ROOT_DIR/junction_layers/grok-mem/misc/session-id.md"

# Models files
copy_file "$ROOT_DIR/services/grok-mem/grok-mem/## <yaml_therapeutic_model> v3.yaml" "$ROOT_DIR/junction_layers/grok-mem/models/therapeutic-model-v3.yaml"

# 3. Move root files to appropriate locations
echo "\nProcessing root files..."

copy_file "$ROOT_DIR/ultra.ini" "$ROOT_DIR/knowledge_web/methods/ultra.ini"
copy_file "$ROOT_DIR/grok-analysis-of-direct.jl" "$ROOT_DIR/emergent_spaces/experiments/grok-analysis-of-direct.jl"
copy_file "$ROOT_DIR/ultra-think-reorganzed.jl" "$ROOT_DIR/emergent_spaces/examples/ultra-think-reorganized.jl"

# Create placeholder files in other directories
echo "\nCreating placeholder files in remaining directories..."

echo "# Shared Patterns: Common Utils\n\nUtilities and functions applicable across domains." > "$ROOT_DIR/shared_patterns/common-utils/README.md"
echo "# Shared Patterns: Therapeutic Framework\n\nShared therapeutic models and frameworks that provide conceptual tools for integration." > "$ROOT_DIR/shared_patterns/therapeutic-framework/README.md"

echo "# Cosmology Data Fields\n\nDatasets related to cosmological observations, simulations, and models." > "$ROOT_DIR/data_fields/cosmology/README.md"
echo "# Neuroscience Data Fields\n\nDatasets related to neural activity, memory studies, and cognitive processes." > "$ROOT_DIR/data_fields/neuroscience/README.md"

echo "# Nodes: Core Concepts\n\nFundamental concepts from cosmology and neuroscience domains." > "$ROOT_DIR/knowledge_web/nodes/README.md"
echo "# Connections: Integration Points\n\nIsomorphic mappings and conceptual bridges between domains." > "$ROOT_DIR/knowledge_web/connections/README.md"
echo "# Methods: Junction Creation\n\nMethodologies for creating and exploring epistemological junctions." > "$ROOT_DIR/knowledge_web/methods/README.md"
echo "# References\n\nAcademic sources and external resources." > "$ROOT_DIR/knowledge_web/references/README.md"

echo "# Setup Tools\n\nTools for environment preparation and configuration." > "$ROOT_DIR/iteration_tools/setup/README.md"
echo "# Validation Tools\n\nTools for testing, verification, and quality assurance." > "$ROOT_DIR/iteration_tools/validation/README.md"
echo "# Processing Tools\n\nTools for data processing, transformation, and analysis." > "$ROOT_DIR/iteration_tools/processing/README.md"

echo "Migration completed successfully!"