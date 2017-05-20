.class final Lcom/paypal/android/sdk/payments/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/bk;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/bz;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ca;->a:Lcom/paypal/android/sdk/payments/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ca;->a:Lcom/paypal/android/sdk/payments/bz;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/bz;->a:Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->b(Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;)V

    return-void
.end method
