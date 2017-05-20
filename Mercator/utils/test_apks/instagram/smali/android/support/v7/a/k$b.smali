.class final Landroid/support/v7/a/k$b;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/a/k;

.field private b:Landroid/support/v7/a/r;

.field private c:Z

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Landroid/support/v7/a/k;Landroid/support/v7/a/r;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Landroid/support/v7/a/k$b;->a:Landroid/support/v7/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p2, p0, Landroid/support/v7/a/k$b;->b:Landroid/support/v7/a/r;

    .line 319
    invoke-virtual {p2}, Landroid/support/v7/a/r;->a()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/a/k$b;->c:Z

    .line 320
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/support/v7/a/k$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v7/a/k$b;->b:Landroid/support/v7/a/r;

    invoke-virtual {v0}, Landroid/support/v7/a/r;->a()Z

    move-result v0

    .line 329
    iget-boolean v1, p0, Landroid/support/v7/a/k$b;->c:Z

    if-eq v0, v1, :cond_0

    .line 330
    iput-boolean v0, p0, Landroid/support/v7/a/k$b;->c:Z

    .line 331
    iget-object v0, p0, Landroid/support/v7/a/k$b;->a:Landroid/support/v7/a/k;

    invoke-virtual {v0}, Landroid/support/v7/a/k;->j()Z

    .line 333
    :cond_0
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/support/v7/a/k$b;->d()V

    .line 341
    iget-object v0, p0, Landroid/support/v7/a/k$b;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/support/v7/a/k$b$1;

    invoke-direct {v0, p0}, Landroid/support/v7/a/k$b$1;-><init>(Landroid/support/v7/a/k$b;)V

    iput-object v0, p0, Landroid/support/v7/a/k$b;->d:Landroid/content/BroadcastReceiver;

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/k$b;->e:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 353
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/k$b;->e:Landroid/content/IntentFilter;

    .line 354
    iget-object v0, p0, Landroid/support/v7/a/k$b;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Landroid/support/v7/a/k$b;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Landroid/support/v7/a/k$b;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/k$b;->a:Landroid/support/v7/a/k;

    iget-object v0, v0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/a/k$b;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v7/a/k$b;->e:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/a/k$b;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/support/v7/a/k$b;->a:Landroid/support/v7/a/k;

    iget-object v0, v0, Landroid/support/v7/a/k;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/a/k$b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/k$b;->d:Landroid/content/BroadcastReceiver;

    .line 366
    :cond_0
    return-void
.end method
