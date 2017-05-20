.class public Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# instance fields
.field private final getStoreRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/GetStoreRequestFactory;

.field private final getStoreWidgetsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/GetStoreWidgetsRequestFactory;

.field private final listAppsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;

.field private final listFullReviewsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListFullReviewsRequestFactory;

.field private final listStoresRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listStoresRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;

    .line 19
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listAppsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;

    .line 20
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/request/ListFullReviewsRequestFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/request/ListFullReviewsRequestFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listFullReviewsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListFullReviewsRequestFactory;

    .line 21
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreRequestFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/request/GetStoreRequestFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->getStoreRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/GetStoreRequestFactory;

    .line 22
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/request/GetStoreWidgetsRequestFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/request/GetStoreWidgetsRequestFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->getStoreWidgetsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/GetStoreWidgetsRequestFactory;

    .line 23
    return-void
.end method


# virtual methods
.method public listStores(II)Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController",
            "<",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listStoresRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->listStores(II)Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;

    move-result-object v0

    return-object v0
.end method

.method public newListAppsRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listAppsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/request/ListAppsRequestFactory;->newListAppsRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListAppsRequest;

    move-result-object v0

    return-object v0
.end method

.method public newListFullReviews(Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listFullReviewsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListFullReviewsRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/request/ListFullReviewsRequestFactory;->newListFullReviews(Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    move-result-object v0

    return-object v0
.end method

.method public newListStoresRequest(II)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listStoresRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->newListStoresRequest(II)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v0

    return-object v0
.end method

.method public newListStoresRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->listStoresRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/request/ListStoresRequestFactory;->newListStoresRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v0

    return-object v0
.end method

.method public newStore(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->getStoreRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/GetStoreRequestFactory;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/request/GetStoreRequestFactory;->newStore(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreRequest;

    move-result-object v0

    return-object v0
.end method

.method public newStoreWidgets(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->getStoreWidgetsRequestFactory:Lcm/aptoide/pt/v8engine/repository/request/GetStoreWidgetsRequestFactory;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/request/GetStoreWidgetsRequestFactory;->newStoreWidgets(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest;

    move-result-object v0

    return-object v0
.end method
