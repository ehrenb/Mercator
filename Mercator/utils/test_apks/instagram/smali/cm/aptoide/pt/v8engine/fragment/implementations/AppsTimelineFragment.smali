.class public Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;
.source "AppsTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">",
        "Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ACTION_KEY:Ljava/lang/String; = "ACTION"

.field private static final PACKAGE_LIST_KEY:Ljava/lang/String; = "PACKAGE_LIST"

.field public static final SEARCH_LIMIT:I = 0x14


# instance fields
.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private downloadFactory:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

.field private installManager:Lcm/aptoide/pt/v8engine/InstallManager;

.field private installer:Lcm/aptoide/pt/v8engine/install/Installer;

.field private linksHandlerFactory:Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;

.field private loading:Z

.field private offset:I

.field private packageRepository:Lcm/aptoide/pt/v8engine/repository/PackageRepository;

.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

.field private socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private subscription:Lrx/k;

.field private timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

.field private timelineRepository:Lcm/aptoide/pt/v8engine/repository/TimelineRepository;

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;-><init>()V

    return-void
.end method

.method private addItems(Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->removeLoading()V

    .line 308
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->addDisplayables(Ljava/util/List;)V

    .line 309
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->setTotal(Lcm/aptoide/pt/model/v7/Datalist;)V

    .line 310
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->setOffset(Lcm/aptoide/pt/model/v7/Datalist;)V

    .line 311
    return-void
.end method

.method private addLoading()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->loading:Z

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->loading:Z

    .line 291
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;-><init>()V

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;->setFullRow()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 293
    :cond_0
    return-void
.end method

.method private cardToDisplayable(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 8

    .prologue
    .line 337
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Article;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 338
    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/Article;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/Article;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 340
    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Video;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 341
    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/Video;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/Video;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 344
    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/SocialArticle;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/SocialArticle;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_2
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialVideo;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 347
    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/SocialVideo;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/SocialVideo;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_3
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    if-eqz v0, :cond_4

    .line 350
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-static {p1, p2, v0, v1, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/SocialStoreLatestApps;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_4
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Feature;

    if-eqz v0, :cond_5

    .line 353
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/Feature;

    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/Feature;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_5
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;

    if-eqz v0, :cond_6

    .line 355
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-static {p1, p2, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/StoreLatestApps;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_6
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 358
    check-cast v0, Lcm/aptoide/pt/model/v7/timeline/AppUpdate;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v7, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/AppUpdate;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/InstallManager;Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_7
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Recommendation;

    if-eqz v0, :cond_8

    .line 362
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/Recommendation;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-static {p1, p2, p3, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/Recommendation;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    goto/16 :goto_0

    .line 364
    :cond_8
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/Similar;

    if-eqz v0, :cond_9

    .line 365
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/Similar;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-static {p1, p2, p3, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/Similar;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    goto/16 :goto_0

    .line 367
    :cond_9
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialInstall;

    if-eqz v0, :cond_a

    .line 368
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SocialInstall;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-static {p1, v0, p3, v1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialInstallDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/SocialInstall;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    goto/16 :goto_0

    .line 370
    :cond_a
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;

    if-eqz v0, :cond_b

    .line 371
    check-cast p1, Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-static {p1, v0, p3, v1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->from(Lcm/aptoide/pt/model/v7/timeline/SocialRecommendation;Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    goto/16 :goto_0

    .line 374
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only articles, features, store latest apps, app updates, videos, recommendations and similar cards supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDisplayableDataList(Lcm/aptoide/pt/model/v7/Datalist;Ljava/util/List;)Lcm/aptoide/pt/model/v7/Datalist;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lcm/aptoide/pt/model/v7/Datalist;

    invoke-direct {v0}, Lcm/aptoide/pt/model/v7/Datalist;-><init>()V

    .line 246
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setNext(I)V

    .line 247
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setCount(I)V

    .line 248
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getHidden()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setHidden(I)V

    .line 249
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setTotal(I)V

    .line 250
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setLimit(Ljava/lang/Integer;)V

    .line 251
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setOffset(I)V

    .line 252
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->isLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/model/v7/Datalist;->setLoaded(Z)V

    .line 253
    invoke-virtual {v0, p2}, Lcm/aptoide/pt/model/v7/Datalist;->setList(Ljava/util/List;)V

    .line 254
    return-object v0
.end method

.method private getDisplayableList(Ljava/util/List;IZ)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineRepository:Lcm/aptoide/pt/v8engine/repository/TimelineRepository;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1, p3}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->getTimelineCards(Ljava/lang/Integer;ILjava/util/List;Z)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/e;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getFreshDisplayables(ZLjava/util/List;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getDisplayableList(Ljava/util/List;IZ)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Z)Lrx/b/e;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/a;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getNextDisplayables(Ljava/util/List;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/RxEndlessRecyclerView;->loadMore(Landroid/support/v7/widget/RecyclerView;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/e;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Ljava/util/List;)Lrx/b/e;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/e;)Lrx/d;

    move-result-object v0

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 222
    invoke-virtual {v0, v2, v3, v1}, Lrx/d;->a(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    .line 223
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/e;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lrx/d;->j(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/a;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/a;)Lrx/d;

    move-result-object v0

    .line 228
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private getOffset()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->offset:I

    return v0
.end method

.method private isLoading()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->loading:Z

    return v0
.end method

.method private isTotal()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->offset:I

    iget v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->total:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$16(Lcm/aptoide/pt/model/v7/Datalist;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$8(Lcm/aptoide/pt/model/v7/Datalist;Ljava/lang/Throwable;)Lcm/aptoide/pt/model/v7/Datalist;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 201
    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;-><init>()V

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string v2, "ACTION"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v0
.end method

.method private onStartLoadNext()Z
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->isTotal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->endlessScrollLoadMore()V

    .line 325
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->addLoading()V

    .line 326
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    .line 327
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->isTotal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStopLoadNext(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->showErrorSnackbar(Ljava/lang/Throwable;)V

    .line 316
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->removeLoading()V

    .line 317
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshPackages()Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    .line 179
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packageRepository:Lcm/aptoide/pt/v8engine/repository/PackageRepository;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->getLatestInstalledPackages(I)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packageRepository:Lcm/aptoide/pt/v8engine/repository/PackageRepository;

    .line 180
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;->getRandomInstalledPackages(I)Lrx/d;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lrx/d;->a(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/b;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private removeLoading()V
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->loading:Z

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->loading:Z

    .line 298
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->popDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 300
    :cond_0
    return-void
.end method

.method private setOffset(Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getNext()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->offset:I

    .line 286
    :cond_0
    return-void
.end method

.method private setPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    .line 187
    return-void
.end method

.method private showErrorSnackbar(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 259
    invoke-static {p1}, Lcm/aptoide/pt/dataprovider/util/ErrorUtils;->isNoNetworkConnection(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->fragment_social_timeline_no_connection:I

    .line 265
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 266
    return-void

    .line 262
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->fragment_social_timeline_general_error:I

    goto :goto_0
.end method


# virtual methods
.method public goToTop()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 379
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 380
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 381
    if-le v0, v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 385
    return-void
.end method

.method synthetic lambda$getDisplayableList$19(Lcm/aptoide/pt/model/v7/Datalist;)Lrx/d;
    .locals 2

    .prologue
    .line 235
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$15;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lrx/d;->f(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/e;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Lcm/aptoide/pt/model/v7/Datalist;)Lrx/b/e;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getFreshDisplayables$10()V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->finishLoading()V

    return-void
.end method

.method synthetic lambda$getFreshDisplayables$6(Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->clearDisplayables()V

    return-void
.end method

.method synthetic lambda$getFreshDisplayables$9(ZLcm/aptoide/pt/model/v7/Datalist;)Lrx/d;
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineRepository:Lcm/aptoide/pt/v8engine/repository/TimelineRepository;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;->getTimelineStats(Z)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$19;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Lcm/aptoide/pt/model/v7/Datalist;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$20;->lambdaFactory$(Lcm/aptoide/pt/model/v7/Datalist;)Lrx/b/e;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lrx/d;->i(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;

    invoke-direct {v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 205
    invoke-static {p2}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {p2}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$getNextDisplayables$11(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->onStartLoadNext()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNextDisplayables$12(Ljava/util/List;Ljava/lang/Integer;)Lrx/d;
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getDisplayableList(Ljava/util/List;IZ)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNextDisplayables$14(Lrx/d;)Lrx/d;
    .locals 3

    .prologue
    .line 224
    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lrx/d;->a(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v0

    .line 225
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$18;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/e;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getNextDisplayables$15()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->removeLoading()V

    return-void
.end method

.method synthetic lambda$load$0(ZLjava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getFreshDisplayables(ZLjava/util/List;)Lrx/d;

    move-result-object v0

    .line 147
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getNextDisplayables(Ljava/util/List;)Lrx/d;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lrx/d;->a(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$1(ZLjava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getFreshDisplayables(ZLjava/util/List;)Lrx/d;

    move-result-object v0

    .line 159
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getNextDisplayables(Ljava/util/List;)Lrx/d;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Lrx/d;->a(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$2(Ljava/util/List;)Lrx/d;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getNextDisplayables(Ljava/util/List;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$load$3(Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->addItems(Lcm/aptoide/pt/model/v7/Datalist;)V

    return-void
.end method

.method synthetic lambda$load$4(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->finishLoading(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$null$13(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->onStopLoadNext(Ljava/lang/Throwable;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$17(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 6

    .prologue
    .line 237
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->downloadFactory:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->linksHandlerFactory:Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->cardToDisplayable(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/util/DownloadFactory;Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$18(Lcm/aptoide/pt/model/v7/Datalist;Ljava/util/List;)Lcm/aptoide/pt/model/v7/Datalist;
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->createDisplayableDataList(Lcm/aptoide/pt/model/v7/Datalist;Ljava/util/List;)Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$7(Lcm/aptoide/pt/model/v7/Datalist;Lcm/aptoide/pt/model/v7/TimelineStats;)Lcm/aptoide/pt/model/v7/Datalist;
    .locals 5

    .prologue
    .line 196
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->storeTheme:Ljava/lang/String;

    invoke-direct {v2, p2, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;-><init>(Lcm/aptoide/pt/model/v7/TimelineStats;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Ljava/lang/String;)V

    .line 197
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 198
    return-object p1
.end method

.method synthetic lambda$refreshPackages$5(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->setPackages(Ljava/util/List;)V

    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->load(ZZLandroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->subscription:Lrx/k;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->subscription:Lrx/k;

    invoke-interface {v0}, Lrx/k;->unsubscribe()V

    .line 137
    :cond_0
    if-eqz p1, :cond_2

    .line 138
    if-eqz p3, :cond_1

    const-string v0, "PACKAGE_LIST"

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "PACKAGE_LIST"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    .line 141
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 145
    :goto_0
    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Z)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 166
    :goto_1
    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    .line 167
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/b;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->subscription:Lrx/k;

    .line 169
    return-void

    .line 143
    :cond_1
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->refreshPackages()Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 156
    :goto_2
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 157
    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;Z)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_1

    .line 153
    :cond_3
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->refreshPackages()Lrx/d;

    move-result-object v0

    goto :goto_2

    .line 161
    :cond_4
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;)Lrx/b/e;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 114
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 115
    new-instance v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->downloadFactory:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    .line 116
    new-instance v0, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->linksHandlerFactory:Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;

    .line 117
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/PackageRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/PackageRepository;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packageRepository:Lcm/aptoide/pt/v8engine/repository/PackageRepository;

    .line 118
    new-instance v0, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v0}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->permissionManager:Lcm/aptoide/pt/actions/PermissionManager;

    .line 119
    new-instance v0, Lcm/aptoide/pt/v8engine/install/InstallerFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/install/InstallerFactory;->create(Landroid/content/Context;I)Lcm/aptoide/pt/v8engine/install/Installer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    .line 120
    new-instance v1, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ACTION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;

    new-instance v4, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v4, v0}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;-><init>(Ljava/util/Set;)V

    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    .line 122
    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    invoke-direct {v3, v4, v0}, Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;-><init>(Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter$TimelineCardDuplicateFilter;Lcm/aptoide/pt/database/accessors/InstalledAccessor;)V

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/repository/TimelineRepository;-><init>(Ljava/lang/String;Lcm/aptoide/pt/v8engine/repository/TimelineCardFilter;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineRepository:Lcm/aptoide/pt/v8engine/repository/TimelineRepository;

    .line 123
    new-instance v0, Lcm/aptoide/pt/v8engine/InstallManager;

    invoke-static {}, Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;->getInstance()Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->installer:Lcm/aptoide/pt/v8engine/install/Installer;

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/InstallManager;-><init>(Lcm/aptoide/pt/downloadmanager/AptoideDownloadManager;Lcm/aptoide/pt/v8engine/install/Installer;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;

    .line 124
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->getInstance()Lcm/aptoide/pt/v8engine/analytics/Analytics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;-><init>(Lcm/aptoide/pt/v8engine/analytics/Analytics;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->timelineMetricsManager:Lcm/aptoide/pt/v8engine/repository/TimelineMetricsManager;

    .line 125
    new-instance v0, Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->socialRepository:Lcm/aptoide/pt/v8engine/repository/SocialRepository;

    .line 126
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 173
    const-string v1, "PACKAGE_LIST"

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->packages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 214
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->pullToRefresh()V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->load(ZZLandroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method public setTotal(Lcm/aptoide/pt/model/v7/Datalist;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/Datalist",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Datalist;->getTotal()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->total:I

    .line 276
    :cond_0
    return-void
.end method
