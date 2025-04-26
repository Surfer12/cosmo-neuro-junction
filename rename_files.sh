#!/bin/bash

# Script to rename files in cosmo-neuro-junction project using underscores
# Log file for tracking changes
LOG_FILE="/Users/ryandavidoates/cosmo-neuro-junction/rename_log_$(date +%Y%m%d_%H%M%S).txt"

echo "File Renaming Log - $(date)" > "$LOG_FILE"
echo "=====================================" >> "$LOG_FILE"

# Function to rename file and log the change
rename_file() {
    local old_name="$1"
    local new_name="$2"
    if [ -f "$old_name" ]; then
        mv "$old_name" "$new_name"
        echo "Renamed: $old_name -> $new_name" >> "$LOG_FILE"
        echo "Renamed: $old_name -> $new_name"
    else
        echo "File not found: $old_name" >> "$LOG_FILE"
        echo "File not found: $old_name"
    fi
}

# Root directory renames
cd /Users/ryandavidoates/cosmo-neuro-junction/
rename_file "claude_perspective.md" "claude_perspective_analysis.md"
rename_file "CLAUDE.md" "claude_overview.md"
rename_file "document-it.md" "documentation_guidelines.md"
rename_file "file_Rename.cursorrule" "file_renaming_framework.md"
rename_file "grok-analysis-of-direct.jl" "grok_direct_analysis.jl"
rename_file "julia_cognitive_bridging.md" "julia_cognitive_framework.md"
rename_file "JUNCTION_MANIFEST.md" "junction_integration_manifest.md"
rename_file "resume-from.md" "project_resume_point.md"
rename_file "ultra-think-reorganzed.jl" "ultrathink_reorganization_script.jl"
rename_file "ultra.ini" "ultrathink_config.ini"
rename_file "ultrathink-migration.sh" "ultrathink_migration_script.sh"

# junction_layers/grok-mem renames
rename_file "junction_layers/grok-mem/misc/session-id.md" "junction_layers/grok-mem/misc/grok_mem_session_identifier.md"
rename_file "junction_layers/grok-mem/context/grok-settings.jsonc" "junction_layers/grok-mem/context/grok_mem_settings_config.jsonc"
rename_file "junction_layers/grok-mem/narrative/storage-goose.md" "junction_layers/grok-mem/narrative/grok_mem_storage_goose_narrative.md"
rename_file "junction_layers/grok-mem/narrative/README_TESTS.md" "junction_layers/grok-mem/narrative/grok_mem_tests_overview.md"
rename_file "junction_layers/grok-mem/narrative/CLAUDE.md" "junction_layers/grok-mem/narrative/grok_mem_claude_narrative.md"
rename_file "junction_layers/grok-mem/models/therapeutic-model-v3.yaml" "junction_layers/grok-mem/models/grok_mem_therapeutic_model_v3.yaml"
rename_file "junction_layers/grok-mem/elements/julia/Julia-code-comparison.jl" "junction_layers/grok-mem/elements/julia/grok_mem_julia_code_comparison.jl"
rename_file "junction_layers/grok-mem/elements/julia/TherapeuticFractalFramework.jl" "junction_layers/grok-mem/elements/julia/grok_mem_therapeutic_fractal_framework.jl"
rename_file "junction_layers/grok-mem/timeline/fractal_communication_guide.md" "junction_layers/grok-mem/timeline/grok_mem_fractal_communication_guide.md"

