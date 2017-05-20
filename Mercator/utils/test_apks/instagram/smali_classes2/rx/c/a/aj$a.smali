.class final Lrx/c/a/aj$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/f;
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/aj;
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
        "Lrx/f;",
        "Lrx/k;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/a/aj$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/aj$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/a/aj$b;Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/aj$b",
            "<TT;>;",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 672
    iput-object p1, p0, Lrx/c/a/aj$a;->a:Lrx/c/a/aj$b;

    .line 673
    iput-object p2, p0, Lrx/c/a/aj$a;->b:Lrx/j;

    .line 674
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/c/a/aj$a;->lazySet(J)V

    .line 675
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v0, -0x8000000000000000L

    .line 730
    cmp-long v2, p1, v8

    if-gtz v2, :cond_0

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cant produce zero or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    invoke-virtual {p0}, Lrx/c/a/aj$a;->get()J

    move-result-wide v4

    .line 738
    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 739
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Produced without request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_1
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 754
    :goto_0
    return-wide v0

    .line 746
    :cond_2
    sub-long v2, v4, p1

    .line 748
    cmp-long v6, v2, v8

    if-gez v6, :cond_3

    .line 749
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More produced ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") than requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_3
    invoke-virtual {p0, v4, v5, v2, v3}, Lrx/c/a/aj$a;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 754
    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 762
    invoke-virtual {p0}, Lrx/c/a/aj$a;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public request(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 680
    cmp-long v0, p1, v6

    if-gez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-virtual {p0}, Lrx/c/a/aj$a;->get()J

    move-result-wide v2

    .line 690
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 694
    cmp-long v0, v2, v6

    if-ltz v0, :cond_2

    cmp-long v0, p1, v6

    if-eqz v0, :cond_0

    .line 699
    :cond_2
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    move-wide v0, p1

    .line 712
    :cond_3
    :goto_1
    invoke-virtual {p0, v2, v3, v0, v1}, Lrx/c/a/aj$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lrx/c/a/aj$a;->a:Lrx/c/a/aj$b;

    invoke-virtual {v0}, Lrx/c/a/aj$b;->b()V

    goto :goto_0

    .line 704
    :cond_4
    add-long v0, v2, p1

    .line 706
    cmp-long v4, v0, v6

    if-gez v4, :cond_3

    .line 708
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 766
    invoke-virtual {p0}, Lrx/c/a/aj$a;->get()J

    move-result-wide v0

    .line 768
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p0, v2, v3}, Lrx/c/a/aj$a;->getAndSet(J)J

    move-result-wide v0

    .line 775
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lrx/c/a/aj$a;->a:Lrx/c/a/aj$b;

    invoke-virtual {v0, p0}, Lrx/c/a/aj$b;->b(Lrx/c/a/aj$a;)V

    .line 782
    iget-object v0, p0, Lrx/c/a/aj$a;->a:Lrx/c/a/aj$b;

    invoke-virtual {v0}, Lrx/c/a/aj$b;->b()V

    .line 785
    :cond_0
    return-void
.end method
