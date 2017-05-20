.class public Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "RateAndReviewsFragmentNew.java"

# interfaces
.implements Lcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;
.implements Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;


# annotations
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
        ">;",
        "Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;"
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final APP_NAME:Ljava/lang/String; = "app_name"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final REVIEW_ID:Ljava/lang/String; = "review_id"

.field private static final STORE_NAME:Ljava/lang/String; = "store_name"

.field private static final STORE_THEME:Ljava/lang/String; = "store_theme"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appId:J

.field private appName:Ljava/lang/String;

.field private dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

.field private floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

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
    .line 43
    const-class v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;

    invoke-direct {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;-><init>()V

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "store_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "review_id"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;

    invoke-direct {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "store_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "store_theme"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->bindViews(Landroid/view/View;)V

    .line 148
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->fab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->setHasOptionsMenu(Z)V

    .line 151
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->ratingTotalsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingTotalsLayout;

    .line 152
    new-instance v0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->ratingBarsLayout:Lcm/aptoide/pt/viewRateAndCommentReviews/layout/RatingBarsLayout;

    .line 153
    return-void
.end method

.method protected createAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    const-class v1, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected bridge synthetic createAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->createAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

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
    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Comment;

    .line 114
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    invoke-direct {v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;-><init>(Lcm/aptoide/pt/model/v7/Comment;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public bridge synthetic createReadMoreDisplayable(ILjava/lang/Object;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 1

    .prologue
    .line 40
    check-cast p2, Lcm/aptoide/pt/model/v7/Review;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->createReadMoreDisplayable(ILcm/aptoide/pt/model/v7/Review;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    move-result-object v0

    return-object v0
.end method

.method public createReadMoreDisplayable(ILcm/aptoide/pt/model/v7/Review;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;
    .locals 7

    .prologue
    .line 106
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 107
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
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getAdapter()Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_rate_and_reviews:I

    return v0
.end method

.method public getReviewId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->reviewId:J

    return-wide v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$onCreateOptionsMenu$0(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 2

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->installMenuItem:Landroid/view/MenuItem;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->open:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 180
    :cond_0
    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->load(ZZLandroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->appId:J

    .line 131
    const-string v0, "review_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->reviewId:J

    .line 132
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->packageName:Ljava/lang/String;

    .line 133
    const-string v0, "store_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeName:Ljava/lang/String;

    .line 134
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->appName:Ljava/lang/String;

    .line 135
    const-string v0, "store_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeTheme:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public nextReviews()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/RxEndlessRecyclerView;->loadMore(Landroid/support/v7/widget/RecyclerView;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/DialogUtils;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    .line 121
    new-instance v1, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;

    iget-wide v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->appId:J

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeName:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->packageName:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;->getInstance()Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;

    move-result-object v7

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;-><init>(JLjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;Lcm/aptoide/pt/util/schedulers/SchedulerProvider;)V

    .line 125
    invoke-virtual {p0, v1, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->attachPresenter(Lcm/aptoide/pt/v8engine/presenter/Presenter;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 171
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_install:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->menu_install:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->installMenuItem:Landroid/view/MenuItem;

    .line 174
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 175
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 183
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 187
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    move v0, v1

    .line 197
    :goto_0
    return v0

    .line 191
    :cond_0
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->menu_install:I

    if-ne v0, v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeName:Ljava/lang/String;

    sget-object v5, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_AND_INSTALL:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 194
    invoke-interface {v2, v3, v4, v5}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 193
    invoke-interface {v0, v2}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_1
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeTheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeTheme:Ljava/lang/String;

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStatusBarThemeColor(Landroid/app/Activity;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V

    .line 159
    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeTheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/util/ThemeUtils;->setStoreTheme(Landroid/app/Activity;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public rateApp()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public showError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public showNextReviews(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Review;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    return-void
.end method

.method public showRateView()Lrx/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->dialogUtils:Lcm/aptoide/pt/v8engine/util/DialogUtils;

    invoke-virtual {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->appName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragmentNew;->storeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/util/DialogUtils;->showRateDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public showRating(Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method
