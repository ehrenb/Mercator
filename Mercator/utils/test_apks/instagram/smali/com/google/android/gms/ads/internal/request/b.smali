.class public Lcom/google/android/gms/ads/internal/request/b;
.super Lcom/google/android/gms/internal/kc;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/c$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/kk;

.field b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field c:Lcom/google/android/gms/internal/fv;

.field private final d:Lcom/google/android/gms/ads/internal/request/a$a;

.field private final e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/internal/ah;

.field private i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/ads/internal/request/a$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/kc;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/b;->d:Lcom/google/android/gms/ads/internal/request/a$a;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/b;->e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/b;->h:Lcom/google/android/gms/internal/ah;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/request/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 11

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/kd;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ju$a;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->c:Lcom/google/android/gms/internal/fv;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    move v5, p1

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ju$a;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/fv;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->d:Lcom/google/android/gms/ads/internal/request/a$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/a$a;->a(Lcom/google/android/gms/internal/ju$a;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/kd;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    invoke-direct {v1, v0, v4, v6, v7}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/request/b;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/request/b;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/request/b;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/b$a;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v2, v1

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    iget-boolean v5, v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->j:Z

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    new-instance v1, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v2, "Invalid ad size format from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_9

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_6

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_4
    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_7

    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_5
    if-ne v4, v0, :cond_8

    if-ne v5, v1, :cond_8

    iget-boolean v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->j:Z

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v2, "Invalid ad size number from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    goto :goto_4

    :cond_7
    iget v1, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_9
    new-instance v1, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method a(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ld;)Lcom/google/android/gms/internal/kk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/ld",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;)",
            "Lcom/google/android/gms/internal/kk;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    invoke-static {v0, p1, p2, p0}, Lcom/google/android/gms/ads/internal/request/c;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/ads/internal/request/c$a;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 6

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/b$1;-><init>(Lcom/google/android/gms/ads/internal/request/b;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/cw;->bn:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/google/android/gms/internal/le;

    invoke-direct {v0}, Lcom/google/android/gms/internal/le;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v2

    new-instance v1, Lcom/google/android/gms/ads/internal/request/b$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/request/b$2;-><init>(Lcom/google/android/gms/ads/internal/request/b;Lcom/google/android/gms/internal/ld;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/kh;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/la;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->h:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ah;->a()Lcom/google/android/gms/internal/n;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/b;->e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ld;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 11

    const/4 v5, -0x2

    const/4 v0, 0x0

    const-string v1, "Received ad response."

    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/kk;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->H:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/jx;->b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/ads/internal/request/b$a; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/b$a;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/b$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/b;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/b;->c()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/request/b;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    :try_end_3
    .catch Lcom/google/android/gms/ads/internal/request/b$a; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->v:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jx;->b(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->O:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/jx;->c(Z)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->r:Ljava/lang/String;

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ju$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->c:Lcom/google/android/gms/internal/fv;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ju$a;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/fv;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->d:Lcom/google/android/gms/ads/internal/request/a$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/a$a;->a(Lcom/google/android/gms/internal/ju$a;)V

    sget-object v0, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/kd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object v4, v0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/kk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kk;->d()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/b$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->u:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jx;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/fv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->c:Lcom/google/android/gms/internal/fv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->c:Lcom/google/android/gms/internal/fv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/fv;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jx;->d(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/cw;->cR:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->g()Lcom/google/android/gms/internal/kj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kj;->b(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "googleads.g.doubleclick.net"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v2, "Could not parse mediation config: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->K:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jx;->d(Z)V

    goto :goto_1
.end method
