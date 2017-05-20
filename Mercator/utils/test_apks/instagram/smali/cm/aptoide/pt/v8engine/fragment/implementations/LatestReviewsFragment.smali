.class public Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;
.source "LatestReviewsFragment.java"


# static fields
.field private static final REVIEWS_LIMIT:I = 0x19

.field private static final STORE_ID:Ljava/lang/String; = "storeId"


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private displayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

.field private storeId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;-><init>()V

    .line 37
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 39
    return-void
.end method

.method public static newInstance(J)Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v2, "storeId"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->bindViews(Landroid/view/View;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->setHasOptionsMenu(Z)V

    .line 75
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$load$0(Lcm/aptoide/pt/model/v7/ListFullReviews;)V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListFullReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->displayables:Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/FullReview;

    .line 88
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->displayables:Ljava/util/List;

    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;-><init>(Lcm/aptoide/pt/model/v7/FullReview;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->displayables:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->addDisplayables(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->load(ZZLandroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->storeId:J

    const/16 v2, 0x19

    const/4 v3, 0x0

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->storeId:J

    .line 82
    invoke-static {v4, v5}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentials(J)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v4

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 83
    invoke-interface {v6}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;->of(JIILcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;

    move-result-object v2

    .line 84
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;)Lrx/b/b;

    move-result-object v3

    .line 93
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 94
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 95
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 98
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    goto :goto_0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "storeId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->storeId:J

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 56
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 60
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
