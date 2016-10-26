Models:

Script
    - :uuid
    - :name
    - :notes
    - :greeting
    - has_many :script_options
    
ScriptOption - polymorphic table to manage the options chosen
    - :script_id
    - :type
    - :additional_options
    
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
 
