//
//  Resolver.swift
//  Generated by dikitgen.
//

extension AppResolver {

    func resolveMultiplier(value: Int) -> Multiplier {
        return Multiplier(dependency: .init(value: value))
    }

    func resolveDetailViewController(value: Int) -> DetailViewController {
        let multiplier = resolveMultiplier(value: value)
        return DetailViewController.makeInstance(dependency: .init(multiplier: multiplier))
    }

    func resolveAppResolver() -> AppResolver {
        return provideResolver()
    }

    func resolveListViewController() -> ListViewController {
        let appResolver = resolveAppResolver()
        return ListViewController.makeInstance(dependency: .init(resolver: appResolver))
    }

}

