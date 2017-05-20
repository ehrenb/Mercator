.class public Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;
.super Ljava/lang/Object;
.source "RateAndReviewsPresenter.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/presenter/Presenter;


# instance fields
.field private final ratingRequest:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

.field private final request:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

.field private final schedulerProvider:Lcm/aptoide/pt/util/schedulers/SchedulerProvider;

.field private subscriptions:Lrx/j/b;

.field private final view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;Lcm/aptoide/pt/util/schedulers/SchedulerProvider;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    .line 33
    iput-object p6, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->schedulerProvider:Lcm/aptoide/pt/util/schedulers/SchedulerProvider;

    .line 35
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4, v1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->request:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    .line 42
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v0, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->of(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->ratingRequest:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    .line 45
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->subscriptions:Lrx/j/b;

    .line 46
    return-void
.end method

.method static synthetic lambda$present$0(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->RESUME:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$present$2(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method static synthetic lambda$present$6(Lcm/aptoide/pt/model/v7/ListReviews;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method static synthetic lambda$showRating$11(Lcm/aptoide/pt/model/v7/GetApp;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$showReviews$9(Lcm/aptoide/pt/model/v7/ListReviews;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method private showRating()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->ratingRequest:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;->observe()Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->schedulerProvider:Lcm/aptoide/pt/util/schedulers/SchedulerProvider;

    invoke-interface {v1}, Lcm/aptoide/pt/util/schedulers/SchedulerProvider;->ui()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$11;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private showReviews()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->request:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->observe()Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->schedulerProvider:Lcm/aptoide/pt/util/schedulers/SchedulerProvider;

    invoke-interface {v1}, Lcm/aptoide/pt/util/schedulers/SchedulerProvider;->ui()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$9;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$null$4(Lcm/aptoide/pt/model/v7/ListReviews;)V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListReviews;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showNextReviews(ILjava/util/List;)V

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-interface {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showError(Ljava/lang/Throwable;)V

    .line 71
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method synthetic lambda$present$1(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lrx/d;
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->showReviews()Lrx/d;

    move-result-object v0

    invoke-direct {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->showRating()Lrx/d;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/d;->b(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$present$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showError(Ljava/lang/Throwable;)V

    .line 58
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method synthetic lambda$present$5(Ljava/lang/Integer;)Lrx/d;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->request:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;->setOffset(I)V

    .line 64
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->request:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest;->observe()Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->schedulerProvider:Lcm/aptoide/pt/util/schedulers/SchedulerProvider;

    invoke-interface {v1}, Lcm/aptoide/pt/util/schedulers/SchedulerProvider;->ui()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$present$7(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showError(Ljava/lang/Throwable;)V

    .line 77
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method synthetic lambda$showRating$10(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showRating(Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;)V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-interface {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showError(Ljava/lang/Throwable;)V

    .line 110
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method synthetic lambda$showReviews$8(Lcm/aptoide/pt/model/v7/ListReviews;)V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListReviews;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showNextReviews(ILjava/util/List;)V

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-interface {v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->showError(Ljava/lang/Throwable;)V

    .line 97
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-interface {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->getLifecycle()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/e;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->schedulerProvider:Lcm/aptoide/pt/util/schedulers/SchedulerProvider;

    .line 53
    invoke-interface {v1}, Lcm/aptoide/pt/util/schedulers/SchedulerProvider;->ui()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 54
    invoke-interface {v1, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/b;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    invoke-interface {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->nextReviews()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;->view:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 74
    invoke-interface {v1, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsPresenter;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 79
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
