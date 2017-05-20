.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "StoreLatestCommentsWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private storeId:J

.field private storeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 48
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 50
    return-void
.end method

.method static synthetic lambda$reloadComments$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method private reloadComments()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setForceServerRefreshFlag(Z)V

    .line 79
    iget-object v7, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->compositeSubscription:Lrx/j/b;

    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->storeId:J

    const/4 v3, 0x3

    .line 80
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 81
    invoke-interface {v5}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    move v6, v2

    .line 80
    invoke-static/range {v0 .. v6}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->of(JIILjava/lang/String;Ljava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListCommentsRequest;->observe()Lrx/d;

    move-result-object v0

    .line 83
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 84
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 79
    invoke-virtual {v7, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method private setAdapter(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->storeId:J

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->storeName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/u;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;)Ljava/util/concurrent/Callable;

    move-result-object v5

    .line 74
    invoke-static {v5}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v8

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget$CommentListAdapter;-><init>(JLjava/lang/String;Ljava/util/List;Landroid/app/FragmentManager;Landroid/view/View;Lrx/d;)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->comments:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 54
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;)V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 59
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/custom/HorizontalDividerItemDecoration;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/view/custom/HorizontalDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 63
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->getStoreId()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->storeId:J

    .line 64
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->storeName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->setAdapter(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method synthetic lambda$reloadComments$1(Lcm/aptoide/pt/model/v7/ListComments;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/ListComments;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->setAdapter(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method synthetic lambda$setAdapter$0()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;->reloadComments()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
