.class final Lcom/paypal/android/sdk/payments/bs;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bs;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method final a()Lcom/paypal/android/sdk/payments/PayPalPayment;
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bs;->a:Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalPayment;

    return-object v0
.end method

.method public final b()Lcom/paypal/android/sdk/payments/dx;
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bs;->a:Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.payments.PaymentConfirmActivity.EXTRA_PAYMENT_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/dx;

    return-object v0
.end method
