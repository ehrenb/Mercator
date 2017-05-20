.class public abstract Lcom/paypal/android/sdk/bm;
.super Lcom/paypal/android/sdk/bk;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/bz;

.field private final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/bm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/bm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/paypal/android/sdk/bz;)V
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/sdk/bk;-><init>()V

    iput p1, p0, Lcom/paypal/android/sdk/bm;->d:I

    iput-object p2, p0, Lcom/paypal/android/sdk/bm;->b:Lcom/paypal/android/sdk/bz;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/paypal/android/sdk/bm;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/bm;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/bm;->d:I

    return v0
.end method

.method static synthetic b(Lcom/paypal/android/sdk/bm;)Lcom/paypal/android/sdk/bz;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/bm;->b:Lcom/paypal/android/sdk/bz;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/bm;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final b(Lcom/paypal/android/sdk/by;)Z
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/bm;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/paypal/android/sdk/bn;

    invoke-direct {v1, p0, p1}, Lcom/paypal/android/sdk/bn;-><init>(Lcom/paypal/android/sdk/bm;Lcom/paypal/android/sdk/by;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract c()I
.end method

.method protected abstract c(Lcom/paypal/android/sdk/by;)Z
.end method
