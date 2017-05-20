.class public final Lcm/aptoide/pt/database/schedulers/RealmSchedulers;
.super Ljava/lang/Object;
.source "RealmSchedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcm/aptoide/pt/database/schedulers/RealmSchedulers;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_NAME:Ljava/lang/String; = "Realm Thread"


# instance fields
.field private final handlerThread:Landroid/os/HandlerThread;

.field private final threadScheduler:Lrx/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Realm Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->handlerThread:Landroid/os/HandlerThread;

    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lrx/a/b/a;->a(Landroid/os/Looper;)Lrx/g;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->threadScheduler:Lrx/g;

    .line 34
    return-void
.end method

.method private static getInstance()Lcm/aptoide/pt/database/schedulers/RealmSchedulers;
    .locals 3

    .prologue
    .line 45
    :cond_0
    sget-object v0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;

    .line 46
    if-eqz v0, :cond_1

    .line 51
    :goto_0
    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;

    invoke-direct {v0}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;-><init>()V

    .line 50
    sget-object v1, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getScheduler()Lrx/g;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->getInstance()Lcm/aptoide/pt/database/schedulers/RealmSchedulers;

    move-result-object v0

    iget-object v0, v0, Lcm/aptoide/pt/database/schedulers/RealmSchedulers;->threadScheduler:Lrx/g;

    return-object v0
.end method

.method public static isRealmSchedulerThread(Ljava/lang/Thread;)Z
    .locals 2

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Realm Thread"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
