# Cross-Reference Management Tools

This document describes tools and scripts for managing the cross-reference system during book development and compilation.

## Reference Search and Validation

### Basic Search Commands

#### Find All References
```bash
# Find all concept references in the project
grep -r "\[REF:" --include="*.md" . | sort

# Find all chapter references in the project  
grep -r "\[SEE:" --include="*.md" . | sort

# Find all references (both types)
grep -r "\[REF:\|SEE:" --include="*.md" . | sort
```

#### Reference Validation
```bash
# Check for properly formatted references
grep -r "\[REF:[a-z-]*\]" --include="*.md" .
grep -r "\[SEE:[a-z-]*\]" --include="*.md" .

# Find improperly formatted references (with numbers or caps)
grep -r "\[REF:[^a-z-]*\]" --include="*.md" .
grep -r "\[SEE:[^A-Z-]*\]" --include="*.md" .
```

#### Reference Counting
```bash
# Count reference usage
grep -r "\[REF:" --include="*.md" . | wc -l
grep -r "\[SEE:" --include="*.md" . | wc -l

# Count unique references
grep -r "\[REF:" --include="*.md" . | sed 's/.*\(\[REF:[^]]*\]\).*/\1/' | sort | uniq | wc -l
```

## Reference Extraction and Analysis

### Extract All References Script
```bash
#!/bin/bash
# extract_references.sh - Extract all references from project files

echo "=== CONCEPT REFERENCES (REF) ==="
grep -rho "\[REF:[^]]*\]" --include="*.md" . | sort | uniq

echo ""
echo "=== CHAPTER REFERENCES (SEE) ==="
grep -rho "\[SEE:[^]]*\]" --include="*.md" . | sort | uniq

echo ""
echo "=== REFERENCE USAGE COUNT ==="
echo "Total REF references: $(grep -r "\[REF:" --include="*.md" . | wc -l)"
echo "Unique REF references: $(grep -rho "\[REF:[^]]*\]" --include="*.md" . | sort | uniq | wc -l)"
echo "Total SEE references: $(grep -r "\[SEE:" --include="*.md" . | wc -l)"
echo "Unique SEE references: $(grep -rho "\[SEE:[^]]*\]" --include="*.md" . | sort | uniq | wc -l)"
```

### Reference Location Mapping
```bash
#!/bin/bash
# map_references.sh - Show where each reference is used

echo "=== REFERENCE LOCATION MAPPING ==="
for ref in $(grep -rho "\[REF:[^]]*\]" --include="*.md" . | sort | uniq); do
    echo "Reference: $ref"
    grep -rn "$ref" --include="*.md" . | sed 's/^/  /'
    echo ""
done

for ref in $(grep -rho "\[SEE:[^]]*\]" --include="*.md" . | sort | uniq); do
    echo "Reference: $ref"
    grep -rn "$ref" --include="*.md" . | sed 's/^/  /'
    echo ""
done
```

## Reference Validation Tools

### Format Validation Script
```bash
#!/bin/bash
# validate_references.sh - Check reference format compliance

echo "=== CHECKING REFERENCE FORMAT ==="

# Check for invalid characters in REF references
invalid_ref=$(grep -r "\[REF:[^a-z-]*\]" --include="*.md" .)
if [ ! -z "$invalid_ref" ]; then
    echo "❌ INVALID REF FORMAT FOUND:"
    echo "$invalid_ref"
    echo ""
else
    echo "✅ All REF references use valid format"
fi

# Check for invalid characters in SEE references  
invalid_see=$(grep -r "\[SEE:[^a-z-]*\]" --include="*.md" .)
if [ ! -z "$invalid_see" ]; then
    echo "❌ INVALID SEE FORMAT FOUND:"
    echo "$invalid_see"
    echo ""
else
    echo "✅ All SEE references use valid format"
fi

# Check for references with numbers (should be avoided)
numbered_refs=$(grep -r "\[REF:[^]]*[0-9][^]]*\]" --include="*.md" .)
if [ ! -z "$numbered_refs" ]; then
    echo "⚠️  NUMBERED REFERENCES FOUND (consider renaming):"
    echo "$numbered_refs"
    echo ""
fi

numbered_sees=$(grep -r "\[SEE:[^]]*[0-9][^]]*\]" --include="*.md" .)
if [ ! -z "$numbered_sees" ]; then
    echo "⚠️  NUMBERED CHAPTER REFERENCES FOUND (consider renaming):"
    echo "$numbered_sees"
    echo ""
fi
```

### Orphan Reference Detection
```bash
#!/bin/bash
# find_orphans.sh - Find references that are defined but never used

echo "=== ORPHAN REFERENCE DETECTION ==="

# This would need to be customized based on how references are defined
# For now, it finds references that appear only once (might be orphans)

echo "References appearing only once (potential orphans):"
(grep -rho "\[REF:[^]]*\]" --include="*.md" . && grep -rho "\[SEE:[^]]*\]" --include="*.md" .) | \
    sort | uniq -c | awk '$1 == 1 {print $2}'
```

