.class Lcom/facebook/a/a/a$4$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a/a$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/a/a$4;


# direct methods
.method constructor <init>(Lcom/facebook/a/a/a$4;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/facebook/a/a/a$4$1;->a:Lcom/facebook/a/a/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-static {}, Lcom/facebook/a/a/a;->e()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/a/a/a$4$1;->a:Lcom/facebook/a/a/a$4;

    iget-object v0, v0, Lcom/facebook/a/a/a$4;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/a/a/a$4$1;->a:Lcom/facebook/a/a/a$4;

    iget-object v1, v1, Lcom/facebook/a/a/a$4;->c:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/facebook/a/a/a;->b()Lcom/facebook/a/a/f;

    move-result-object v2

    .line 237
    invoke-static {}, Lcom/facebook/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/a/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/a/f;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/facebook/a/a/f;->b()V

    .line 239
    invoke-static {v4}, Lcom/facebook/a/a/a;->a(Lcom/facebook/a/a/f;)Lcom/facebook/a/a/f;

    .line 242
    :cond_0
    invoke-static {v4}, Lcom/facebook/a/a/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 243
    return-void
.end method
