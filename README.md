# SCLA/RSCNY GroupEx Schedules

## Models

### User
- `string first_name`
- `string last_name`
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
- `string :sfdc_name`
- `string :fb`
- `string :twitter`
- `string :timezone`

### Instructor
- `string :first_name`
- `string :last_name`
- `text :bio`
- `boolean :trains`
- `string :csi_id`

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

### GxClass
- `string :name`
- `text :description`
- `integer :category_id`

### GxClassSet
- `integer :gx_class_id`
- `integer :studio_id`
- `integer :instructor_id`
- `integer :level`
- `date :start_date`
- `integer :repeat_times`
- `time :start_time`
- `time :end_time`
- `boolean :reservable`  
  If it is a free class, `paid_class_csi_guid` will be nil and `reserve_max` will be filled in.
- `text :paid_class_csi_id`  
  If it is a paid class, the `paid_class_csi_guid` will be non-nil and `reserve_max` will be nil.
- `integer :reserve_max`

### ScheduleChange
- `integer :gx_class_set_id`
- `date :effective_date`
- `integer :studio_id`
- `integer :instructor_id`
- `time :start_time`
- `time :end_time`
- `boolean :canceled`

### Reservation
- `integer :gx_class_set_id`
- `string :member_id`
- `string :member_email`

### Connector Models

#### ClubInstructor
#### ClubUser
#### GxClassTrack

## Structure
- **[`Club`](#club)**  
    *Has_Many*
    - **[`GxClass`](#gxclass)es** ( through: **[`GxClassSet`](#gxclassset)** )
    - **[`Studio`](#studio)s**
    - **[`Instructor`](#instructor)s** ( through: **[`ClubInstructor`](#clubinstructor)** )
    - **[`User`](#user)s** ( through: **[`ClubUser`](#clubuser)** )
- **[`GxClass`](#gxclass)**  
    Unique, named classes that can be used at any and all [`Club`](#club)s.  
    - *Has_One*
        - **[`Category`](#category)**
    - *Has_Many*
        - **[`Track`](#track)s** ( through: **[`GxClassTrack`](#gxclasstrack)** )  
          Like [`Category`](#category) except more vague, and able to have multiple apply to [`GxClass`](#gxclass)
        - **[`GxClassSet`](#gxclassset)**  
            A set of [`GxClass`](#gxclass)es at a specific [`Club`](#club), occurring once a week for a defined number of weeks  
            - *Has_One*
                - **[`Instructor`](#instructor)**
                - **[`Studio`](#studio)**
                - **[`Level`](#level)**
            - *Has_Many*
                - **[`GxClassChange`](#gxclasschange)s**  
                  A change to a [`GxClassSet`](#gxclassset) valid for a particular day
                - **[`Reservation`](#reservation)s**
- **[`User`](#user)**  
    For internal use only - updating the schedules. Not to be used for external users - they will be handled through CSI  
    *Has_Many*
    - **[`Club`](#club)s** ( through: **[`ClubUser`](#clubuser)** )
    - **[`GxClass`](#gxclass)es** ( through: **[`GxClassSet`](#gxclassset)** )
    - **[`GxClassSet`](#gxclassset)s**
