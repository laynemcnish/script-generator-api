Models:

Script
    - uuid:string
    - name:string
    - notes:text
    - greeting:text
    
ScriptOption - polymorphic table to manage the options chosen
    - script:references
    - additional_options:text
    
RubyVersionManager < ScriptOption
    - :name
    - :append_bash_profile
    
DefaultGem < ScriptOption
    - :name
    - :dependencies
    
DefaultNpmPackages < ScriptOption
    - :name
    - :dependencies
    
NodePackageManager < ScriptOption
    - :name
    
DefaultHomebrewPackages < ScriptOption
    - :name
 
