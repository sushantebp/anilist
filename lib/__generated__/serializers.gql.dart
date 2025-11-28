// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:anilist/__generated__/schema.schema.gql.dart'
    show
        GActivitySort,
        GActivityType,
        GAiringScheduleInput,
        GAiringSort,
        GAniChartHighlightInput,
        GCharacterNameInput,
        GCharacterRole,
        GCharacterSort,
        GCountryCode,
        GExternalLinkMediaType,
        GExternalLinkType,
        GFuzzyDateInput,
        GFuzzyDateInt,
        GJson,
        GLikeableType,
        GListActivityOptionInput,
        GMediaExternalLinkInput,
        GMediaFormat,
        GMediaListOptionsInput,
        GMediaListSort,
        GMediaListStatus,
        GMediaRankType,
        GMediaRelation,
        GMediaSeason,
        GMediaSort,
        GMediaSource,
        GMediaStatus,
        GMediaTitleInput,
        GMediaTrendSort,
        GMediaType,
        GModActionType,
        GModRole,
        GNotificationOptionInput,
        GNotificationType,
        GRecommendationRating,
        GRecommendationSort,
        GReviewRating,
        GReviewSort,
        GRevisionHistoryAction,
        GScoreFormat,
        GSiteTrendSort,
        GStaffLanguage,
        GStaffNameInput,
        GStaffSort,
        GStudioSort,
        GSubmissionSort,
        GSubmissionStatus,
        GThreadCommentSort,
        GThreadSort,
        GUserSort,
        GUserStaffNameLanguage,
        GUserStatisticsSort,
        GUserTitleLanguage;
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.data.gql.dart'
    show
        GGetAnimeListData,
        GGetAnimeListData_Page,
        GGetAnimeListData_Page_media,
        GGetAnimeListData_Page_media_coverImage,
        GGetAnimeListData_Page_media_title;
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.req.gql.dart'
    show GGetAnimeListReq;
import 'package:anilist/features/home/data/data_sources/graphql/__generated__/get_anime_list.var.gql.dart'
    show GGetAnimeListVars;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.data.gql.dart'
    show
        GAnimeByIdData,
        GAnimeByIdData_Media,
        GAnimeByIdData_Media_coverImage,
        GAnimeByIdData_Media_reviews,
        GAnimeByIdData_Media_reviews_edges,
        GAnimeByIdData_Media_reviews_edges_node,
        GAnimeByIdData_Media_reviews_edges_node_user,
        GAnimeByIdData_Media_reviews_edges_node_user_avatar,
        GAnimeByIdData_Media_title,
        GAnimeByIdData_Media_trailer;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.req.gql.dart'
    show GAnimeByIdReq;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_by_id.var.gql.dart'
    show GAnimeByIdVars;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_search.data.gql.dart'
    show
        GAnimeSearchData,
        GAnimeSearchData_Page,
        GAnimeSearchData_Page_media,
        GAnimeSearchData_Page_media_coverImage,
        GAnimeSearchData_Page_media_title;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_search.req.gql.dart'
    show GAnimeSearchReq;
import 'package:anilist/features/search/data/data_sources/graphql/__generated__/anime_search.var.gql.dart'
    show GAnimeSearchVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GActivitySort,
  GActivityType,
  GAiringScheduleInput,
  GAiringSort,
  GAniChartHighlightInput,
  GAnimeByIdData,
  GAnimeByIdData_Media,
  GAnimeByIdData_Media_coverImage,
  GAnimeByIdData_Media_reviews,
  GAnimeByIdData_Media_reviews_edges,
  GAnimeByIdData_Media_reviews_edges_node,
  GAnimeByIdData_Media_reviews_edges_node_user,
  GAnimeByIdData_Media_reviews_edges_node_user_avatar,
  GAnimeByIdData_Media_title,
  GAnimeByIdData_Media_trailer,
  GAnimeByIdReq,
  GAnimeByIdVars,
  GAnimeSearchData,
  GAnimeSearchData_Page,
  GAnimeSearchData_Page_media,
  GAnimeSearchData_Page_media_coverImage,
  GAnimeSearchData_Page_media_title,
  GAnimeSearchReq,
  GAnimeSearchVars,
  GCharacterNameInput,
  GCharacterRole,
  GCharacterSort,
  GCountryCode,
  GExternalLinkMediaType,
  GExternalLinkType,
  GFuzzyDateInput,
  GFuzzyDateInt,
  GGetAnimeListData,
  GGetAnimeListData_Page,
  GGetAnimeListData_Page_media,
  GGetAnimeListData_Page_media_coverImage,
  GGetAnimeListData_Page_media_title,
  GGetAnimeListReq,
  GGetAnimeListVars,
  GJson,
  GLikeableType,
  GListActivityOptionInput,
  GMediaExternalLinkInput,
  GMediaFormat,
  GMediaListOptionsInput,
  GMediaListSort,
  GMediaListStatus,
  GMediaRankType,
  GMediaRelation,
  GMediaSeason,
  GMediaSort,
  GMediaSource,
  GMediaStatus,
  GMediaTitleInput,
  GMediaTrendSort,
  GMediaType,
  GModActionType,
  GModRole,
  GNotificationOptionInput,
  GNotificationType,
  GRecommendationRating,
  GRecommendationSort,
  GReviewRating,
  GReviewSort,
  GRevisionHistoryAction,
  GScoreFormat,
  GSiteTrendSort,
  GStaffLanguage,
  GStaffNameInput,
  GStaffSort,
  GStudioSort,
  GSubmissionSort,
  GSubmissionStatus,
  GThreadCommentSort,
  GThreadSort,
  GUserSort,
  GUserStaffNameLanguage,
  GUserStatisticsSort,
  GUserTitleLanguage,
])
final Serializers serializers = _serializersBuilder.build();
