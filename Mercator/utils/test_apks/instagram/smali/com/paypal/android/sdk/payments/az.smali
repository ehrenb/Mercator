.class final Lcom/paypal/android/sdk/payments/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/az;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    new-instance v1, Lcom/paypal/android/sdk/a;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/az;->a:Landroid/content/Context;

    new-instance v2, Lcom/paypal/android/sdk/payments/cd;

    invoke-direct {v2}, Lcom/paypal/android/sdk/payments/cd;-><init>()V

    const-string v2, "AndroidBasePrefs"

    new-instance v3, Lcom/paypal/android/sdk/cd;

    invoke-direct {v3}, Lcom/paypal/android/sdk/cd;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/paypal/android/sdk/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/cd;)V

    invoke-static {v1}, Lcom/paypal/android/sdk/dg;->a(Lcom/paypal/android/sdk/a;)V

    invoke-static {v1}, Lcom/paypal/android/sdk/dk;->a(Lcom/paypal/android/sdk/a;)V

    new-instance v0, Lcom/paypal/android/sdk/payments/ba;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/ba;-><init>(Lcom/paypal/android/sdk/payments/az;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/paypal/android/sdk/co;

    invoke-direct {v3, v1, v0}, Lcom/paypal/android/sdk/co;-><init>(Lcom/paypal/android/sdk/a;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/paypal/android/sdk/co;->b()V

    invoke-virtual {v3}, Lcom/paypal/android/sdk/co;->c()V

    invoke-static {v0}, Lcom/paypal/android/sdk/cl;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.clearAllUserData"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/az;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/c;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/payments/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/payments/c;->a(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->y()Ljava/lang/String;

    return-void
.end method
