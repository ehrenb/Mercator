.class public Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$m;
.source "EndlessRecyclerOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field protected final adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

.field private bypassCache:Z

.field protected endCallbackCalled:Z

.field protected errorRequestListener:Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

.field protected firstCallbackCalled:Z

.field private firstVisibleItem:I

.field protected loading:Z

.field private mRecyclerViewHelper:Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;

.field protected offset:I

.field protected onEndOfListReachedListener:Lrx/b/a;

.field protected onFirstLoadListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;

.field protected stableData:Z

.field protected final successRequestListener:Lrx/b/b;

.field protected total:I

.field private totalItemCount:I

.field protected final v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<+",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;",
            "+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation
.end field

.field private visibleItemCount:I

.field private visibleThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;",
            ">(",
            "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move v6, v5

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;IZLcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;Lrx/b/a;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;",
            ">(",
            "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<TT;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;",
            "Lrx/b/b",
            "<TT;>;",
            "Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;IZLcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;Lrx/b/a;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;IZLcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;Lrx/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;",
            ">(",
            "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<TT;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;",
            "Lrx/b/b",
            "<TT;>;",
            "Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;",
            "IZ",
            "Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction",
            "<TT;>;",
            "Lrx/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->stableData:Z

    .line 58
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    .line 59
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    .line 60
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->successRequestListener:Lrx/b/b;

    .line 61
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->errorRequestListener:Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    .line 62
    iput p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->visibleThreshold:I

    .line 63
    iput-boolean p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->bypassCache:Z

    .line 64
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onEndOfListReachedListener:Lrx/b/a;

    .line 65
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->endCallbackCalled:Z

    .line 66
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->firstCallbackCalled:Z

    .line 67
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onFirstLoadListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;",
            ">(",
            "Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<TT;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;",
            "Lrx/b/b",
            "<TT;>;",
            "Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 73
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;IZLcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;Lrx/b/a;)V

    .line 75
    return-void
.end method

.method private shouldLoadMore()Z
    .locals 3

    .prologue
    .line 98
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->loading:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->totalItemCount:I

    iget v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->visibleItemCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->firstVisibleItem:I

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->visibleThreshold:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected hasMoreElements()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->stableData:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->offset:I

    iget v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->total:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->offset:I

    iget v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->total:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method synthetic lambda$onLoadMore$0(Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->popDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->hasStableTotal()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->stableData:Z

    .line 117
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->stableData:Z

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->getTotal()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->total:I

    .line 119
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->getNextSize()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->offset:I

    .line 124
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/Endless;

    iget v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->offset:I

    invoke-interface {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/Endless;->setOffset(I)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onFirstLoadListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->firstCallbackCalled:Z

    if-nez v0, :cond_5

    .line 128
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onFirstLoadListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;->call(Lcm/aptoide/pt/model/v7/BaseV7Response;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->successRequestListener:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    .line 131
    :cond_2
    iput-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->firstCallbackCalled:Z

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onEndOfListReachedListener:Lrx/b/a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->endCallbackCalled:Z

    if-nez v0, :cond_3

    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onEndOfListReachedListener:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->call()V

    .line 139
    iput-boolean v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->endCallbackCalled:Z

    .line 142
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->loading:Z

    .line 143
    return-void

    .line 121
    :cond_4
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->total:I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->getTotal()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->total:I

    .line 122
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->offset:I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessResponse;->getNextSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->offset:I

    goto :goto_0

    .line 134
    :cond_5
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->successRequestListener:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method synthetic lambda$onLoadMore$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->popDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 148
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->errorRequestListener:Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;->onError(Ljava/lang/Throwable;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->loading:Z

    .line 150
    return-void
.end method

.method public onLoadMore(Z)V
    .locals 3

    .prologue
    .line 104
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->loading:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->loading:Z

    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->adapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;-><init>()V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    .line 107
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->observe(Z)Lrx/d;

    move-result-object v0

    .line 108
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 109
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;)Lrx/b/b;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 152
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->mRecyclerViewHelper:Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;

    if-nez v0, :cond_0

    .line 86
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->createHelper(Landroid/support/v7/widget/RecyclerView;)Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->mRecyclerViewHelper:Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->visibleItemCount:I

    .line 89
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->mRecyclerViewHelper:Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->getItemCount()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->totalItemCount:I

    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->mRecyclerViewHelper:Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/util/RecyclerViewPositionHelper;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->firstVisibleItem:I

    .line 92
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->shouldLoadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->bypassCache:Z

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 95
    :cond_1
    return-void
.end method

.method public removeListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onFirstLoadListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;

    .line 160
    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onEndOfListReachedListener:Lrx/b/a;

    .line 161
    return-void
.end method

.method public setOnEndOfListReachedListener(Lrx/b/a;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onEndOfListReachedListener:Lrx/b/a;

    return-void
.end method

.method public setOnFirstLoadListener(Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onFirstLoadListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;

    return-void
.end method
