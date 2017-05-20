.class public final Lcom/b/b/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/dl$a;
    }
.end annotation


# static fields
.field private static c:Lcom/b/b/dl;


# instance fields
.field final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/b/dl;->b:Ljava/util/Map;

    .line 67
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/b/b/dl;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 68
    new-instance v0, Lcom/b/b/dl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/b/dl$a;-><init>(Lcom/b/b/dl;B)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 69
    return-void
.end method

.method public static declared-synchronized a()Lcom/b/b/dl;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/b/b/dl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/dl;->c:Lcom/b/b/dl;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/b/b/dl;

    invoke-direct {v0}, Lcom/b/b/dl;-><init>()V

    sput-object v0, Lcom/b/b/dl;->c:Lcom/b/b/dl;

    .line 23
    :cond_0
    sget-object v0, Lcom/b/b/dl;->c:Lcom/b/b/dl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/b/b/dl;->b:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/b/b/dl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
