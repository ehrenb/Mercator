.class public Lio/realm/internal/c/b;
.super Lio/realm/internal/k;
.source "FilterableMediator.java"


# instance fields
.field private final a:Lio/realm/internal/k;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/internal/k;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/k;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/ac;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lio/realm/internal/k;-><init>()V

    .line 57
    iput-object p1, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

    .line 59
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 60
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Lio/realm/internal/k;->a()Ljava/util/Set;

    move-result-object v2

    .line 62
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 63
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/c/b;->b:Ljava/util/Set;

    .line 69
    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 3
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
    .line 169
    iget-object v0, p0, Lio/realm/internal/c/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
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

    .line 172
    :cond_0
    return-void
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
    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 155
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

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
    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 113
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

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
    .line 101
    invoke-direct {p0, p1}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 102
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

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
    .line 77
    invoke-direct {p0, p1}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 78
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

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
    .line 95
    invoke-direct {p0, p1}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 96
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

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
    .line 107
    iget-object v0, p0, Lio/realm/internal/c/b;->b:Ljava/util/Set;

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
    .line 130
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 131
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/k;->a(Lio/realm/u;Lio/realm/ac;Ljava/util/Map;)V

    .line 132
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
    .line 136
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 137
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/k;->a(Lio/realm/u;Ljava/util/Collection;)V

    .line 138
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
    .line 83
    invoke-direct {p0, p1}, Lio/realm/internal/c/b;->d(Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/k;->b(Ljava/lang/Class;Lio/realm/internal/e;)Lio/realm/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/realm/internal/c/b;->a:Lio/realm/internal/k;

    invoke-virtual {v0}, Lio/realm/internal/k;->b()Z

    move-result v0

    goto :goto_0
.end method
