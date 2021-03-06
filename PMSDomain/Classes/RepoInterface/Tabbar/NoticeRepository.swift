//
//  NoticeRepository.swift
//  PMS-iOS-V2
//
//  Created by GoEun Jeong on 2021/05/19.
//

import Foundation
import RxSwift
import Moya

public protocol NoticeRepository {
    func getNoticeList() -> Single<[Notice]>
    func getDetailNotice(id: Int) -> Single<DetailNotice>
}
