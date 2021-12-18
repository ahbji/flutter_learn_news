import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news/common/entitys/entitys.dart';
import 'package:flutter_ducafecat_news/common/utils/utils.dart';

/// 新闻
class NewsAPI {
  /// 翻页
  /// refresh 是否刷新
  static Future<NewsPageListResponseEntity> newsPageList({
    @required BuildContext context,
    NewsPageListRequestEntity params,
    bool refresh = false,
  }) async {
    var response = await HttpUtil().get(
      '/news',
      context: context,
      params: params?.toJson(),
      refresh: refresh,
    );
    return NewsPageListResponseEntity.fromJson(response);
  }

  /// 推荐
  static Future<NewsRecommendResponseEntity> newsRecommend({
    @required BuildContext context,
    NewsRecommendRequestEntity params,
    bool refresh = false,
  }) async {
    var response = await HttpUtil().get(
      '/news/recommend',
      context: context,
      params: params?.toJson(),
      refresh: refresh,
    );
    return NewsRecommendResponseEntity.fromJson(response);
  }

  /// 分类
  static Future<List<CategoryResponseEntity>> categories({
    @required BuildContext context,
  }) async {
    var response = await HttpUtil().get(
      '/categories',
      context: context,
    );
    return response
        .map<CategoryResponseEntity>(
            (item) => CategoryResponseEntity.fromJson(item))
        .toList();
  }

  /// 频道
  static Future<List<ChannelResponseEntity>> channels({
    @required BuildContext context,
  }) async {
    var response = await HttpUtil().get(
      '/channels',
      context: context,
    );
    return response
        .map<ChannelResponseEntity>(
            (item) => ChannelResponseEntity.fromJson(item))
        .toList();
  }

  /// 标签列表
  static Future<List<TagResponseEntity>> tags({
    @required BuildContext context,
    TagRequestEntity params,
  }) async {
    var response = await HttpUtil().get(
      '/tags',
      context: context,
      params: params?.toJson(),
    );
    return response
        .map<TagResponseEntity>((item) => TagResponseEntity.fromJson(item))
        .toList();
  }
}
