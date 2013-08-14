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
- **Club**  
    *Has_Many*
    - **GxClass** ( through: **GxClassSet** )
    - **Studio**
    - **Instructor** ( through: **ClubInstructor** )
    - **User** ( through: **ClubUser** )
- **GxClass**  
    Unique, named classes that can be used at any and all Clubs.  
    - *Has_One*
        - **Category**
    - *Has_Many*
        - **Track** ( through: **GxClassSetTrack** )  
          Like category except more vague, and able to have multiple apply to GxClassSet
        - **GxClassSet**  
            A set of Classes at a specific Club, occurring once a week for a defined number of weeks  
            - *Has_One*
                - **Instructor**
                - **Studio**
                - **Level**
            - *Has_Many*
                - **GxClassChange**  
                  A change to a GxClassSet valid for a particular day
- **User**  
    For internal use only - updating the schedules. Not to be used for external users - they will be handled through CSI  
    *Has_Many*
    - **Club** ( through: **ClubUser** )
    - **GxClass** ( through: **GxClassSet** )
    - **GxClassSet**
