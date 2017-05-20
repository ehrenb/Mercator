.class public Lcm/aptoide/pt/database/accessors/StoreAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "StoreAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/Store;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method public get(J)Lrx/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    const-string v2, "storeId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/database/accessors/Database;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lrx/d;
    .locals 3
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
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    const-string v2, "storeName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Lrx/d;
    .locals 2
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
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->getAll(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public remove(J)V
    .locals 5

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    const-string v2, "storeId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/Store;

    const-string v2, "storeName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public save(Lcm/aptoide/pt/database/realm/Store;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 38
    return-void
.end method
