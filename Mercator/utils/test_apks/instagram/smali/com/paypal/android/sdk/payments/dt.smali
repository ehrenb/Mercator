.class final Lcom/paypal/android/sdk/payments/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/paypal/android/sdk/payments/dl;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/dl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/dl;

    check-cast p2, Lcom/paypal/android/sdk/payments/bf;

    iget-object v1, p2, Lcom/paypal/android/sdk/payments/bf;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iput-object v1, v0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/dl;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v1, Lcom/paypal/android/sdk/payments/dv;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dv;-><init>(Lcom/paypal/android/sdk/payments/dt;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/bk;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dl;->d(Lcom/paypal/android/sdk/payments/dl;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/dl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    return-void
.end method
