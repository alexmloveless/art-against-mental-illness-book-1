# Cross-Reference System - Art Against Mental Illness Book

**Purpose**: Track and manage cross-references between chapters, concepts, and episodes to support flexible chapter ordering and compilation.

**Last Updated**: [Date]
**Updated By**: [Agent/Person]

---

## Cross-Reference Types

### Concept References - [REF:concept-name]
Used when referencing a concept, theme, or idea that's explained elsewhere in the book.

**Format**: `[REF:concept-name]`

**Examples**:
- `[REF:process-over-product]` - Core thesis about focusing on creative process rather than output
- `[REF:creative-space]` - Discussion of physical and mental creative environments
- `[REF:zen-mindset]` - Zen philosophy applications to creativity

### Chapter References - [SEE:chapter-theme]
Used when directing readers to a specific chapter for more detailed discussion.

**Format**: `[SEE:chapter-theme]`

**Examples**:
- `[SEE:space-chapter]` - Reference to chapter about creative spaces
- `[SEE:experimentation-discussion]` - Reference to experimentation-focused chapter
- `[SEE:voice-finding]` - Reference to chapter about finding creative voice

---

## Reference Database

### Concept References (REF)
*To be populated as episodes are analyzed and themes identified*

| Reference ID | Description | Source Episodes | Target Chapter/Section | Status |
|-------------|-------------|-----------------|------------------------|---------|
| [REF:process-over-product] | Core thesis about creativity for mental health | e01, e02, e07 | Introduction/Core concepts | Planned |
| [REF:creative-space] | Physical and mental creative environments | e05 | Space chapter | Planned |
| [REF:zen-mindset] | Zen philosophy applications | Multiple | Throughout | Planned |

### Chapter References (SEE)
*To be populated as chapter structure is developed*

| Reference ID | Description | Source Context | Target Chapter | Status |
|-------------|-------------|----------------|----------------|---------|
| [SEE:space-chapter] | Detailed discussion of creative spaces | When space is mentioned briefly | Space/Environment chapter | Planned |
| [SEE:process-basics] | Fundamental process concepts | Advanced discussions | Process fundamentals chapter | Planned |

---

## Reference Creation Guidelines

### Naming Conventions
- **Descriptive**: Use clear, descriptive names that indicate the concept
- **Consistent**: Maintain consistent naming patterns
- **Memorable**: Choose names that are easy to remember and type
- **Lowercase**: Use lowercase with hyphens (kebab-case)
- **No Numbers**: Avoid chapter numbers in reference names

### Good Reference Names
- `[REF:mise-en-place]` - Creative preparation concept
- `[REF:failure-learning]` - Approach to failure in creative process
- `[SEE:community-building]` - Chapter about creative community
- `[SEE:philosophy-integration]` - How philosophy supports creativity

### Poor Reference Names (Avoid)
- `[REF:Chapter5]` - Uses chapter number
- `[REF:thing]` - Not descriptive
- `[REF:Creative_Stuff]` - Uses underscore and capital
- `[SEE:ch03discussion]` - Chapter number dependent

---

## Compilation System

### Reference Resolution Process
1. **Identification**: Scan all chapter files for reference placeholders
2. **Mapping**: Match references to actual chapter numbers and titles
3. **Replacement**: Replace placeholders with proper citations
4. **Verification**: Ensure all references resolve correctly

### Replacement Format
**Concept References**:
- `[REF:process-over-product]` → "the creative process approach discussed in Chapter 3"
- `[REF:zen-mindset]` → "the Zen mindset we explored earlier"

**Chapter References**:
- `[SEE:space-chapter]` → "see Chapter 7: Creating Your Creative Space"
- `[SEE:voice-finding]` → "as we'll explore in Chapter 12: Finding Your Voice"

### Flexible Chapter Ordering
- References work regardless of final chapter order
- Chapter numbers assigned at compilation time
- Reference descriptions remain consistent
- Cross-reference validity maintained

---

## Reference Tracking During Development

### Creation Tracking
| Episode | References Created | Type | Description |
|---------|------------------|------|-------------|
| [Episode] | [REF:name] | Concept | [What it references] |
| [Episode] | [SEE:name] | Chapter | [What it points to] |

### Usage Tracking
| Reference ID | Used In Chapters | Usage Count | Resolution Status |
|-------------|-----------------|-------------|------------------|
| [REF:name] | [Chapter list] | [Number] | [Resolved/Pending] |

### Orphan References
References created but not used:
- [List references that were created but never used]

### Missing References
Concepts that should have references but don't:
- [List concepts that need reference IDs]

---

## Episode-to-Reference Mapping

### Episode Analysis Reference Output
*To be populated as episodes are processed*

#### Episode [XX]: [Title]
**Concept References Identified**:
- `[REF:concept-name]` - [Description of concept]

**Chapter References Needed**:
- `[SEE:chapter-theme]` - [What needs detailed discussion elsewhere]

**Cross-Episode Connections**:
- [Connections to other episodes' themes]

---

## Quality Assurance

### Reference Validation
- **Consistency**: All references follow naming conventions
- **Accuracy**: References point to correct concepts/chapters
- **Completeness**: All necessary cross-references are created
- **Resolution**: All references can be properly resolved

### Review Process
1. **Creation Review**: Verify new references follow guidelines
2. **Usage Review**: Ensure references are used appropriately
3. **Resolution Check**: Test compilation process
4. **Consistency Audit**: Check for duplicate or conflicting references

### Common Issues to Avoid
- References with chapter numbers in names
- Inconsistent naming patterns
- References that can't be resolved
- Missing references for important concepts
- Overuse of references (cluttering text)

---

## Tools and Automation

### Reference Search Commands
```bash
# Find all concept references
grep -r "\[REF:" --include="*.md" .

# Find all chapter references  
grep -r "\[SEE:" --include="*.md" .

# Find unresolved references (compilation check)
grep -r "\[REF:\|SEE:" --include="*.md" . | grep -v "→"
```

### Reference Management Scripts
*To be developed in Tools/ directory*

- Reference extraction script
- Validation script
- Compilation replacement script
- Orphan reference detector

---

## Agent Usage Guidelines

### When Creating References
1. **Check Existing**: Review current references before creating new ones
2. **Follow Conventions**: Use established naming patterns
3. **Document Purpose**: Note why reference was created
4. **Update Tracking**: Add to reference database

### When Using References
1. **Verify Format**: Ensure proper bracket format
2. **Choose Appropriate Type**: REF for concepts, SEE for chapters
3. **Context Check**: Ensure reference makes sense in context
4. **Avoid Overuse**: Don't reference everything

### During Chapter Development
1. **Plan References**: Think about needed references during outlining
2. **Create As Needed**: Add references during writing
3. **Track Usage**: Note where references are used
4. **Review Consistency**: Check references make sense together

---

*This cross-reference system enables flexible chapter ordering while maintaining logical connections throughout the book.*
