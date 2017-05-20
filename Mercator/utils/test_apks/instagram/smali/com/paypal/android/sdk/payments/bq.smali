.class final Lcom/paypal/android/sdk/payments/bq;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bp;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bq;->a:Lcom/paypal/android/sdk/payments/bp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bq;->a:Lcom/paypal/android/sdk/payments/bp;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bp;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->e(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    return-void
.end method
