.class public abstract Lcm/aptoide/pt/database/accessors/SimpleAccessor;
.super Ljava/lang/Object;
.source "SimpleAccessor.java"

# interfaces
.implements Lcm/aptoide/pt/database/accessors/Accessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/ad;",
        ">",
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/database/accessors/Accessor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;

.field final database:Lcm/aptoide/pt/database/accessors/Database;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/database/accessors/Database;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->clazz:Ljava/lang/Class;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->clazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Lcm/aptoide/pt/database/accessors/Database;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/accessors/Database;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    .line 30
    iput-object p2, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->clazz:Ljava/lang/Class;

    .line 31
    return-void
.end method


# virtual methods
.method public count()Lrx/d;
    .locals 2
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
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    iget-object v1, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->count(Ljava/lang/Class;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lio/realm/ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insert(Lio/realm/ad;)V

    .line 45
    return-void
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/Database;->insertAll(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->database:Lcm/aptoide/pt/database/accessors/Database;

    iget-object v1, p0, Lcm/aptoide/pt/database/accessors/SimpleAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/Database;->deleteAll(Ljava/lang/Class;)V

    .line 41
    :cond_0
    return-void
.end method
