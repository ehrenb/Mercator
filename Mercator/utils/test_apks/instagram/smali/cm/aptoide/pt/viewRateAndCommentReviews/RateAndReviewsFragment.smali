.class public Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "RateAndReviewsFragment.java"

# interfaces
.implements Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$BundleCons;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment",
        "<",
        "Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;",
        ">;",
        "Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView",
        "<",
        "Lcm/aptoide/pt/model/v7/Review;",
        "Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appId:J

.field private appName:Ljava/lang/String;

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private final dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

.field private endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

.field private installMenuItem:Landroid/view/MenuItem;

.field private packageName:Ljava/lang/String;

.field private ratingBarsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;

.field private ratingTotalsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;

.field private reviewId:J

.field private storeName:Ljava/lang/String;

.field private storeTheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 67
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 69
    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/DialogUtils;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    .line 70
    return-void
.end method

.method private fetchRating(Z)V
    .locals 5

    .prologue
    .line 195
    iget-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->appId:J

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 196
    invoke-interface {v3}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->packageName:Ljava/lang/String;

    .line 195
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->of(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->observe(Z)Lrx/d;

    move-result-object v0

    .line 198
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 199
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 200
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 201
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 211
    return-void
.end method

.method private fetchReviews()V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeName:Ljava/lang/String;

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->packageName:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 169
    invoke-interface {v3}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 172
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 173
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;

    invoke-direct {v3, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)V

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$4;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    iput-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 175
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 176
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 177
    return-void
.end method

.method private invalidateReviews()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->clearDisplayables()Lcm/aptoide/pt/v8engine/fragment/BaseRecyclerViewFragment;

    .line 163
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->fetchReviews()V

    .line 164
    return-void
.end method

.method static synthetic lambda$fetchRating$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 90
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "store_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "review_id"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "store_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "store_theme"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method

.method private setupRating(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->ratingTotalsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;->setup(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    .line 221
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->ratingBarsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;->setup(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    .line 222
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->bindViews(Landroid/view/View;)V

    .line 148
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->fab:I

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->setHasOptionsMenu(Z)V

    .line 152
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;

    invoke-direct {v1, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->ratingTotalsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;

    .line 153
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;

    invoke-direct {v1, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->ratingBarsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;

    .line 155
    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method checkAndRemoveProgressBarDisplayable()V
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    .line 254
    instance-of v0, v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->removeDisplayable(I)V

    .line 256
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->notifyItemRemoved(I)V

    .line 252
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method protected createAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    const-class v1, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected bridge synthetic createAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->createAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createDisplayableComments(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Comment;

    .line 247
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    invoke-direct {v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public bridge synthetic createReadMoreDisplayable(ILjava/lang/Object;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 1

    .prologue
    .line 48
    check-cast p2, Lcm/aptoide/pt/model/v7/Review;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->createReadMoreDisplayable(ILcm/aptoide/pt/model/v7/Review;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    move-result-object v0

    return-object v0
.end method

.method public createReadMoreDisplayable(ILcm/aptoide/pt/model/v7/Review;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;
    .locals 7

    .prologue
    .line 235
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 236
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v5

    new-instance v6, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;

    invoke-direct {v6, p1, p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/SimpleReviewCommentAdder;-><init>(ILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdderView;)V

    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;-><init>(JZILcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;)V

    return-object v1
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_rate_and_reviews:I

    return v0
.end method

.method public getReviewId()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->reviewId:J

    return-wide v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$bindViews$3(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->appName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeName:Ljava/lang/String;

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)Lrx/b/a;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->showRateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrx/b/a;)V

    .line 158
    return-void
.end method

.method synthetic lambda$fetchRating$4(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->setupTitle(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->setupRating(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->finishLoading()V

    .line 208
    return-void
.end method

.method synthetic lambda$null$2()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->invalidateReviews()V

    return-void
.end method

.method synthetic lambda$onCreateOptionsMenu$0(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 2

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->installMenuItem:Landroid/view/MenuItem;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->open:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 113
    :cond_0
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->load(ZZLandroid/os/Bundle;)V

    .line 189
    sget-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other versions should refresh? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->fetchRating(Z)V

    .line 191
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->fetchReviews()V

    .line 192
    return-void
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->appId:J

    .line 135
    const-string v0, "review_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->reviewId:J

    .line 136
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->packageName:Ljava/lang/String;

    .line 137
    const-string v0, "store_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeName:Ljava/lang/String;

    .line 138
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->appName:Ljava/lang/String;

    .line 139
    const-string v0, "store_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeTheme:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 104
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_install:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->menu_install:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->installMenuItem:Landroid/view/MenuItem;

    .line 107
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 108
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 116
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 120
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 124
    :cond_0
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_install:I

    if-ne v0, v2, :cond_1

    .line 125
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeName:Ljava/lang/String;

    sget-object v5, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 126
    invoke-interface {v2, v3, v4, v5}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 125
    invoke-interface {v0, v2}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeTheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 183
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->storeTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStoreTheme(Landroid/app/Activity;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setupTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->hasToolbar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    return-void
.end method
