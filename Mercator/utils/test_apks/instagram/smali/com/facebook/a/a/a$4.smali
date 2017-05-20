.class final Lcom/facebook/a/a/a$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a/a;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/facebook/a/a/a$4;->a:J

    iput-object p3, p0, Lcom/facebook/a/a/a$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/a/a/a$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 218
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v2

    if-nez v2, :cond_0

    .line 221
    new-instance v2, Lcom/facebook/a/a/f;

    iget-wide v4, p0, Lcom/facebook/a/a/a$4;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/facebook/a/a/f;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/a/a/a;->a(Lcom/facebook/a/a/f;)Lcom/facebook/a/a/f;

    .line 224
    :cond_0
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/a/a/a$4;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/a/a/f;->a(Ljava/lang/Long;)V

    .line 225
    invoke-static {}, Lcom/facebook/a/a/a;->e()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_1

    .line 229
    new-instance v2, Lcom/facebook/a/a/a$4$1;

    invoke-direct {v2, p0}, Lcom/facebook/a/a/a$4$1;-><init>(Lcom/facebook/a/a/a$4;)V

    .line 245
    invoke-static {}, Lcom/facebook/a/a/a;->f()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 247
    invoke-static {}, Lcom/facebook/a/a/a;->d()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 245
    invoke-interface {v3, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/a/a/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 252
    :cond_1
    invoke-static {}, Lcom/facebook/a/a/a;->g()J

    move-result-wide v2

    .line 253
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    iget-wide v0, p0, Lcom/facebook/a/a/a$4;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/facebook/a/a/a$4;->b:Landroid/content/Context;

    .line 258
    invoke-static {}, Lcom/facebook/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/a/a/a$4;->c:Ljava/lang/String;

    .line 256
    invoke-static {v2, v3, v4, v0, v1}, Lcom/facebook/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 263
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/a/f;->j()V

    .line 264
    return-void
.end method
