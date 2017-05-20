.class public Lio/realm/internal/c/a;
.super Lio/realm/internal/k;
.source "CompositeMediator.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Lio/realm/internal/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lio/realm/internal/k;)V
    .locals 6

    .prologue
    .line 48
    invoke-direct {p0}, Lio/realm/internal/k;-><init>()V

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 50
    if-eqz p1, :cond_1

    .line 51
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 52
    invoke-virtual {v4}, Lio/realm/internal/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 53
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/c/a;->a:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private d(Ljava/lang/Class;)Lio/realm/internal/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;)",
            "Lio/realm/internal/k;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lio/realm/internal/c/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/k;

    .line 156
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not part of the schema for this Realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;
    .locals 1
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

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/k;->a(Lio/realm/ac;ILjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/u;Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;
    .locals 1
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

    .prologue
    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/realm/internal/k;->a(Lio/realm/u;Lio/realm/ac;ZLjava/util/Map;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/b;)Lio/realm/ac;
    .locals 1
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

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/k;->a(Ljava/lang/Class;Lio/realm/internal/b;)Lio/realm/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 1
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

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/k;->a(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/Table;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
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

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lio/realm/internal/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
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

    .prologue
    .line 92
    iget-object v0, p0, Lio/realm/internal/c/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/u;Lio/realm/ac;Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/k;->a(Lio/realm/u;Lio/realm/ac;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public a(Lio/realm/u;Ljava/util/Collection;)V
    .locals 1
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

    .prologue
    .line 121
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/k;->a(Lio/realm/u;Ljava/util/Collection;)V

    .line 123
    return-void
.end method

.method public b(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/b;
    .locals 1
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

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lio/realm/internal/c/a;->d(Ljava/lang/Class;)Lio/realm/internal/k;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/k;->b(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lio/realm/internal/c/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/k;

    invoke-virtual {v0}, Lio/realm/internal/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
