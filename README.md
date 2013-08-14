# SCLA/RSCNY GroupEx Schedules

## Models

### Club
- `id`
- `cAbbrv`
- `city`
- `address`
- `banner`
- `club`
- `clubNum`
- `fb`
- `fullclub`
- `link`
- `city`
- `sfdc`
- `twitter`

### Studio
- `name`
- `description`
- `club_id`

### Category
- `name`
- `description`

### Track
- `name`
- `description`

### Level
- `short`  
  "1", "1-2", etc
- `long`  
  "Beginner","Beginner to Intermediate", etc

### GxClass
- `name`
- `description`
- `category_id`

### GxClassSet
- `gx_class_id`
- `studio_id`
- `instructor_id`
- `level_id`
- `start_date`
- `repeat_times`
- `start_time`
- `end_time`

### GxClassChange
- `gx_class_set_id`
- `studio_id`
- `instructor_id`
- `start_time`
- `end_time`
- `canceled`

## Structure
- **[`Club`](#club)**  
    *Has_Many*
    - **[`GxClass`](#gxclass)es** ( through: **[`GxClassSet`](#gxclassset)** )
    - **[`Studio`](#studio)s**
    - **[`Instructor`](#instructor)s** ( through: **[`ClubInstructor`](#clubinstructor)** )
    - **[`User`](#user)s** ( through: **[`ClubUser`](#clubuser)** )
- **[`GxClass`](#gxclass)**  
    Unique, named classes that can be used at any and all Clubs.  
    - *Has_One*
        - **[`Category`](#category)**
    - *Has_Many*
        - **[`Track`](#track)s** ( through: **[`GxClassSetTrack`](#gxclasssetTrack)** )  
          Like category except more vague, and able to have multiple apply to GxClassSet
        - **[`GxClassSet`](#gxclassset)**  
            A set of Classes at a specific Club, occurring once a week for a defined number of weeks  
            - *Has_One*
                - **[`Instructor`](#instructor)**
                - **[`Studio`](#studio)**
                - **[`Level`](#level)**
            - *Has_Many*
                - **[`GxClassChange`](#gxclassChange)s**  
                  A change to a GxClassSet valid for a particular day
- **[`User`](#user)**  
    For internal use only - updating the schedules. Not to be used for external users - they will be handled through CSI  
    *Has_Many*
    - **[`Club`](#club)s** ( through: **[`ClubUser`](#clubuser)** )
    - **[`GxClass`](#gxclass)es** ( through: **[`GxClassSet`](#gxclassset)** )
    - **[`GxClassSet`](#gxclassset)s**
