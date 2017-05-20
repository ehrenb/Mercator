.class public Lcm/aptoide/pt/dataprovider/DatalistEndlessController;
.super Ljava/lang/Object;
.source "DatalistEndlessController.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/interfaces/EndlessControllerWithCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/dataprovider/interfaces/EndlessControllerWithCache",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TU;>;"
        }
    .end annotation
.end field

.field private loading:Z

.field private final mapper:Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper",
            "<TT;TU;>;"
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
            "<TT;>;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
            "<+",
            "Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse",
            "<TT;>;+",
            "Lcm/aptoide/pt/dataprovider/ws/v7/Endless;",
            ">;",
            "Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->list:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    .line 31
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->mapper:Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper;

    .line 32
    return-void
.end method

.method private hasMoreElements()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    iget-boolean v2, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->stableData:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->offset:I

    iget v3, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->total:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->offset:I

    iget v3, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->total:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public get()Lrx/d;
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
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->list:Ljava/util/List;

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadMore$0()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->loading:Z

    .line 51
    return-void
.end method

.method synthetic lambda$loadMore$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->loading:Z

    .line 55
    return-void
.end method

.method synthetic lambda$loadMore$2(Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;)Lrx/d;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->hasStableTotal()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->stableData:Z

    .line 63
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->stableData:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getTotal()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->total:I

    .line 65
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getNextSize()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->offset:I

    .line 70
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->getBody()Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/Endless;

    iget v1, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->offset:I

    invoke-interface {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/Endless;->setOffset(I)V

    .line 71
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    .line 76
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->loading:Z

    .line 78
    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->mapper:Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/DatalistEndlessController$Mapper;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    iget v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->total:I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getTotal()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->total:I

    .line 68
    iget v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->offset:I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/BaseV7EndlessDatalistResponse;->getNextSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->offset:I

    goto :goto_0

    .line 73
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
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->loadMore(Z)Lrx/d;

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
    .line 44
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->loading:Z

    if-nez v0, :cond_1

    .line 45
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/DatalistEndlessController;->v7request:Lcm/aptoide/pt/dataprovider/ws/v7/V7;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;->observe(Z)Lrx/d;

    move-result-object v0

    .line 47
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 48
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/DatalistEndlessController;)Lrx/b/a;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/DatalistEndlessController;)Lrx/b/b;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/dataprovider/DatalistEndlessController$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/dataprovider/DatalistEndlessController;)Lrx/b/e;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method
