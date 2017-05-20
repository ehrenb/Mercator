.class public Lb/a/a/a;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lb/a/a/b;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lb/a/a/a;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lb/a/a/a;)V
    .locals 1

    .prologue
    .line 60
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb/a/a/a;->size()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lb/a/a/a;-><init>(I)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lb/a/a/a;->putAll(Ljava/util/Map;)V

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    const/16 v0, 0x400

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lb/a/a/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lb/a/a/b;)Lb/a/a/b;
    .locals 5

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    monitor-enter v2

    .line 137
    :try_start_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 138
    invoke-virtual {v0, p1}, Lb/a/a/b;->a(Lb/a/a/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    :goto_0
    monitor-exit v2

    .line 146
    :goto_1
    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Lb/a/a/b;
    .locals 5

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1}, Lb/a/a/a;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_2

    .line 161
    monitor-enter v2

    .line 162
    :try_start_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 163
    invoke-virtual {v0, p2}, Lb/a/a/b;->a(Lb/a/a/a/e;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p3}, Lb/a/a/b;->a(Lb/a/a/a/d;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    :goto_0
    monitor-exit v2

    .line 170
    :goto_1
    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0}, Lb/a/a/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 100
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lb/a/a/a;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_0

    .line 112
    monitor-enter v1

    .line 113
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    monitor-exit v1

    .line 118
    :goto_0
    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 116
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lb/a/a/b;Lb/a/a/b;)Z
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 253
    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 257
    :cond_0
    monitor-enter v0

    .line 258
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v0

    .line 262
    const/4 v0, 0x1

    .line 264
    :cond_1
    return v0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb/a/a/a/e;",
            "Lb/a/a/a/d;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lb/a/a/a;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_3

    .line 184
    monitor-enter v2

    .line 185
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/b;

    .line 188
    invoke-virtual {v0, p2}, Lb/a/a/b;->a(Lb/a/a/a/e;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p3}, Lb/a/a/b;->a(Lb/a/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 196
    :goto_1
    return-object v0

    .line 194
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public b(Lb/a/a/b;)Z
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    :cond_0
    monitor-enter v0

    .line 214
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    monitor-exit v0

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_1
    return v0

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Lb/a/a/b;)Z
    .locals 2

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Lb/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 232
    if-eqz v0, :cond_0

    .line 233
    monitor-enter v0

    .line 234
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v0

    .line 238
    :cond_0
    return v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lb/a/a/a;

    invoke-direct {v0, p0}, Lb/a/a/a;-><init>(Lb/a/a/a;)V

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x7d0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 273
    const-string v0, "\t---- cache ----"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {p0}, Lb/a/a/a;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 275
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    const-string v1, "\n\t\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const-string v1, "\n\t\tname \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v1, "\' "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {p0, v0}, Lb/a/a/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 282
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/b;

    .line 285
    const-string v5, "\n\t\t\t"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {v1}, Lb/a/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 288
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 290
    :cond_1
    :try_start_4
    const-string v0, " no entries"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method
