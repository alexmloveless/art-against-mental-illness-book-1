#!/bin/bash

# Activate conda environment
source ~/opt/miniconda3/etc/profile.d/conda.sh
conda activate enchillama

# List of episodes to transcribe (e39 is already running)
episodes=(
    "e40_talking_therapy_peter_laisen"
    "e42_talking_therapy_tom_langlands_lesley_buchan" 
    "e43_short_stories_honey_bees_and_serendipities"
    "e44_momentum_pt2"
)

# Function to transcribe and organize
transcribe_episode() {
    local episode=$1
    echo "Starting transcription of $episode..."
    
    # Run whisper
    whisper --model small.en --output_format txt --language en "./$episode/$episode.mp3"
    
    # Move and rename the output file
    if [ -f "./$episode.txt" ]; then
        mv "./$episode.txt" "./$episode/${episode}_transcript.md"
        echo "Completed: $episode -> ${episode}_transcript.md"
    else
        echo "Error: No output file found for $episode"
    fi
    
    echo "Finished transcription of $episode"
    echo "---"
}

# Create log file
log_file="transcription_log_$(date +%Y%m%d_%H%M%S).txt"
echo "Starting batch transcription at $(date)" > "$log_file"

# Transcribe each episode
for episode in "${episodes[@]}"; do
    transcribe_episode "$episode" 2>&1 | tee -a "$log_file"
done

echo "All transcriptions completed at $(date)" >> "$log_file"
echo "Check individual episode directories for *_transcript.md files"
