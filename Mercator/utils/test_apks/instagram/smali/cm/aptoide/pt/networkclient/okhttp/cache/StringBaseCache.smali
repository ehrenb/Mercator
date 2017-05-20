.class abstract Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;
.super Lcm/aptoide/pt/networkclient/okhttp/cache/BaseCache;
.source "StringBaseCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/networkclient/okhttp/cache/BaseCache",
        "<TK;TV;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm",
            "<TK;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/BaseCache;-><init>(Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;)V

    .line 11
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initialize cache using init() first"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;->getKeyFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method abstract contains(Ljava/lang/String;)Z
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initialize cache using init() first"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->isValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;->getKeyFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TK;)TV;"
        }
    .end annotation
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initialize cache using init() first"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;->getKeyFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract isValid(Ljava/lang/String;)Z
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initialize cache using init() first"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;->getKeyFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method abstract put(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Initialize cache using init() first"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;->getKeyFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/networkclient/okhttp/cache/StringBaseCache;->remove(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method abstract remove(Ljava/lang/String;)V
.end method
