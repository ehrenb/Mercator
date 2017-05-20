.class public Lcom/paypal/android/sdk/ej;
.super Lcom/paypal/android/sdk/au;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/bz;Lcom/paypal/android/sdk/ab;Lcom/paypal/android/sdk/av;)V
    .locals 2

    new-instance v0, Lcom/paypal/android/sdk/cf;

    sget-object v1, Lcom/paypal/android/sdk/ci;->a:Lcom/paypal/android/sdk/ci;

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/cf;-><init>(Lcom/paypal/android/sdk/ci;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/au;-><init>(Lcom/paypal/android/sdk/bw;Lcom/paypal/android/sdk/bz;Lcom/paypal/android/sdk/ab;Lcom/paypal/android/sdk/av;)V

    return-void
.end method
