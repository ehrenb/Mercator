.class final Lcom/paypal/android/sdk/payments/dg;
.super Lcom/paypal/android/sdk/payments/dh;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/payments/bl;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/payments/bl;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/dh;-><init>(Lcom/paypal/android/sdk/payments/bl;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "msdk"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bl;->a()Lcom/paypal/android/sdk/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/cj;->a:Lcom/paypal/android/sdk/ex;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ex;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/bl;->a()Lcom/paypal/android/sdk/cj;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/ex;

    invoke-direct {v1}, Lcom/paypal/android/sdk/ex;-><init>()V

    iput-object v1, v0, Lcom/paypal/android/sdk/cj;->a:Lcom/paypal/android/sdk/ex;

    :cond_0
    const-string v0, "v49"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v51"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bl;->c()Lcom/paypal/android/sdk/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/as;->d()Lcom/paypal/android/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v52"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/dz;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/paypal/android/sdk/dz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v53"

    sget-object v1, Lcom/paypal/android/sdk/dz;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clid"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bl;->c()Lcom/paypal/android/sdk/as;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/as;->d()Lcom/paypal/android/sdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/paypal/android/sdk/av;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bl;->a()Lcom/paypal/android/sdk/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/cj;->a:Lcom/paypal/android/sdk/ex;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ex;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/paypal/android/sdk/av;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/payments/bl;->a(Lcom/paypal/android/sdk/av;)V

    return-void
.end method

.method protected final a(Ljava/util/Map;Lcom/paypal/android/sdk/eb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "g"

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/dz;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dg;->b()Lcom/paypal/android/sdk/payments/bl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/bl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "srce"

    const-string v1, "msdk"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sv"

    const-string v1, "mobile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bchn"

    const-string v1, "msdk"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adte"

    const-string v1, "FALSE"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bzsr"

    const-string v1, "mobile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "calc"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p4}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "prid"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "e"

    invoke-virtual {p2}, Lcom/paypal/android/sdk/eb;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cl"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string v0, "im"

    goto :goto_0
.end method
