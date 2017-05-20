.class public final Lcom/paypal/android/sdk/cj;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/paypal/android/sdk/ex;

.field public b:Lcom/paypal/android/sdk/dv;

.field public c:Ljava/lang/String;

.field public d:Lcom/paypal/android/sdk/dl;

.field public e:Lcom/paypal/android/sdk/dx;

.field public f:Lcom/paypal/android/sdk/dc;

.field public g:Lcom/paypal/android/sdk/dv;

.field public h:Z

.field public i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/ea;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ea;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/ex;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ex;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/cj;->a:Lcom/paypal/android/sdk/ex;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/cj;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/cj;->j:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cj;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cj;->b:Lcom/paypal/android/sdk/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/cj;->b:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackendState(accessTokenState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/cj;->b:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loginAccessToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/cj;->g:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
