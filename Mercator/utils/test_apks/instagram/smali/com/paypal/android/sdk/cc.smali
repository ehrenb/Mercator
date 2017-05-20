.class public Lcom/paypal/android/sdk/cc;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/paypal/android/sdk/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/u;->a()Lcom/paypal/android/sdk/u;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/cc;->a:Lcom/paypal/android/sdk/u;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/paypal/android/sdk/cc;->a:Lcom/paypal/android/sdk/u;

    sget-object v3, Lcom/paypal/android/sdk/z;->c:Lcom/paypal/android/sdk/z;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/paypal/android/sdk/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/z;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cc;->a:Lcom/paypal/android/sdk/u;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/u;->e()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cc;->a:Lcom/paypal/android/sdk/u;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/u;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/u;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
