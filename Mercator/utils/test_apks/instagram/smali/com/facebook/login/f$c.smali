.class Lcom/facebook/login/f$c;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static volatile a:Lcom/facebook/login/e;


# direct methods
.method static synthetic a(Landroid/content/Context;)Lcom/facebook/login/e;
    .locals 1

    .prologue
    .line 620
    invoke-static {p0}, Lcom/facebook/login/f$c;->b(Landroid/content/Context;)Lcom/facebook/login/e;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/facebook/login/e;
    .locals 3

    .prologue
    .line 624
    const-class v1, Lcom/facebook/login/f$c;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 625
    :goto_0
    if-nez p0, :cond_1

    .line 626
    const/4 v0, 0x0

    .line 631
    :goto_1
    monitor-exit v1

    return-object v0

    .line 624
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 628
    :cond_1
    sget-object v0, Lcom/facebook/login/f$c;->a:Lcom/facebook/login/e;

    if-nez v0, :cond_2

    .line 629
    new-instance v0, Lcom/facebook/login/e;

    invoke-static {}, Lcom/facebook/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/facebook/login/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/f$c;->a:Lcom/facebook/login/e;

    .line 631
    :cond_2
    sget-object v0, Lcom/facebook/login/f$c;->a:Lcom/facebook/login/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
