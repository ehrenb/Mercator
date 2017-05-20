.class public interface abstract Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;
.super Ljava/lang/Object;
.source "V7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interfaces"
.end annotation


# virtual methods
.method public abstract addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "action"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "context"
        .end annotation
    .end param
    .param p4    # Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/addEvent/name={name}/action={action}/context={context}"
    .end annotation
.end method

.method public abstract editStore(Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest$Body;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "store/set"
    .end annotation
.end method

.method public abstract editStore(Lokhttp3/MultipartBody$Part;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/PartMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "store/set"
    .end annotation
.end method

.method public abstract getApp(Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetApp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getApp"
    .end annotation
.end method

.method public abstract getCardUserLikes(Lcm/aptoide/pt/dataprovider/ws/v7/GetUserLikesRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/GetUserLikesRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/GetUserLikesRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetFollowers;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/timeline/card/getLikes"
    .end annotation
.end method

.method public abstract getMyStoreList(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{url}"
    .end annotation
.end method

.method public abstract getMyStoreListEndless(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetMyStoreListRequest$EndlessBody;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{url}"
    .end annotation
.end method

.method public abstract getMyStoreMeta(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStoreMeta;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "my/store/getMeta"
    .end annotation
.end method

.method public abstract getStore(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStore;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getStore{url}"
    .end annotation
.end method

.method public abstract getStoreDisplays(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreDisplaysRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStoreDisplays;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getStoreDisplays{url}"
    .end annotation
.end method

.method public abstract getStoreMeta(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStoreMeta;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getStoreMeta{url}"
    .end annotation
.end method

.method public abstract getStoreWidgets(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getStoreWidgets{url}"
    .end annotation
.end method

.method public abstract getTimelineFollowers(Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetFollowers;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/getFollowers"
    .end annotation
.end method

.method public abstract getTimelineGetFollowing(Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/GetFollowers;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/getFollowing"
    .end annotation
.end method

.method public abstract getTimelineStats(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/TimelineStats;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/getTimelineStats"
    .end annotation
.end method

.method public abstract getUserTimeline(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/GetUserTimelineRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/GetUserTimeline;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract listAppVersions(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppVersionsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listAppVersions"
    .end annotation
.end method

.method public abstract listApps(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListApps;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listApps{url}"
    .end annotation
.end method

.method public abstract listAppsUpdates(Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/listapps/ListAppsUpdatesRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/listapp/ListAppsUpdates;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listAppsUpdates"
    .end annotation
.end method

.method public abstract listComments(Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListComments;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listComments"
    .end annotation
.end method

.method public abstract listComments(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListComments;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method

.method public abstract listFullComments(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListFullCommentsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListFullComments;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listFullComments"
    .end annotation
.end method

.method public abstract listFullReviews(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListFullReviews;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listFullReviews"
    .end annotation
.end method

.method public abstract listFullReviews(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListFullReviews;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listFullReviews{url}"
    .end annotation
.end method

.method public abstract listReviews(Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListReviews;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listReviews"
    .end annotation
.end method

.method public abstract listSearchApps(Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/ListSearchApps;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listSearchApps"
    .end annotation
.end method

.method public abstract listStores(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "url"
        .end annotation
    .end param
    .param p2    # Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listStores{url}"
    .end annotation
.end method

.method public abstract listTopStores(Ljava/lang/String;ILcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;Z)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "sort"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "limit"
        .end annotation
    .end param
    .param p3    # Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "listStores/sort/{sort}/limit/{limit}"
    .end annotation
.end method

.method public abstract postReview(Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/PostReviewRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "setReview"
    .end annotation
.end method

.method public abstract postReviewComment(Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForReview$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForReview$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForReview$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "setComment"
    .end annotation
.end method

.method public abstract postStoreComment(Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/store/PostCommentForStore$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/SetComment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "setComment"
    .end annotation
.end method

.method public abstract postTimelineComment(Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/PostCommentForTimelineArticle$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/SetComment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "setComment"
    .end annotation
.end method

.method public abstract setDownloadAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;)Lrx/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "action"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "context"
        .end annotation
    .end param
    .param p4    # Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/DownloadInstallAnalyticsBaseBody;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/addEvent/name={name}/action={action}/context={context}"
    .end annotation
.end method

.method public abstract setReview(Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "cardUid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "accessToken"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "rating"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/LikeCardRequest$Body;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "review/set/access_token={accessToken}/card_uid={cardUid}/rating={rating}"
    .end annotation
.end method

.method public abstract setReviewVote(Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;Z)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Bypass-Cache"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/SetReviewRatingRequest$Body;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "setReviewVote"
    .end annotation
.end method

.method public abstract setUser(Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest$Body;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/SetUserRequest$Body;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/set"
    .end annotation
.end method

.method public abstract shareCard(Lcm/aptoide/pt/dataprovider/ws/v7/ShareCardRequest$Body;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/ShareCardRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "cardUid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "accessToken"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ShareCardRequest$Body;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/shareTimeline/card_uid={cardUid}/access_token={accessToken}"
    .end annotation
.end method

.method public abstract shareInstallCard(Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "packageName"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "accessToken"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/shareTimeline/package_id={packageName}/access_token={accessToken}/type={type}"
    .end annotation
.end method
