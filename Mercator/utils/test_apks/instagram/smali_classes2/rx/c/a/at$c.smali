.class final Lrx/c/a/at$c;
.super Lrx/j;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/j/d;

.field final b:Lrx/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/a/at$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/at$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final e:Lrx/g$a;

.field final f:Lrx/c/b/a;

.field g:Z

.field h:J


# direct methods
.method constructor <init>(Lrx/e/e;Lrx/c/a/at$b;Lrx/j/d;Lrx/d;Lrx/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e/e",
            "<TT;>;",
            "Lrx/c/a/at$b",
            "<TT;>;",
            "Lrx/j/d;",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/g$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 105
    iput-object p1, p0, Lrx/c/a/at$c;->b:Lrx/e/e;

    .line 106
    iput-object p2, p0, Lrx/c/a/at$c;->c:Lrx/c/a/at$b;

    .line 107
    iput-object p3, p0, Lrx/c/a/at$c;->a:Lrx/j/d;

    .line 108
    iput-object p4, p0, Lrx/c/a/at$c;->d:Lrx/d;

    .line 109
    iput-object p5, p0, Lrx/c/a/at$c;->e:Lrx/g$a;

    .line 110
    new-instance v0, Lrx/c/b/a;

    invoke-direct {v0}, Lrx/c/b/a;-><init>()V

    iput-object v0, p0, Lrx/c/a/at$c;->f:Lrx/c/b/a;

    .line 111
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-wide v2, p0, Lrx/c/a/at$c;->h:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lrx/c/a/at$c;->g:Z

    if-nez v2, :cond_2

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/c/a/at$c;->g:Z

    .line 174
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lrx/c/a/at$c;->d:Lrx/d;

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lrx/c/a/at$c;->b:Lrx/e/e;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/e/e;->onError(Ljava/lang/Throwable;)V

    .line 204
    :cond_0
    :goto_1
    return-void

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 179
    :cond_1
    new-instance v0, Lrx/c/a/at$c$1;

    invoke-direct {v0, p0}, Lrx/c/a/at$c$1;-><init>(Lrx/c/a/at$c;)V

    .line 200
    iget-object v1, p0, Lrx/c/a/at$c;->d:Lrx/d;

    invoke-virtual {v1, v0}, Lrx/d;->a(Lrx/j;)Lrx/k;

    .line 201
    iget-object v1, p0, Lrx/c/a/at$c;->a:Lrx/j/d;

    invoke-virtual {v1, v0}, Lrx/j/d;->a(Lrx/k;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    const/4 v1, 0x0

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-boolean v2, p0, Lrx/c/a/at$c;->g:Z

    if-nez v2, :cond_1

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/c/a/at$c;->g:Z

    .line 159
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lrx/c/a/at$c;->a:Lrx/j/d;

    invoke-virtual {v0}, Lrx/j/d;->unsubscribe()V

    .line 162
    iget-object v0, p0, Lrx/c/a/at$c;->b:Lrx/e/e;

    invoke-virtual {v0}, Lrx/e/e;->onCompleted()V

    .line 164
    :cond_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 138
    const/4 v1, 0x0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v2, p0, Lrx/c/a/at$c;->g:Z

    if-nez v2, :cond_1

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/c/a/at$c;->g:Z

    .line 144
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lrx/c/a/at$c;->a:Lrx/j/d;

    invoke-virtual {v0}, Lrx/j/d;->unsubscribe()V

    .line 147
    iget-object v0, p0, Lrx/c/a/at$c;->b:Lrx/e/e;

    invoke-virtual {v0, p1}, Lrx/e/e;->onError(Ljava/lang/Throwable;)V

    .line 149
    :cond_0
    return-void

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lrx/c/a/at$c;->g:Z

    if-nez v0, :cond_1

    .line 124
    iget-wide v0, p0, Lrx/c/a/at$c;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/c/a/at$c;->h:J

    .line 125
    const/4 v2, 0x1

    .line 129
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lrx/c/a/at$c;->b:Lrx/e/e;

    invoke-virtual {v2, p1}, Lrx/e/e;->onNext(Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lrx/c/a/at$c;->a:Lrx/j/d;

    iget-object v3, p0, Lrx/c/a/at$c;->c:Lrx/c/a/at$b;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lrx/c/a/at$c;->e:Lrx/g$a;

    invoke-interface {v3, p0, v0, p1, v1}, Lrx/c/a/at$b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/k;

    invoke-virtual {v2, v0}, Lrx/j/d;->a(Lrx/k;)V

    .line 134
    :cond_0
    return-void

    .line 127
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lrx/c/a/at$c;->h:J

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setProducer(Lrx/f;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lrx/c/a/at$c;->f:Lrx/c/b/a;

    invoke-virtual {v0, p1}, Lrx/c/b/a;->a(Lrx/f;)V

    .line 116
    return-void
.end method
