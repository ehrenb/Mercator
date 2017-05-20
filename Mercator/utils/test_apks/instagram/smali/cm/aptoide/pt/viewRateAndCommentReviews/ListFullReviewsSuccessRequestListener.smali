.class Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;
.super Ljava/lang/Object;
.source "ListFullReviewsSuccessRequestListener.java"

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
        "<",
        "Lcm/aptoide/pt/model/v7/ListReviews;",
        ">;"
    }
.end annotation


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private final fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;)V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    .line 30
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 32
    return-void
.end method

.method private addRateAndReviewDisplayables(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Review;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v0, -0x1

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/Review;

    .line 65
    new-instance v5, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;

    new-instance v6, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;

    iget-object v7, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    .line 66
    invoke-virtual {v7}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;-><init>(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Review;)V

    new-instance v7, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;

    iget-object v8, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-direct {v7, v1, v8, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/ConcreteItemCommentAdder;-><init>(ILcm/aptoide/pt/viewRateAndCommentReviews/ItemCommentAdderView;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v8

    invoke-virtual {v8}, Lcm/aptoide/pt/model/v7/ListComments;->getTotal()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;-><init>(Lcm/aptoide/pt/viewRateAndCommentReviews/ReviewWithAppName;Lcm/aptoide/pt/viewRateAndCommentReviews/CommentAdder;I)V

    .line 65
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v6

    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v5}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getReviewId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move v3, v1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 74
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/Datalist;->getLimit()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 76
    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->createDisplayableComments(Ljava/util/List;Ljava/util/List;)V

    .line 78
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review;->getCommentList()Lcm/aptoide/pt/model/v7/ListComments;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v5

    invoke-virtual {v5}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 79
    iget-object v5, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v5, v1, v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->createReadMoreDisplayable(ILcm/aptoide/pt/model/v7/Review;)Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 83
    goto/16 :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 90
    :goto_1
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->checkAndRemoveProgressBarDisplayable()V

    .line 91
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->addDisplayables(Ljava/util/List;)V

    .line 92
    if-ltz v2, :cond_3

    .line 93
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/adapters/CommentsAdapter;->getItemPosition(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$h;->scrollToPosition(I)V

    .line 95
    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method static synthetic lambda$call$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method static synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/Review;Lcm/aptoide/pt/model/v7/ListComments;)Lcm/aptoide/pt/model/v7/Review;
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/model/v7/Review;->setCommentList(Lcm/aptoide/pt/model/v7/ListComments;)V

    .line 49
    return-object p0
.end method


# virtual methods
.method public call(Lcm/aptoide/pt/model/v7/ListReviews;)V
    .locals 5

    .prologue
    .line 36
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListReviews;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 38
    iget-object v2, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v3

    invoke-static {p0, v2}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;Ljava/lang/String;)Lrx/b/e;

    move-result-object v2

    .line 41
    invoke-virtual {v3, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lrx/d;->p()Lrx/d;

    move-result-object v2

    .line 52
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    sget-object v4, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 53
    invoke-virtual {v3, v4}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0, v1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;Ljava/util/List;Ljava/util/List;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v1

    .line 54
    invoke-virtual {v2, v0, v1}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 59
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcm/aptoide/pt/model/v7/ListReviews;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->call(Lcm/aptoide/pt/model/v7/ListReviews;)V

    return-void
.end method

.method synthetic lambda$call$1(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Review;)Lrx/d;
    .locals 9

    .prologue
    .line 41
    .line 42
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Review;->getComments()Lcm/aptoide/pt/model/v7/Review$Comments;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Review$Comments;->getView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/Review;->getId()J

    move-result-wide v2

    const/4 v4, 0x3

    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->fragment:Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    .line 43
    invoke-virtual {v0}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->getStoreName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentials(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v5

    .line 44
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move-object v7, p1

    .line 41
    invoke-static/range {v1 .. v8}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->of(Ljava/lang/String;JILcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 46
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/model/v7/Review;)Lrx/b/e;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$call$2(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/viewRateAndCommentReviews/ListFullReviewsSuccessRequestListener;->addRateAndReviewDisplayables(Ljava/util/List;Ljava/util/List;)V

    .line 56
    return-void
.end method
