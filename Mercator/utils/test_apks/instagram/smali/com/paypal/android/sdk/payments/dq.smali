.class final Lcom/paypal/android/sdk/payments/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/bh;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/dl;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dq;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/dl;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dq;->a:Lcom/paypal/android/sdk/payments/dl;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->p()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/payments/bi;)V
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dq;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dl;->a(Lcom/paypal/android/sdk/payments/dl;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dq;->a:Lcom/paypal/android/sdk/payments/dl;

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/bi;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
