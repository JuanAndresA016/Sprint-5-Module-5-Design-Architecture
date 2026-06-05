workspace {

    !include model.dsl

    views {

        systemContext projectSystem {
            include *
            autoLayout
        }

        container projectSystem {
            include *
            autoLayout
        }

        theme default
    }
}