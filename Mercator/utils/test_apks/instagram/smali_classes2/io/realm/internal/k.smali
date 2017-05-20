.class public abstract Lio/realm/internal/k;
.super Ljava/lang/Object;
.source "RealmProxyMediator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static b(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "A class extending RealmObject must be provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    return-void
.end method

.method protected static c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Lio/realm/exceptions/RealmException;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not part of the schema for this Realm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(TE;I",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)TE;"
        }
    .end annotation
.end method

.method public abstract a(Lio/realm/u;Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Lio/realm/u;",
            "TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)TE;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Lio/realm/internal/b;)Lio/realm/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/ac;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lio/realm/internal/b;",
            ")TE;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/e;",
            ")",
            "Lio/realm/internal/Table;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract a(Lio/realm/u;Lio/realm/ac;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lio/realm/ac;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lio/realm/u;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Ljava/util/Collection",
            "<+",
            "Lio/realm/ac;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/e;",
            ")",
            "Lio/realm/internal/b;"
        }
    .end annotation
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 198
    instance-of v0, p1, Lio/realm/internal/k;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_0
    check-cast p1, Lio/realm/internal/k;

    .line 202
    invoke-virtual {p0}, Lio/realm/internal/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/k;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lio/realm/internal/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method
