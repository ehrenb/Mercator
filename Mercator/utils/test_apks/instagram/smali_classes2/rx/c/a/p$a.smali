.class final Lrx/c/a/p$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/f;"
    }
.end annotation


# instance fields
.field private final a:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/j;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 75
    iput-object p1, p0, Lrx/c/a/p$a;->a:Lrx/j;

    .line 76
    iput-object p2, p0, Lrx/c/a/p$a;->b:Ljava/util/Iterator;

    .line 77
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lrx/c/a/p$a;->a:Lrx/j;

    .line 157
    iget-object v1, p0, Lrx/c/a/p$a;->b:Ljava/util/Iterator;

    .line 160
    :cond_0
    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 173
    invoke-virtual {v0, v2}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 188
    if-nez v2, :cond_0

    .line 189
    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    invoke-static {v1, v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;)V

    goto :goto_0

    .line 183
    :catch_1
    move-exception v1

    .line 184
    invoke-static {v1, v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;)V

    goto :goto_0
.end method

.method a(J)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    iget-object v4, p0, Lrx/c/a/p$a;->a:Lrx/j;

    .line 97
    iget-object v5, p0, Lrx/c/a/p$a;->b:Ljava/util/Iterator;

    move-wide v0, v2

    .line 103
    :cond_0
    :goto_0
    cmp-long v6, v0, p1

    if-eqz v6, :cond_4

    .line 104
    invoke-virtual {v4}, Lrx/j;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    :cond_1
    :goto_1
    return-void

    .line 111
    :cond_2
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 117
    invoke-virtual {v4, v6}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v4}, Lrx/j;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 126
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 132
    if-nez v6, :cond_3

    .line 133
    invoke-virtual {v4}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {v4}, Lrx/j;->onCompleted()V

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0, v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;)V

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    .line 128
    invoke-static {v0, v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;)V

    goto :goto_1

    .line 139
    :cond_3
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 140
    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p0}, Lrx/c/a/p$a;->get()J

    move-result-wide p1

    .line 143
    cmp-long v6, v0, p1

    if-nez v6, :cond_0

    .line 144
    invoke-static {p0, v0, v1}, Lrx/c/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide p1

    .line 145
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    move-wide v0, v2

    .line 148
    goto :goto_0
.end method

.method public request(J)V
    .locals 7

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lrx/c/a/p$a;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/c/a/p$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lrx/c/a/p$a;->a()V

    goto :goto_0

    .line 88
    :cond_2
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2}, Lrx/c/a/p$a;->a(J)V

    goto :goto_0
.end method
