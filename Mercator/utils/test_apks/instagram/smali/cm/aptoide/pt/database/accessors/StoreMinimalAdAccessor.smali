.class public Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;
.super Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.source "StoreMinimalAdAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/database/accessors/SimpleAccessor",
        "<",
        "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/accessors/SimpleAccessor;-><init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lrx/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/database/realm/StoredMinimalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/database/accessors/Database;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcm/aptoide/pt/database/realm/StoredMinimalAd;)V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/StoreMinimalAdAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    const-class v1, Lcm/aptoide/pt/database/realm/StoredMinimalAd;

    const-string v2, "packageName"

    .line 22
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/StoredMinimalAd;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/database/accessors/Database;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
