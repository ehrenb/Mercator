.class public Lrx/e/d;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lrx/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/e/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private volatile c:Z

.field private d:Lrx/e/d$a;


# direct methods
.method public constructor <init>(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/e/d;->a:Lrx/e;

    .line 68
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lrx/e/d;->c:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    monitor-enter p0

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lrx/e/d;->c:Z

    if-eqz v0, :cond_1

    .line 162
    monitor-exit p0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lrx/e/d;->c:Z

    .line 165
    iget-boolean v0, p0, Lrx/e/d;->b:Z

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 167
    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lrx/e/d$a;

    invoke-direct {v0}, Lrx/e/d$a;-><init>()V

    .line 169
    iput-object v0, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 171
    :cond_2
    invoke-static {}, Lrx/c/a/f;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e/d$a;->a(Ljava/lang/Object;)V

    .line 172
    monitor-exit p0

    goto :goto_0

    .line 174
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/e/d;->b:Z

    .line 175
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    iget-object v0, p0, Lrx/e/d;->a:Lrx/e;

    invoke-interface {v0}, Lrx/e;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {p1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 129
    iget-boolean v0, p0, Lrx/e/d;->c:Z

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 132
    :cond_0
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lrx/e/d;->c:Z

    if-eqz v0, :cond_1

    .line 134
    monitor-exit p0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 136
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lrx/e/d;->c:Z

    .line 137
    iget-boolean v0, p0, Lrx/e/d;->b:Z

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 143
    if-nez v0, :cond_2

    .line 144
    new-instance v0, Lrx/e/d$a;

    invoke-direct {v0}, Lrx/e/d$a;-><init>()V

    .line 145
    iput-object v0, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 147
    :cond_2
    invoke-static {p1}, Lrx/c/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e/d$a;->a(Ljava/lang/Object;)V

    .line 148
    monitor-exit p0

    goto :goto_0

    .line 150
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/e/d;->b:Z

    .line 151
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    iget-object v0, p0, Lrx/e/d;->a:Lrx/e;

    invoke-interface {v0, p1}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 72
    iget-boolean v0, p0, Lrx/e/d;->c:Z

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lrx/e/d;->c:Z

    if-eqz v0, :cond_1

    .line 77
    monitor-exit p0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lrx/e/d;->b:Z

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 81
    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lrx/e/d$a;

    invoke-direct {v0}, Lrx/e/d$a;-><init>()V

    .line 83
    iput-object v0, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 85
    :cond_2
    invoke-static {p1}, Lrx/c/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e/d$a;->a(Ljava/lang/Object;)V

    .line 86
    monitor-exit p0

    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/e/d;->b:Z

    .line 89
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    iget-object v0, p0, Lrx/e/d;->a:Lrx/e;

    invoke-interface {v0, p1}, Lrx/e;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :cond_4
    monitor-enter p0

    .line 100
    :try_start_3
    iget-object v0, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 101
    if-nez v0, :cond_5

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/e/d;->b:Z

    .line 103
    monitor-exit p0

    goto :goto_0

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    iput-boolean v6, p0, Lrx/e/d;->c:Z

    .line 94
    iget-object v1, p0, Lrx/e/d;->a:Lrx/e;

    invoke-static {v0, v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_5
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lrx/e/d;->d:Lrx/e/d$a;

    .line 106
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    iget-object v2, v0, Lrx/e/d$a;->a:[Ljava/lang/Object;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 108
    if-eqz v4, :cond_4

    .line 112
    :try_start_5
    iget-object v5, p0, Lrx/e/d;->a:Lrx/e;

    invoke-static {v5, v4}, Lrx/c/a/f;->a(Lrx/e;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/e/d;->c:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    iput-boolean v6, p0, Lrx/e/d;->c:Z

    .line 118
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 119
    iget-object v1, p0, Lrx/e/d;->a:Lrx/e;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
