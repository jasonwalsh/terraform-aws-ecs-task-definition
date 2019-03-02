variable "command" {
  default     = null
  description = "The command that is passed to the container"
  type        = list(string)
}

variable "cpu" {
  default     = null
  description = "The number of cpu units reserved for the container"
  type        = number
}

variable "disableNetworking" {
  default     = null
  description = "When this parameter is true, networking is disabled within the container"
  type        = bool
}

variable "dnsSearchDomains" {
  default     = null
  description = "A list of DNS search domains that are presented to the container"
  type        = list(string)
}

variable "dnsServers" {
  default     = null
  description = "A list of DNS servers that are presented to the container"
  type        = list(string)
}

variable "dockerLabels" {
  default     = null
  description = "A key/value map of labels to add to the container"
  type        = map(string)
}

variable "dockerSecurityOptions" {
  default     = null
  description = "A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems"
  type        = list(string)
}

variable "entryPoint" {
  default     = null
  description = "The entry point that is passed to the container"
  type        = list(string)
}

variable "environment" {
  default     = null
  description = "The environment variables to pass to a container"
  type        = object({ name = string, value = string })
}

variable "essential" {
  default     = null
  description = "If the essential parameter of a container is marked as true, and that container fails or stops for any reason, all other containers that are part of the task are stopped"
  type        = bool
}

variable "extraHosts" {
  default     = null
  description = "A list of hostnames and IP address mappings to append to the /etc/hosts file on the container"
  type        = object({ hostname = string, ipAddress = string })
}

variable "family" {
  description = "The family is used as a name for your task definition"
  type        = string
}

variable "healthCheck" {
  default     = null
  description = "The health check command and associated configuration parameters for the container"
  type = object({
    command     = list(string),
    interval    = number,
    retries     = number,
    startPeriod = number,
    timeout     = number
  })
}

variable "hostname" {
  default     = null
  description = "The hostname to use for your container"
  type        = string
}

variable "image" {
  default     = null
  description = "The image used to start a container"
  type        = string
}

variable "interactive" {
  default     = null
  description = "When this parameter is true, this allows you to deploy containerized applications that require stdin or a tty to be allocated"
  type        = bool
}

variable "links" {
  default     = null
  description = "The link parameter allows containers to communicate with each other without the need for port mappings"
  type        = list(string)
}

variable "linuxParameters" {
  default     = null
  description = "Linux-specific modifications that are applied to the container, such as Linux KernelCapabilities"
  type = object({
    capabilities = object({
      add  = list(string)
      drop = list(string)
    })
    devices = list(object({
      containerPath = string
      hostPath      = string
      permissions   = list(string)
    }))
    initProcessEnabled = bool
    sharedMemorySize   = number
    tmpfs = list(object({
      containerPath = string
      mountOptions  = list(string)
      size          = number
    }))
  })
}

variable "logConfiguration" {
  default     = null
  description = "The log configuration specification for the container"
  type = object({
    logDriver = string
    options   = map(string)
  })
}

variable "memory" {
  default     = null
  description = "The hard limit (in MiB) of memory to present to the container"
  type        = number
}

variable "memoryReservation" {
  default     = null
  description = "The soft limit (in MiB) of memory to reserve for the container"
  type        = number
}

variable "mountPoints" {
  default     = null
  description = "The mount points for data volumes in your container"
  type = list(object({
    containerPath = string
    readOnly      = bool
    sourceVolume  = string
  }))
}

variable "name" {
  default     = null
  description = "The name of a container"
  type        = string
}

variable "portMappings" {
  default     = null
  description = "The list of port mappings for the container"
  type = list(object({
    containerPort = number
    hostPort      = number
    protocol      = string
  }))
}

variable "privileged" {
  default     = null
  description = "When this parameter is true, the container is given elevated privileges on the host container instance (similar to the root user)"
  type        = bool
}

variable "pseudoTerminal" {
  default     = null
  description = "When this parameter is true, a TTY is allocated"
  type        = bool
}

variable "readonlyRootFilesystem" {
  default     = null
  description = "When this parameter is true, the container is given read-only access to its root file system"
  type        = bool
}

variable "repositoryCredentials" {
  default     = null
  description = "The private repository authentication credentials to use"
  type = object({
    credentialsParameter = string
  })
}

variable "resourceRequirements" {
  default     = null
  description = "The type and amount of a resource to assign to a container"
  type = list(object({
    type  = string
    value = string
  }))
}

variable "secrets" {
  default     = null
  description = "The secrets to pass to the container"
  type = list(object({
    name      = string
    valueFrom = string
  }))
}

variable "systemControls" {
  default     = null
  description = "A list of namespaced kernel parameters to set in the container"
  type = list(object({
    namespace = string
    value     = string
  }))
}

variable "ulimits" {
  default     = null
  description = "A list of ulimits to set in the container"
  type = list(object({
    hardLimit = number
    name      = string
    softLimit = number
  }))
}

variable "user" {
  default     = null
  description = "The user name to use inside the container"
  type        = string
}

variable "volumesFrom" {
  default     = null
  description = "Data volumes to mount from another container"
  type = list(object({
    readOnly        = bool
    sourceContainer = string
  }))
}

variable "workingDirectory" {
  default     = null
  description = "The working directory in which to run commands inside the container"
  type        = string
}
