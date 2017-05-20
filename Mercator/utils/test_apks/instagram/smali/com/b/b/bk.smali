.class public Lcom/b/b/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/b/b/bk;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/b/b/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/bk;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/b/b/bk;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1057
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 1058
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 1062
    new-instance v1, Lcom/b/b/bk$1;

    invoke-direct {v1, p0}, Lcom/b/b/bk$1;-><init>(Lcom/b/b/bk;)V

    iput-object v1, p0, Lcom/b/b/bk;->c:Ljava/lang/Object;

    .line 1113
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/b/b/bk;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/bk;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/b/b/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/bk;->a:Lcom/b/b/bk;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/b/b/bk;

    invoke-direct {v0}, Lcom/b/b/bk;-><init>()V

    sput-object v0, Lcom/b/b/bk;->a:Lcom/b/b/bk;

    .line 27
    :cond_0
    sget-object v0, Lcom/b/b/bk;->a:Lcom/b/b/bk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/b/b/bk;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/b/b/bk;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
