model {

    user = person "User" {
        description "User of the project management system."
    }

    projectSystem = softwareSystem "Project Management System" {

        authService = container "Authentication Service" {
            technology "Java"

            url "https://github.com/JuanAndresA016/Sprint-5-Module-5-Design-Architecture/blob/main/docs/diagrams/auth-service.puml"
        }

        authorizationService = container "Authorization Service" {
            technology "Java"

            url "https://github.com/JuanAndresA016/Sprint-5-Module-5-Design-Architecture/blob/main/docs/diagrams/authorization-service.puml"
        }

        taskService = container "Task Management Service" {
            technology "Java"

            url "https://github.com/JuanAndresA016/Sprint-5-Module-5-Design-Architecture/blob/main/docs/diagrams/task-service.puml"
        }

        recommendationService = container "Recommendation Service" {
            technology "Java"

            url "https://github.com/JuanAndresA016/Sprint-5-Module-5-Design-Architecture/blob/main/docs/diagrams/recommendation-service.puml"
        }

        analyticsService = container "Analytics Service" {
            technology "Java"

            url "https://github.com/JuanAndresA016/Sprint-5-Module-5-Design-Architecture/blob/main/docs/diagrams/analytics-service.puml"
        }

        encryptionService = container "Encryption Service" {
            technology "Java"

            url "https://github.com/JuanAndresA016/Sprint-5-Module-5-Design-Architecture/blob/main/docs/diagrams/encryption-service.puml"
        }

        user -> authService "Authenticates"
        user -> taskService "Manages tasks"
        user -> recommendationService "Gets recommendations"

        authService -> authorizationService "Validates permissions"
        authService -> encryptionService "Encrypts credentials"
        taskService -> analyticsService "Provides task data"
        analyticsService -> recommendationService "Provides insights"
    }
}