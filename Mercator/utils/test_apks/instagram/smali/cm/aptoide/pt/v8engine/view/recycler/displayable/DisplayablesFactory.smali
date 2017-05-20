.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;
.super Ljava/lang/Object;
.source "DisplayablesFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertUserInfoStore(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)Lcm/aptoide/pt/model/v7/store/GetStoreMeta;
    .locals 4

    .prologue
    .line 377
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;-><init>()V

    .line 379
    new-instance v1, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/store/Store;-><init>()V

    .line 380
    new-instance v2, Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    invoke-direct {v2}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;-><init>()V

    .line 381
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepoDescription()Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson$RepoDescription;->getTheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->setTheme(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    .line 382
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/store/Store;->setAppearance(Lcm/aptoide/pt/model/v7/store/Store$Appearance;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 383
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRepo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/store/Store;->setName(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 384
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getRavatarHd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/store/Store;->setAvatar(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 385
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->setData(Lcm/aptoide/pt/model/v7/store/Store;)V

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createCommentsGroup(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 336
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 337
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcm/aptoide/pt/model/v7/ListComments;

    .line 338
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 342
    new-instance v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    .line 343
    invoke-virtual {v2}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getName()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v6, v7, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;-><init>(JLjava/lang/String;Ljava/util/List;)V

    .line 342
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_0
    return-object v3

    .line 346
    :cond_0
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEFAULT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    invoke-direct {v2, v4, v5, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;-><init>(JLjava/lang/String;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static createMyStoreDisplayables(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 304
    instance-of v0, p0, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;

    check-cast p0, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 309
    :goto_0
    return-object v1

    .line 307
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static createRecommendedStores(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/StoreRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 5

    .prologue
    .line 314
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/ListStores;

    .line 315
    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;-><init>()V

    .line 329
    :goto_0
    return-object v0

    .line 318
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 319
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 320
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    .line 322
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v3

    sget-object v4, Lcm/aptoide/pt/model/v7/Layout;->LIST:Lcm/aptoide/pt/model/v7/Layout;

    if-ne v3, v4, :cond_1

    .line 323
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;

    invoke-direct {v3, v0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/v8engine/repository/StoreRepository;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    :cond_1
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_2
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static createReviewsDisplayables(Lcm/aptoide/pt/model/v7/ListFullReviews;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 5

    .prologue
    .line 367
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/ListFullReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 370
    new-instance v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/FullReview;

    invoke-direct {v4, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;-><init>(Lcm/aptoide/pt/model/v7/FullReview;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 373
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static createReviewsGroupDisplayables(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 291
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/ListFullReviews;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListFullReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListFullReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 295
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->createReviewsDisplayables(Lcm/aptoide/pt/model/v7/ListFullReviews;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    return-object v1
.end method

.method private static getAds(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 5

    .prologue
    .line 270
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v2/GetAdsResponse;

    .line 271
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse;->getAds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse;->getAds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 274
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v2/GetAdsResponse;->getAds()Ljava/util/List;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;

    .line 278
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAdDisplayable;

    invoke-static {v0}, Lcm/aptoide/pt/database/realm/MinimalAd;->from(Lcm/aptoide/pt/model/v2/GetAdsResponse$Ad;)Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAdDisplayable;-><init>(Lcm/aptoide/pt/database/realm/MinimalAd;Ljava/lang/String;)V

    .line 279
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    .line 284
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getApps(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/ListApps;

    .line 134
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;-><init>()V

    .line 193
    :goto_0
    return-object v0

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListApps;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v5

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 142
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    new-instance v4, Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    const/4 v7, 0x0

    invoke-direct {v4, p1, v7}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcm/aptoide/pt/model/v7/store/Store;->setAppearance(Lcm/aptoide/pt/model/v7/store/Store$Appearance;)Lcm/aptoide/pt/model/v7/store/Store;

    goto :goto_1

    .line 145
    :cond_1
    sget-object v0, Lcm/aptoide/pt/model/v7/Layout;->BRICK:Lcm/aptoide/pt/model/v7/Layout;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Layout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 149
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$bool;->use_big_app_brick:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 152
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcm/aptoide/pt/v8engine/R$integer;->nr_small_app_bricks:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 154
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 156
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_a

    move v4, v3

    .line 160
    :goto_2
    if-eqz v4, :cond_2

    .line 161
    new-instance v7, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;->setFullRow()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 166
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 167
    if-eqz v4, :cond_3

    move v0, v2

    :goto_3
    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_4

    .line 168
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;

    .line 169
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/String;)V

    .line 170
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    move v0, v3

    goto :goto_3

    .line 173
    :cond_4
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_5
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v6}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .line 175
    :cond_6
    sget-object v0, Lcm/aptoide/pt/model/v7/Layout;->LIST:Lcm/aptoide/pt/model/v7/Layout;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getLayout()Lcm/aptoide/pt/model/v7/Layout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Layout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 176
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 177
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 181
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;

    invoke-direct {v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 184
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 185
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    .line 189
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;-><init>(Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/String;Z)V

    .line 190
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move v4, v0

    goto/16 :goto_2
.end method

.method private static getDisplays(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 5

    .prologue
    .line 247
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays;

    .line 248
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;-><init>()V

    .line 266
    :goto_0
    return-object v0

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays;->getList()Ljava/util/List;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;

    .line 255
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;

    .line 256
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, p1, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    .line 259
    sget-object v4, Lcm/aptoide/pt/model/v7/Event$Name;->facebook:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v4, v0}, Lcm/aptoide/pt/model/v7/Event$Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcm/aptoide/pt/model/v7/Event$Name;->twitch:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 260
    invoke-virtual {v4, v0}, Lcm/aptoide/pt/model/v7/Event$Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcm/aptoide/pt/model/v7/Event$Name;->youtube:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 261
    invoke-virtual {v4, v0}, Lcm/aptoide/pt/model/v7/Event$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    :cond_1
    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;->setFullRow()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 264
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_3
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static getMyStores(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/v8engine/repository/StoreRepository;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 3

    .prologue
    .line 198
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->loadLocalSubscribedStores(Lcm/aptoide/pt/v8engine/repository/StoreRepository;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)Lrx/b/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 223
    invoke-virtual {v0, v2}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private static getStores(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    .line 231
    check-cast v0, Lcm/aptoide/pt/model/v7/store/ListStores;

    .line 232
    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;-><init>()V

    .line 243
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    .line 240
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;)V

    .line 241
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    :cond_1
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayableGroup;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic lambda$getMyStores$1(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 199
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcm/aptoide/pt/model/v7/store/ListStores;

    if-eqz v1, :cond_6

    .line 202
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/ListStores;

    .line 203
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    move v1, v0

    .line 207
    :goto_1
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$5;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    .line 208
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 209
    if-eqz v2, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v6

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    new-instance v5, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-direct {v5, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;)V

    .line 211
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 214
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 215
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    .line 216
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 218
    invoke-virtual {v0, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->setMoreVisible(Z)V

    .line 220
    :cond_4
    invoke-interface {v4, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 222
    :cond_5
    return-object v4

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method static synthetic lambda$getMyStores$2(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadLocalSubscribedStores$4(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 356
    invoke-static {p0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$4;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/store/Store;)I
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$null$3(Lcm/aptoide/pt/database/realm/Store;)Lcm/aptoide/pt/model/v7/store/Store;
    .locals 4

    .prologue
    .line 357
    new-instance v0, Lcm/aptoide/pt/model/v7/store/Store;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/store/Store;-><init>()V

    .line 358
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Store;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/store/Store;->setName(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 359
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Store;->getStoreId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/model/v7/store/Store;->setId(J)Lcm/aptoide/pt/model/v7/store/Store;

    .line 360
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Store;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/store/Store;->setAvatar(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 361
    new-instance v1, Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    invoke-direct {v1}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Store;->getTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->setTheme(Ljava/lang/String;)Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/store/Store;->setAppearance(Lcm/aptoide/pt/model/v7/store/Store$Appearance;)Lcm/aptoide/pt/model/v7/store/Store;

    .line 362
    return-object v0
.end method

.method public static loadLocalSubscribedStores(Lcm/aptoide/pt/v8engine/repository/StoreRepository;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/repository/StoreRepository;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->getAll()Lrx/d;

    move-result-object v0

    .line 355
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$$Lambda$3;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lcm/aptoide/pt/model/v7/GetStoreWidgets;Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/StoreRepository;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/GetStoreWidgets;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/v8engine/repository/StoreRepository;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    .line 71
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 72
    sget-object v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory$1;->$SwitchMap$cm$aptoide$pt$model$v7$Type:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getType()Lcm/aptoide/pt/model/v7/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->getApps(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-static {v0, p2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->getMyStores(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/v8engine/repository/StoreRepository;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->getStores(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->getDisplays(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :pswitch_4
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->getAds(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_0

    .line 93
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 94
    new-instance v5, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;

    invoke-direct {v5}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;-><init>()V

    new-instance v6, Lcm/aptoide/pt/model/v7/Event;

    invoke-direct {v6}, Lcm/aptoide/pt/model/v7/Event;-><init>()V

    sget-object v7, Lcm/aptoide/pt/model/v7/Event$Name;->getAds:Lcm/aptoide/pt/model/v7/Event$Name;

    .line 95
    invoke-virtual {v6, v7}, Lcm/aptoide/pt/model/v7/Event;->setName(Lcm/aptoide/pt/model/v7/Event$Name;)Lcm/aptoide/pt/model/v7/Event;

    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;->setEvent(Lcm/aptoide/pt/model/v7/Event;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v0, v4}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->setActions(Ljava/util/List;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    .line 97
    new-instance v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    const/4 v5, 0x0

    .line 98
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :pswitch_5
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 108
    :pswitch_6
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->createReviewsGroupDisplayables(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 111
    :pswitch_7
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->createMyStoreDisplayables(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 114
    :pswitch_8
    invoke-static {v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->createRecommendedStores(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/StoreRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :pswitch_9
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablesFactory;->createCommentsGroup(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 120
    :pswitch_a
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getData()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget$Data;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;

    new-instance v5, Landroid/util/Pair;

    .line 123
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;->getViewObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    invoke-direct {v5, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;-><init>(Landroid/util/Pair;)V

    .line 122
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 129
    :cond_1
    return-object v1

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
