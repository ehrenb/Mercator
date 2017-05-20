.class final Lcom/paypal/android/sdk/payments/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/bk;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bn;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/bo;->a:Lcom/paypal/android/sdk/payments/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/bo;->a:Lcom/paypal/android/sdk/payments/bn;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bn;->a:Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentActivity;->c(Lcom/paypal/android/sdk/payments/PaymentActivity;)V

    return-void
.end method
