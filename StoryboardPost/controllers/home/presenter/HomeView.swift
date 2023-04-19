//
//  HomeView.swift
//  StoryboardPost
//
//  Created by Bekhruz Hakmirzaev on 18/04/23.
//

import Foundation

protocol HomeView {
    func onLoadPosts(posts: [Post])
    func onPostDelete(deleted: Bool)
}
