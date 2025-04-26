#!/bin/bash

# Script to remove duplicate files from /Users/ryandavidoates/bauman-oates/
# Log file for tracking deletions
LOG_FILE="/Users/ryandavidoates/cosmo-neuro-junction/remove_duplicates_log_$(date +%Y%m%d_%H%M%S).txt"

# Backup directory for safety
BACKUP_DIR="/Users/ryandavidoates/bauman-oates_backup_$(date +%Y%m%d_%H%M%S)"

echo "Duplicate Removal Log - $(date)" > "$LOG_FILE"
echo "=====================================" >> "$LOG_FILE"

echo "Creating backup of /Users/ryandavidoates/bauman-oates/ at $BACKUP_DIR" >> "$LOG_FILE"
echo "Creating backup of /Users/ryandavidoates/bauman-oates/ at $BACKUP_DIR"
cp -r /Users/ryandavidoates/bauman-oates/ "$BACKUP_DIR"

# Function to remove file if duplicate exists in cosmo-neuro-junction and log the action
remove_if_duplicate() {
    local original_file="$1"
    local duplicate_file="$2"
    if [ -f "$duplicate_file" ]; then
        # Verify content match using md5
        original_hash=$(md5 -q "$original_file")
        duplicate_hash=$(md5 -q "$duplicate_file")
        if [ "$original_hash" = "$duplicate_hash" ]; then
            rm "$original_file"
            echo "Removed duplicate: $original_file (matches $duplicate_file)" >> "$LOG_FILE"
            echo "Removed duplicate: $original_file (matches $duplicate_file)"
        else
            echo "Content mismatch, kept: $original_file (does not match $duplicate_file)" >> "$LOG_FILE"
            echo "Content mismatch, kept: $original_file (does not match $duplicate_file)"
        fi
    else
        echo "Duplicate not found, kept: $original_file (no match at $duplicate_file)" >> "$LOG_FILE"
        echo "Duplicate not found, kept: $original_file (no match at $duplicate_file)"
    fi
}

# Remove duplicates by checking each file
echo "Checking and removing duplicates..." >> "$LOG_FILE"
echo "Checking and removing duplicates..."

# Mapping of original files to their duplicates in cosmo-neuro-junction
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/component-analysis.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_component_analysis.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/project-file-map.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_project_file_map.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/project-index.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_project_index.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/project-organization.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_project_organization.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/config/cursor-version-bauman-oates.ini" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/context/bauman_oates_cursor_version_config.ini"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/config/dulicate.ini" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/context/bauman_oates_duplicate_config.ini"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/config/junction.ini" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/context/bauman_oates_junction_config.ini"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/docs/gemini.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_gemini_narrative.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/docs/goose.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_goose_narrative.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/docs/Project-Analysis-Documentation.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_project_analysis_documentation.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/docs/Project-Goals.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_project_goals.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/docs/Project-Timeline.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_project_timeline.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/docs/Stepwise-Process.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_stepwise_process.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/shark-tracker/shark-tracker-calendar.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_calendar.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/shark-tracker/shark-tracker-sheet.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_sheet.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/shark-tracker/Create a project description for a shark.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_description.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/shark-tracker/shark-tracker-timeline.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/shark-tracker/bauman_oates_shark_tracker_timeline.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/therapeutic-model/Emergent Frameworks in Cosmic Patterning.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_emergent_frameworks_cosmic_patterning.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/therapeutic-model/Collaborative Junction Manifold Fractal Pathways for Implicate Integration.ini" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_collaborative_junction_manifold.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/therapeutic-model/# Ryan Oates Persona in Julia Structs.jl" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_ryan_oates_persona.jl"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/therapeutic-model/goose-grok-full-revise-mem-proj.md" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_goose_grok_memory_revision.md"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/therapeutic-model/therapeutic_model_v3.jl" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/tools/therapeutic-model/bauman_oates_therapeutic_model_v3.jl"
remove_if_duplicate "/Users/ryandavidoates/bauman-oates/proposal-for-merg.ini" "/Users/ryandavidoates/cosmo-neuro-junction/junction_layers/bauman-oates/narrative/bauman_oates_proposal_for_merge.md"

echo "Duplicate removal process completed. Check the log file at $LOG_FILE for details." >> "$LOG_FILE"
echo "Duplicate removal process completed. Check the log file at $LOG_FILE for details."
