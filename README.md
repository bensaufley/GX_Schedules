# SCLA/RSCNY GroupEx Schedules

## Models
- **Club**
    - *Has_Many*
        - **GxClass** ( through: **GxClassSet** )
        - **Studio**
        - **Instructor** ( through: **ClubInstructor** )
- **GxClass**  
    Unique, named classes that can be used at any and all Clubs.  
    - *Has_Many*
        - **GxClassSet**  
            A set of Classes at a specific Club, occurring once a week for a defined number of weeks  
            - *Has_One*
                - **Instructor**
                - **Studio**
                - **Category**
            - *Has_Many*
                - **GxClassChange**  
                  A change to a GxClassSet valid for a particular day
                - **Track** ( through: **GxClassSetTrack** )  
                  Like category except more vague, and able to have multiple apply to GxClassSet
- **User**  
  For internal use only - updating the schedules. Not to be used for external users - they will be handled through CSI


