$newPlasterManifestParams = @{
    Path            = '.\Templates\1_CreatePlasterManifest\plasterManifest.xml'
    TemplateName    = 'Demo_FoundationManifest'
    TemplateType    = 'Project'
    TemplateVersion = '0.0.1'
    Title           = 'Foundation Manifest'
    Description     = 'Creates a minimal plasterManifest.xml.'
    Tags            = 'Foundation'
    Author          = 'Brian Wilhite'
}

New-PlasterManifest @newPlasterManifestParams
