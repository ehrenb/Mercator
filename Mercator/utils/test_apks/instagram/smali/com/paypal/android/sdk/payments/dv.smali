.class final Lcom/paypal/android/sdk/payments/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/payments/bk;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/dt;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/dv;->a:Lcom/paypal/android/sdk/payments/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dv;->a:Lcom/paypal/android/sdk/payments/dt;

    iget-object v0, v0, Lcom/paypal/android/sdk/payments/dt;->a:Lcom/paypal/android/sdk/payments/dl;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dl;->d(Lcom/paypal/android/sdk/payments/dl;)V

    return-void
.end method
