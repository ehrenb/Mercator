.class public Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;
.super Ljava/lang/Object;
.source "V7EndlessController.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/interfaces/EndlessControllerWithCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/dataprovider/interfaces/EndlessControllerWithCache",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private loading:Z

.field private observable:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TU;>;>;"
        }
    .end annotation
.end field

.field private offset:I

.field private stableData:Z

.field private total:I

.field private final v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<+",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse",
            "<TU;>;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/V7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<+",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse",
            "<TU;>;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    .line 29
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/store/ListStores;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/store/ListStores;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/ListStores;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hasMoreElements()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    iget-boolean v2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->stableData:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->offset:I

    iget v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->total:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->offset:I

    iget v3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->total:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic lambda$get$0(Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TU;>;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->observe()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadMore$1()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->loading:Z

    .line 53
    return-void
.end method

.method synthetic lambda$loadMore$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->loading:Z

    .line 57
    return-void
.end method

.method synthetic lambda$loadMore$3(Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;)Ljava/util/List;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->hasStableTotal()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->stableData:Z

    .line 65
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->stableData:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getTotal()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->total:I

    .line 67
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getNextSize()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->offset:I

    .line 72
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/Endless;

    iget v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->offset:I

    invoke-interface {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/Endless;->setOffset(I)V

    .line 73
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 78
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->loading:Z

    .line 80
    return-object v0

    .line 69
    :cond_0
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->total:I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getTotal()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->total:I

    .line 70
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->offset:I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getNextSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->offset:I

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public loadMore()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TU;>;>;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->loadMore(Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public loadMore(Z)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<TU;>;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->loading:Z

    if-nez v0, :cond_1

    .line 46
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->observe(Z)Lrx/d;

    move-result-object v0

    .line 48
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 49
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lrx/d;->f()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;)Lrx/b/a;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;)Lrx/b/b;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;)Lrx/b/e;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->observable:Lrx/d;

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/V7EndlessController;->observable:Lrx/d;

    goto :goto_0
.end method
