# SCLA/RSCNY GroupEx Schedules

## Models

### User
- `string :email`
- `boolean :approved`
- `boolean :admin`

### Club
- `integer :id`
- `string :cAbbrv`
- `string :city`
- `string :address`
- `string :brand`  
  Sports Club/LA or Reebok Sports Club/NY
- `string :phone`
- `string :link`
- `string :city`
- `string :sfdc_name`
- `string :fb`
- `string :twitter`
- `string :timezone`

### Studio
- `string :name`
- `text :description`
- `integer :club_id`

### Category
- `string :name`
- `text :description`

### Track
- `string :name`
- `text :description`

### Level
- `string :short`  
  "1", "1-2", etc
- `string :long`  
  "Beginner","Beginner to Intermediate", etc

### GxClass
- `string :name`
- `text :description`
- `integer :category_id`

### GxClassSet
- `integer :gx_class_id`
- `integer :studio_id`
- `integer :instructor_id`
- `integer :level_id`
- `date :start_date`
- `integer :repeat_times`
- `time :start_time`
- `time :end_time`
- `boolean :reservable`
- `integer :reserve_max`

### GxClassChange
- `integer :gx_class_set_id`
- `integer :studio_id`
- `integer :instructor_id`
- `time :start_time`
- `time :end_time`
- `boolean :canceled`

### Connector Models

#### ClubInstructor
#### ClubUser
#### GxClassTrack

## Structure
- **[`Club`](#club)**  
    *Has_Many*
    - **[`GxClass`](#gxclass)es** :( through: **[`GxClassSet`](#gxclassset)** )
    - **[`Studio`](#studio)s**
    - **[`Instructor`](#instructor)s** :( through: **[`ClubInstructor`](#clubinstructor)** )
    - **[`User`](#user)s** :( through: **[`ClubUser`](#clubuser)** )
- **[`GxClass`](#gxclass)**  
    Unique, named classes that can be used at any and all [`Club`](#club)s.  
    - *Has_One*
        - **[`Category`](#category)**
    - *Has_Many*
        - **[`Track`](#track)s** :( through: **[`GxClassTrack`](#gxclasstrack)** )  
          Like [`Category`](#category) :except more vague, and able to have multiple apply to [`GxClass`](#gxclass)
        - **[`GxClassSet`](#gxclassset)**  
            A set of [`GxClass`](#gxclass)es :at a specific [`Club`](#club), occurring once a week for a defined number of weeks  
            - *Has_One*
                - **[`Instructor`](#instructor)**
                - **[`Studio`](#studio)**
                - **[`Level`](#level)**
            - *Has_Many*
                - **[`GxClassChange`](#gxclasschange)s**  
                  A change to a [`GxClassSet`](#gxclassset) valid for a particular day
- **[`User`](#user)**  
    For internal use only - updating the schedules. Not to be used for external users - they will be handled through CSI  
    *Has_Many*
    - **[`Club`](#club)s** :( through: **[`ClubUser`](#clubuser)** )
    - **[`GxClass`](#gxclass)es** :( through: **[`GxClassSet`](#gxclassset)** )
    - **[`GxClassSet`](#gxclassset)s**
