$newPlasterManifestParams = @{
    Path            = '.\Templates\1_CreatePlasterManifest\plasterManifest.xml'
    TemplateName    = 'FoundationManifest'
    TemplateType    = 'Project'
    TemplateVersion = '0.0.1'
    Title           = 'Foundation Manifest'
    Description     = 'Creates a, currently very useless, plasterManifest.xml.'
    Tags            = 'Foundation'
    Author          = 'Brian Wilhite'
}

New-PlasterManifest @newPlasterManifestParams
