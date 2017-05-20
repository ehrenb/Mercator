.class public Lcm/aptoide/pt/v8engine/repository/StoreRepository;
.super Ljava/lang/Object;
.source "StoreRepository.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/repository/Repository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/v8engine/repository/Repository",
        "<",
        "Lcm/aptoide/pt/database/realm/Store;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/StoreAccessor;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 17
    return-void
.end method

.method static synthetic lambda$isSubscribed$0(Lcm/aptoide/pt/database/realm/Store;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 20
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$isSubscribed$1(Lcm/aptoide/pt/database/realm/Store;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 24
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public count()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->count()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Integer;)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(J)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lrx/d;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->get(Ljava/lang/Integer;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/database/realm/Store;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->getAll()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public isSubscribed(J)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(J)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/StoreRepository$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public isSubscribed(Ljava/lang/String;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/StoreRepository$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcm/aptoide/pt/database/realm/Store;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->storeAccessor:Lcm/aptoide/pt/database/accessors/StoreAccessor;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->insert(Lio/realm/ad;)V

    .line 37
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/StoreRepository;->save(Lcm/aptoide/pt/database/realm/Store;)V

    return-void
.end method
