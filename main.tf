locals {
  container_definition = {

    command                = var.command
    cpu                    = var.cpu
    disableNetworking      = var.disableNetworking
    dnsSearchDomains       = var.dnsSearchDomains
    dnsServers             = var.dnsServers
    dockerLabels           = var.dockerLabels
    dockerSecurityOptions  = var.dockerSecurityOptions
    entryPoint             = var.entryPoint
    environment            = var.environment
    essential              = var.essential
    extraHosts             = var.extraHosts
    healthCheck            = var.healthCheck
    hostname               = var.hostname
    image                  = var.image
    interactive            = var.interactive
    links                  = var.links
    linuxParameters        = var.linuxParameters
    logConfiguration       = var.logConfiguration
    memory                 = var.memory
    memoryReservation      = var.memoryReservation
    mountPoints            = var.mountPoints
    name                   = var.name
    portMappings           = var.portMappings
    privileged             = var.privileged
    pseudoTerminal         = var.pseudoTerminal
    readonlyRootFilesystem = var.readonlyRootFilesystem
    repositoryCredentials  = var.repositoryCredentials
    resourceRequirements   = var.resourceRequirements
    secrets                = var.secrets
    systemControls         = var.systemControls
    ulimits                = var.ulimits
    user                   = var.user
    volumesFrom            = var.volumesFrom
    workingDirectory       = var.workingDirectory
  }

  container_definitions = templatefile(
    "${path.module}/templates/container-definitions.json.tmpl",
    { container_definitions = jsonencode([local.container_definition]) }
  )
}
