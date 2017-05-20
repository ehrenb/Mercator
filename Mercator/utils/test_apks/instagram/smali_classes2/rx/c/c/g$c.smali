.class final Lrx/c/c/g$c;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lrx/c/c/g;

.field final b:Lrx/c/e/l;


# direct methods
.method public constructor <init>(Lrx/c/c/g;Lrx/c/e/l;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 184
    iput-object p1, p0, Lrx/c/c/g$c;->a:Lrx/c/c/g;

    .line 185
    iput-object p2, p0, Lrx/c/c/g$c;->b:Lrx/c/e/l;

    .line 186
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lrx/c/c/g$c;->a:Lrx/c/c/g;

    invoke-virtual {v0}, Lrx/c/c/g;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/c/c/g$c;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lrx/c/c/g$c;->b:Lrx/c/e/l;

    iget-object v1, p0, Lrx/c/c/g$c;->a:Lrx/c/c/g;

    invoke-virtual {v0, v1}, Lrx/c/e/l;->b(Lrx/k;)V

    .line 198
    :cond_0
    return-void
.end method