## Compilation Tools

### Reference Resolution Template
```bash
#!/bin/bash
# resolve_references.sh - Template for reference resolution during compilation

# This script would be customized based on final chapter structure
# For now, it provides a template for the resolution process

echo "=== REFERENCE RESOLUTION PROCESS ==="

# Step 1: Extract all references
echo "1. Extracting all references..."
refs=$(grep -rho "\[REF:[^]]*\]" --include="*.md" . | sort | uniq)
sees=$(grep -rho "\[SEE:[^]]*\]" --include="*.md" . | sort | uniq)

# Step 2: Map to chapters (this would be customized based on final structure)
echo "2. Mapping references to chapters..."
echo "This step requires final chapter structure to be implemented"

# Step 3: Generate replacement rules
echo "3. Generating replacement rules..."
echo "This step would create sed/awk commands to replace references"

# Step 4: Apply replacements
echo "4. Applying replacements..."
echo "This step would execute the replacements on final draft files"
```

### Chapter Cross-Reference Report
```bash
#!/bin/bash
# chapter_crossref_report.sh - Generate cross-reference report for chapters

echo "=== CHAPTER CROSS-REFERENCE REPORT ==="

# Find which chapters reference other chapters
for chapter_dir in Drafts/*/; do
    if [ -d "$chapter_dir" ]; then
        chapter_name=$(basename "$chapter_dir")
        echo "Chapter: $chapter_name"
        
        # Find references in this chapter
        refs_in_chapter=$(find "$chapter_dir" -name "*.md" -exec grep -ho "\[REF:[^]]*\]" {} \; | sort | uniq)
        sees_in_chapter=$(find "$chapter_dir" -name "*.md" -exec grep -ho "\[SEE:[^]]*\]" {} \; | sort | uniq)
        
        if [ ! -z "$refs_in_chapter" ]; then
            echo "  Concept References:"
            echo "$refs_in_chapter" | sed 's/^/    /'
        fi
        
        if [ ! -z "$sees_in_chapter" ]; then
            echo "  Chapter References:"
            echo "$sees_in_chapter" | sed 's/^/    /'
        fi
        
        if [ -z "$refs_in_chapter" ] && [ -z "$sees_in_chapter" ]; then
            echo "  No cross-references found"
        fi
        
        echo ""
    fi
done
```

## Quality Assurance Tools

### Reference Quality Check
```bash
#!/bin/bash
# reference_quality_check.sh - Comprehensive quality check for references

echo "=== REFERENCE QUALITY ASSURANCE ==="

# Check 1: Format compliance
echo "1. Format Compliance Check:"
./validate_references.sh

# Check 2: Reference distribution
echo "2. Reference Distribution:"
echo "Files with most references:"
grep -r "\[REF:\|SEE:" --include="*.md" . | cut -d: -f1 | sort | uniq -c | sort -nr | head -10

# Check 3: Most used references
echo ""
echo "3. Most Used References:"
(grep -rho "\[REF:[^]]*\]" --include="*.md" . && grep -rho "\[SEE:[^]]*\]" --include="*.md" .) | \
    sort | uniq -c | sort -nr | head -10

# Check 4: Reference consistency
echo ""
echo "4. Reference Naming Consistency:"
echo "Similar reference names (check for duplicates):"
(grep -rho "\[REF:[^]]*\]" --include="*.md" . && grep -rho "\[SEE:[^]]*\]" --include="*.md" .) | \
    sort | uniq | while read ref; do
        similar=$(echo "$refs_all" | grep -i "$(echo "$ref" | sed 's/\[REF:\|SEE://g' | sed 's/\]//g')")
        if [ $(echo "$similar" | wc -l) -gt 1 ]; then
            echo "$similar"
        fi
    done
```

## Usage Guidelines for Tools

### Development Workflow
1. **During Episode Processing**: Use extraction tools to identify new references
2. **During Chapter Writing**: Use validation tools to check reference format
3. **Regular Quality Checks**: Run quality assurance tools periodically
4. **Pre-Compilation**: Use resolution tools to prepare for final compilation

### Tool Integration with Git
```bash
# Add to git hooks for automatic validation
echo "#!/bin/bash" > .git/hooks/pre-commit
echo "./Tools/validate_references.sh" >> .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

### Maintenance
- Update tools as reference system evolves
- Add new validation rules as patterns emerge
- Customize compilation tools based on final chapter structure
- Document any tool modifications for future agents

---

*These tools support the cross-reference system by providing automation, validation, and quality assurance capabilities.*