# junction_layers/bauman-oates renames
rename_file "junction_layers/bauman-oates/tools/shark-tracker/shark-tracker-calendar.md" "junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_calendar.md"
rename_file "junction_layers/bauman-oates/tools/shark-tracker/shark-tracker-sheet.md" "junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_sheet.md"
rename_file "junction_layers/bauman-oates/tools/shark-tracker/shark-project-description.md" "junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_description.md"
rename_file "junction_layers/bauman-oates/tools/shark-tracker/shark-tracker-timeline.md" "junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_timeline.md"
rename_file "junction_layers/bauman-oates/tools/therapeutic-model/Emergent-Frameworks-Cosmic-Patterning.md" "junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_emergent_frameworks_cosmic_patterning.md"
rename_file "junction_layers/bauman-oates/tools/therapeutic-model/Collaborative-Junction-Manifold.md" "junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_collaborative_junction_manifold.md"
rename_file "junction_layers/bauman-oates/tools/therapeutic-model/Ryan-Oates-Persona.jl" "junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_ryan_oates_persona.jl"
rename_file "junction_layers/bauman-oates/tools/therapeutic-model/goose-grok-full-revise-mem-proj.md" "junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_goose_grok_memory_revision.md"
rename_file "junction_layers/bauman-oates/tools/therapeutic-model/therapeutic_model_v3.jl" "junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_therapeutic_model_v3.jl"
rename_file "junction_layers/bauman-oates/context/junction.ini" "junction_layers/bauman-oates/context/bauman_oates_junction_config.ini"
rename_file "junction_layers/bauman-oates/context/cursor-version-bauman-oates.ini" "junction_layers/bauman-oates/context/bauman_oates_cursor_version_config.ini"
rename_file "junction_layers/bauman-oates/context/dulicate.ini" "junction_layers/bauman-oates/context/bauman_oates_duplicate_config.ini"
rename_file "junction_layers/bauman-oates/narrative/Project-Analysis-Documentation.md" "junction_layers/bauman-oates/narrative/bauman_oates_project_analysis_documentation.md"
rename_file "junction_layers/bauman-oates/narrative/component-analysis.md" "junction_layers/bauman-oates/narrative/bauman_oates_component_analysis.md"
rename_file "junction_layers/bauman-oates/narrative/proposal-for-merg.md" "junction_layers/bauman-oates/narrative/bauman_oates_proposal_for_merge.md"
rename_file "junction_layers/bauman-oates/narrative/Project-Timeline.md" "junction_layers/bauman-oates/narrative/bauman_oates_project_timeline.md"
rename_file "junction_layers/bauman-oates/narrative/project-file-map.md" "junction_layers/bauman-oates/narrative/bauman_oates_project_file_map.md"
rename_file "junction_layers/bauman-oates/narrative/Stepwise-Process.md" "junction_layers/bauman-oates/narrative/bauman_oates_stepwise_process.md"
rename_file "junction_layers/bauman-oates/narrative/goose.md" "junction_layers/bauman-oates/narrative/bauman_oates_goose_narrative.md"
rename_file "junction_layers/bauman-oates/narrative/Project-Goals.md" "junction_layers/bauman-oates/narrative/bauman_oates_project_goals.md"
rename_file "junction_layers/bauman-oates/narrative/gemini.md" "junction_layers/bauman-oates/narrative/bauman_oates_gemini_narrative.md"
rename_file "junction_layers/bauman-oates/narrative/project-index.md" "junction_layers/bauman-oates/narrative/bauman_oates_project_index.md"
rename_file "junction_layers/bauman-oates/narrative/project-organization.md" "junction_layers/bauman-oates/narrative/bauman_oates_project_organization.md"

# emergent_spaces renames
rename_file "emergent_spaces/experiments/grok-analysis-of-direct.jl" "emergent_spaces/experiments/experiment_grok_direct_analysis.jl"
rename_file "emergent_spaces/examples/ultra-think-reorganized.jl" "emergent_spaces/examples/example_ultrathink_reorganization.jl"

# knowledge_web renames
rename_file "knowledge_web/methods/ultra.ini" "knowledge_web/methods/ultrathink_method_config.ini"

echo "Renaming process completed. Check the log file at $LOG_FILE for details." >> "$LOG_FILE"
echo "Renaming process completed. Check the log file at $LOG_FILE for details."
