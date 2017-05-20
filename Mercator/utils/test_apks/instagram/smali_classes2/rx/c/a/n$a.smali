.class final Lrx/c/a/n$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromArray.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/n;
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
.field final a:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method public constructor <init>(Lrx/j;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/c/a/n$a;->a:Lrx/j;

    .line 48
    iput-object p2, p0, Lrx/c/a/n$a;->b:[Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 69
    iget-object v1, p0, Lrx/c/a/n$a;->a:Lrx/j;

    .line 71
    iget-object v2, p0, Lrx/c/a/n$a;->b:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 72
    invoke-virtual {v1}, Lrx/j;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 76
    :cond_1
    invoke-virtual {v1, v4}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v1}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {v1}, Lrx/j;->onCompleted()V

    goto :goto_1
.end method

.method a(J)V
    .locals 13

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v4, 0x0

    .line 86
    iget-object v1, p0, Lrx/c/a/n$a;->a:Lrx/j;

    .line 87
    iget-object v6, p0, Lrx/c/a/n$a;->b:[Ljava/lang/Object;

    .line 88
    array-length v7, v6

    .line 91
    iget v0, p0, Lrx/c/a/n$a;->c:I

    move-wide v2, v4

    .line 95
    :cond_0
    :goto_0
    cmp-long v8, p1, v4

    if-eqz v8, :cond_4

    if-eq v0, v7, :cond_4

    .line 96
    invoke-virtual {v1}, Lrx/j;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 100
    :cond_2
    aget-object v8, v6, v0

    invoke-virtual {v1, v8}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 104
    if-ne v0, v7, :cond_3

    .line 105
    invoke-virtual {v1}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {v1}, Lrx/j;->onCompleted()V

    goto :goto_1

    .line 111
    :cond_3
    sub-long/2addr p1, v10

    .line 112
    sub-long/2addr v2, v10

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0}, Lrx/c/a/n$a;->get()J

    move-result-wide v8

    add-long p1, v8, v2

    .line 117
    cmp-long v8, p1, v4

    if-nez v8, :cond_0

    .line 118
    iput v0, p0, Lrx/c/a/n$a;->c:I

    .line 119
    invoke-virtual {p0, v2, v3}, Lrx/c/a/n$a;->addAndGet(J)J

    move-result-wide p1

    .line 120
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    move-wide v2, v4

    .line 123
    goto :goto_0
.end method

.method public request(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 57
    invoke-static {p0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lrx/c/a/n$a;->a()V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0, p1, p2}, Lrx/c/a/n$a;->a(J)V

    goto :goto_0
.end method
