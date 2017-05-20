.class public Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;
.super Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;
.source "FragmentTopStores.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
        ">;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;"
    }
.end annotation


# static fields
.field public static final STORES_LIMIT_PER_REQUEST:I = 0xa

.field public static TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener",
            "<",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->offset:I

    .line 33
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->listener:Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    return-void
.end method

.method private createDisplayables(Lcm/aptoide/pt/model/v7/store/ListStores;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/Store;

    .line 48
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-direct {v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;-><init>(Lcm/aptoide/pt/model/v7/store/Store;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    return-object v1
.end method

.method private fetchStores()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->requestFactory:Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;

    iget v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->offset:I

    const/16 v2, 0xa

    .line 70
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/repository/request/RequestFactory;->newListStoresRequest(II)Lcm/aptoide/pt/dataprovider/ws/v7/store/ListStoresRequest;

    move-result-object v0

    .line 71
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 72
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->listener:Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 76
    return-void
.end method

.method static synthetic lambda$null$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public static newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->fragment_with_toolbar:I

    return v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->offset:I

    return v0
.end method

.method synthetic lambda$new$3(Lcm/aptoide/pt/model/v7/store/ListStores;)V
    .locals 3

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;Lcm/aptoide/pt/model/v7/store/ListStores;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/util/concurrent/Callable;)Lrx/d;

    move-result-object v0

    .line 35
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 36
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 34
    return-void
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/store/ListStores;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->createDisplayables(Lcm/aptoide/pt/model/v7/store/ListStores;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$1(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->addDisplayables(Ljava/util/List;)V

    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->load(ZZLandroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->fetchStores()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->offset:I

    .line 101
    return-void
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 83
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->top_stores_fragment_title:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 84
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->logo_toolbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(I)V

    .line 85
    return-void
.end method

.method public setupViews()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/AptoideBaseFragment;->setupViews()V

    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->setupToolbar()V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->setHasOptionsMenu(Z)V

    .line 61
    return-void
.end method
