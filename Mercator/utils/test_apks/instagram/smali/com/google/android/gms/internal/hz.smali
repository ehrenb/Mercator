.class public Lcom/google/android/gms/internal/hz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hz$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/ge;Lcom/google/android/gms/internal/hz$a;Lcom/google/android/gms/internal/de;)Lcom/google/android/gms/internal/kk;
    .locals 7

    iget-object v1, p3, Lcom/google/android/gms/internal/ju$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/id;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/id;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/ge;Lcom/google/android/gms/internal/hz$a;Lcom/google/android/gms/internal/de;Lcom/google/android/gms/internal/ll;)V

    :goto_0
    const-string v2, "AdRenderer: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/kk;->e()Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->t:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/android/gms/ads/internal/q;

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->t:Z

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/google/android/gms/ads/internal/q;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ie;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/ads/internal/q;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ie;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/q;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/hz$a;Lcom/google/android/gms/internal/de;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ib;

    invoke-direct {v0, p3, p7}, Lcom/google/android/gms/internal/ib;-><init>(Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/hz$a;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/cw;->X:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->p:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/hy;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/internal/hy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hz$a;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/cw;->aq:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/util/k;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/util/k;->h()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p5, :cond_5

    invoke-interface {p5}, Lcom/google/android/gms/internal/ll;->k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ic;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/internal/ic;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hz$a;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ia;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/internal/ia;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hz$a;)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/jh;)Lcom/google/android/gms/internal/kk;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/jo;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/jo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ju$a;Lcom/google/android/gms/internal/jh;)V

    const-string v2, "AdRenderer: "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/kk;->e()Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
