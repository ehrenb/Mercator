.class public abstract Lb/a/a/b/b/c;
.super Lb/a/a/b/a;
.source "DNSStateTask.java"


# static fields
.field static b:Ld/a/b;

.field private static c:I


# instance fields
.field private final a:I

.field private d:Lb/a/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lb/a/a/b/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/b/b/c;->b:Ld/a/b;

    .line 32
    const/16 v0, 0xe10

    sput v0, Lb/a/a/b/b/c;->c:I

    return-void
.end method

.method public constructor <init>(Lb/a/a/l;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lb/a/a/b/a;-><init>(Lb/a/a/l;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/b/b/c;->d:Lb/a/a/a/g;

    .line 60
    iput p2, p0, Lb/a/a/b/b/c;->a:I

    .line 61
    return-void
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lb/a/a/b/b/c;->c:I

    return v0
.end method


# virtual methods
.method protected abstract a(Lb/a/a/f;)Lb/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Lb/a/a/q;Lb/a/a/f;)Lb/a/a/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a(Lb/a/a/a/g;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v1

    monitor-enter v1

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lb/a/a/l;->a(Lb/a/a/b/a;Lb/a/a/a/g;)V

    .line 79
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 81
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0, p0, p1}, Lb/a/a/q;->a(Lb/a/a/b/a;Lb/a/a/a/g;)V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/Throwable;)V
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/i;

    .line 162
    monitor-enter v0

    .line 163
    :try_start_0
    invoke-interface {v0, p0}, Lb/a/a/i;->a(Lb/a/a/b/a;)Z

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 167
    :cond_0
    return-void
.end method

.method protected b(Lb/a/a/a/g;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lb/a/a/b/b/c;->d:Lb/a/a/a/g;

    .line 186
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Z
.end method

.method protected abstract e()Lb/a/a/f;
.end method

.method protected abstract f()V
.end method

.method public h()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lb/a/a/b/b/c;->a:I

    return v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/a/a/l;->b(Lb/a/a/b/a;)V

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 96
    check-cast v0, Lb/a/a/q;

    invoke-virtual {v0, p0}, Lb/a/a/q;->b(Lb/a/a/b/a;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method protected j()Lb/a/a/a/g;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lb/a/a/b/b/c;->d:Lb/a/a/a/g;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 102
    invoke-virtual {p0}, Lb/a/a/b/b/c;->e()Lb/a/a/f;

    move-result-object v1

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/b/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lb/a/a/b/b/c;->cancel()Z

    .line 149
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b/b/c;->j()Lb/a/a/a/g;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Lb/a/a/l;->b(Lb/a/a/b/a;Lb/a/a/a/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lb/a/a/b/b/c;->b:Ld/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/b/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".run() JmDNS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lb/a/a/b/b/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v5

    invoke-virtual {v5}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0, v1}, Lb/a/a/b/b/c;->a(Lb/a/a/f;)Lb/a/a/f;

    move-result-object v1

    .line 116
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :try_start_2
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l;->C()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/d;

    .line 119
    check-cast v0, Lb/a/a/q;

    .line 121
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :try_start_3
    invoke-virtual {p0}, Lb/a/a/b/b/c;->j()Lb/a/a/a/g;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Lb/a/a/q;->b(Lb/a/a/b/a;Lb/a/a/a/g;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    sget-object v4, Lb/a/a/b/b/c;->b:Ld/a/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/b/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".run() JmDNS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lb/a/a/b/b/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 124
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v0, v1}, Lb/a/a/b/b/c;->a(Lb/a/a/q;Lb/a/a/f;)Lb/a/a/f;

    move-result-object v1

    .line 127
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lb/a/a/b/b/c;->b:Ld/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".run() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ld/a/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {p0, v0}, Lb/a/a/b/b/c;->a(Ljava/lang/Throwable;)V

    .line 148
    :goto_2
    invoke-virtual {p0}, Lb/a/a/b/b/c;->f()V

    goto/16 :goto_0

    .line 116
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 129
    :cond_3
    invoke-virtual {v1}, Lb/a/a/f;->v()Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    sget-object v0, Lb/a/a/b/b/c;->b:Ld/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/b/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".run() JmDNS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/b/b/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/b/b/c;->j()Lb/a/a/a/g;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lb/a/a/b/b/c;->a()Lb/a/a/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/a/a/l;->a(Lb/a/a/f;)V

    .line 134
    invoke-virtual {p0, v2}, Lb/a/a/b/b/c;->a(Ljava/util/List;)V

    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p0, v2}, Lb/a/a/b/b/c;->a(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0}, Lb/a/a/b/b/c;->cancel()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method
