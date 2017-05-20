.class Lb/a/a/l$b;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Lb/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lb/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lb/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 2089
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/l$b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 2090
    iput-object p1, p0, Lb/a/a/l$b;->c:Ljava/lang/String;

    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/l$b;->d:Z

    .line 2092
    return-void
.end method


# virtual methods
.method public serviceAdded(Lb/a/c;)V
    .locals 5

    .prologue
    .line 2102
    monitor-enter p0

    .line 2103
    :try_start_0
    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v0

    .line 2104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2105
    iget-object v1, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    :goto_0
    monitor-exit p0

    .line 2116
    return-void

    .line 2107
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/a/d;->q()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2108
    :goto_1
    invoke-virtual {p1}, Lb/a/c;->a()Lb/a/a;

    move-result-object v0

    check-cast v0, Lb/a/a/l;

    invoke-virtual {p1}, Lb/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lb/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lb/a/a/q;

    move-result-object v0

    .line 2109
    if-eqz v0, :cond_2

    .line 2110
    iget-object v1, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2107
    :cond_1
    :try_start_1
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    .line 2112
    :cond_2
    iget-object v0, p0, Lb/a/a/l$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serviceRemoved(Lb/a/c;)V
    .locals 2

    .prologue
    .line 2126
    monitor-enter p0

    .line 2127
    :try_start_0
    iget-object v0, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    iget-object v0, p0, Lb/a/a/l$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    monitor-exit p0

    .line 2130
    return-void

    .line 2129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceResolved(Lb/a/c;)V
    .locals 3

    .prologue
    .line 2140
    monitor-enter p0

    .line 2141
    :try_start_0
    iget-object v0, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iget-object v0, p0, Lb/a/a/l$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lb/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    monitor-exit p0

    .line 2144
    return-void

    .line 2143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2179
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2180
    const-string v0, "\n\tType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2181
    iget-object v0, p0, Lb/a/a/l$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2182
    iget-object v0, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2183
    const-string v0, "\n\tNo services collected."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2193
    :cond_0
    iget-object v0, p0, Lb/a/a/l$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2194
    const-string v0, "\n\tNo event queued."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2204
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2185
    :cond_2
    const-string v0, "\n\tServices"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2186
    iget-object v0, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2187
    const-string v3, "\n\t\tService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2189
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2190
    iget-object v3, p0, Lb/a/a/l$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2196
    :cond_3
    const-string v0, "\n\tEvents"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2197
    iget-object v0, p0, Lb/a/a/l$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2198
    const-string v3, "\n\t\tEvent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2200
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2201
    iget-object v3, p0, Lb/a/a/l$b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
