.class public abstract Lio/fabric/sdk/android/services/concurrency/a;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/a$4;,
        Lio/fabric/sdk/android/services/concurrency/a$a;,
        Lio/fabric/sdk/android/services/concurrency/a$e;,
        Lio/fabric/sdk/android/services/concurrency/a$b;,
        Lio/fabric/sdk/android/services/concurrency/a$d;,
        Lio/fabric/sdk/android/services/concurrency/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:I

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lio/fabric/sdk/android/services/concurrency/a$b;

.field private static volatile i:Ljava/util/concurrent/Executor;


# instance fields
.field private final j:Lio/fabric/sdk/android/services/concurrency/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/concurrency/a$e",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile l:Lio/fabric/sdk/android/services/concurrency/a$d;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 203
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/fabric/sdk/android/services/concurrency/a;->a:I

    .line 204
    sget v0, Lio/fabric/sdk/android/services/concurrency/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/a;->d:I

    .line 205
    sget v0, Lio/fabric/sdk/android/services/concurrency/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/a;->e:I

    .line 208
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a$1;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/a$1;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->f:Ljava/util/concurrent/ThreadFactory;

    .line 216
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->g:Ljava/util/concurrent/BlockingQueue;

    .line 222
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lio/fabric/sdk/android/services/concurrency/a;->d:I

    sget v3, Lio/fabric/sdk/android/services/concurrency/a;->e:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lio/fabric/sdk/android/services/concurrency/a;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lio/fabric/sdk/android/services/concurrency/a;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/fabric/sdk/android/services/concurrency/a;->b:Ljava/util/concurrent/Executor;

    .line 230
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/a$c;-><init>(Lio/fabric/sdk/android/services/concurrency/a$1;)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->c:Ljava/util/concurrent/Executor;

    .line 235
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a$b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/a$b;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->h:Lio/fabric/sdk/android/services/concurrency/a$b;

    .line 237
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a$d;->a:Lio/fabric/sdk/android/services/concurrency/a$d;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->l:Lio/fabric/sdk/android/services/concurrency/a$d;

    .line 243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 305
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a$2;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/concurrency/a$2;-><init>(Lio/fabric/sdk/android/services/concurrency/a;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->j:Lio/fabric/sdk/android/services/concurrency/a$e;

    .line 315
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a$3;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a;->j:Lio/fabric/sdk/android/services/concurrency/a$e;

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/concurrency/a$3;-><init>(Lio/fabric/sdk/android/services/concurrency/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->k:Ljava/util/concurrent/FutureTask;

    .line 330
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/concurrency/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/concurrency/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lio/fabric/sdk/android/services/concurrency/a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lio/fabric/sdk/android/services/concurrency/a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 334
    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 341
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a;->h:Lio/fabric/sdk/android/services/concurrency/a$b;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/a$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lio/fabric/sdk/android/services/concurrency/a$a;-><init>(Lio/fabric/sdk/android/services/concurrency/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lio/fabric/sdk/android/services/concurrency/a$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 344
    return-object p1
.end method

.method private f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->b(Ljava/lang/Object;)V

    .line 658
    :goto_0
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a$d;->c:Lio/fabric/sdk/android/services/concurrency/a$d;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->l:Lio/fabric/sdk/android/services/concurrency/a$d;

    .line 659
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lio/fabric/sdk/android/services/concurrency/a",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->l:Lio/fabric/sdk/android/services/concurrency/a$d;

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/a$d;->a:Lio/fabric/sdk/android/services/concurrency/a$d;

    if-eq v0, v1, :cond_0

    .line 597
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a$4;->a:[I

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a;->l:Lio/fabric/sdk/android/services/concurrency/a$d;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/a$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 609
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a$d;->b:Lio/fabric/sdk/android/services/concurrency/a$d;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->l:Lio/fabric/sdk/android/services/concurrency/a$d;

    .line 611
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a;->a()V

    .line 613
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->j:Lio/fabric/sdk/android/services/concurrency/a$e;

    iput-object p2, v0, Lio/fabric/sdk/android/services/concurrency/a$e;->b:[Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->k:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 616
    return-object p0

    .line 599
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 397
    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->k:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a;->s_()V

    .line 429
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 410
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final r_()Lio/fabric/sdk/android/services/concurrency/a$d;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->l:Lio/fabric/sdk/android/services/concurrency/a$d;

    return-object v0
.end method

.method protected s_()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method
