.class final Lcom/paypal/android/sdk/x;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/u;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/x;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/u;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
