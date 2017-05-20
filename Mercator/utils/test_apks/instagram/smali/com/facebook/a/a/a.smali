.class public Lcom/facebook/a/a/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile c:Ljava/util/concurrent/ScheduledFuture;

.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile e:Lcom/facebook/a/a/f;

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Ljava/lang/String;

.field private static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lcom/facebook/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/a;->a:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/a/a/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/a/a/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/a/f;)Lcom/facebook/a/a/f;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/facebook/a/a/a;->e:Lcom/facebook/a/a/f;

    return-object p0
.end method

.method public static a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/facebook/a/a/a;->e:Lcom/facebook/a/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/a/a/a;->e:Lcom/facebook/a/a/f;

    invoke-virtual {v0}, Lcom/facebook/a/a/f;->g()Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/facebook/a/a/a;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    new-instance v2, Lcom/facebook/a/a/a$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/a/a/a$2;-><init>(Landroid/app/Activity;J)V

    .line 146
    sget-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/a/a/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 64
    :cond_0
    sput-object p1, Lcom/facebook/a/a/a;->g:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/facebook/a/a/a$1;

    invoke-direct {v0}, Lcom/facebook/a/a/a$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/facebook/a/a/f;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/a/a/a;->e:Lcom/facebook/a/a/f;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lcom/facebook/a/a/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 152
    invoke-static {}, Lcom/facebook/a/a/a;->i()V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    sput-wide v0, Lcom/facebook/a/a/a;->h:J

    .line 155
    new-instance v2, Lcom/facebook/a/a/a$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/a/a/a$3;-><init>(Landroid/app/Activity;J)V

    .line 195
    sget-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/a/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/a/a/a;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/facebook/a/a/a;->h()I

    move-result v0

    return v0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 199
    sget-object v0, Lcom/facebook/a/a/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 200
    if-gez v0, :cond_0

    .line 203
    sget-object v0, Lcom/facebook/a/a/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 205
    sget-object v0, Lcom/facebook/a/a/a;->a:Ljava/lang/String;

    const-string v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    invoke-static {}, Lcom/facebook/a/a/a;->i()V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 213
    invoke-static {p0}, Lcom/facebook/c/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 215
    new-instance v4, Lcom/facebook/a/a/a$4;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/a/a/a$4;-><init>(JLandroid/content/Context;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/a/a/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/a/a/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/facebook/a/a/a;->h:J

    return-wide v0
.end method

.method private static h()I
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/facebook/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c/k;->a(Ljava/lang/String;)Lcom/facebook/c/j;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lcom/facebook/a/a/d;->a()I

    move-result v0

    .line 276
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/c/j;->e()I

    move-result v0

    goto :goto_0
.end method

.method private static i()V
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/facebook/a/a/a;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/facebook/a/a/a;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 284
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/a/a/a;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 285
    return-void
.end method
