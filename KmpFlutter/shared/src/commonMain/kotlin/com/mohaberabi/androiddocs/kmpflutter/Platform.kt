package com.mohaberabi.androiddocs.kmpflutter

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform