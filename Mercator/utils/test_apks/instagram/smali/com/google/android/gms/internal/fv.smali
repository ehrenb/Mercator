.class public final Lcom/google/android/gms/internal/fv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fu;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:Z

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/android/gms/internal/kd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "Mediation Response JSON: "

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ad_networks"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    move v2, v3

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_3

    new-instance v9, Lcom/google/android/gms/internal/fu;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/fu;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_1

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fu;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/google/android/gms/internal/fv;->o:I

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fv;->p:I

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->a:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->h:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fv;->l:I

    const-string v0, "timeout_ms"

    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/fv;->m:J

    const-string v0, "settings"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "ad_network_timeout_millis"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/fv;->b:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->x()Lcom/google/android/gms/internal/ga;

    move-result-object v2

    const-string v3, "click_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ga;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/fv;->c:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->x()Lcom/google/android/gms/internal/ga;

    move-result-object v2

    const-string v3, "imp_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ga;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/fv;->d:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->x()Lcom/google/android/gms/internal/ga;

    move-result-object v2

    const-string v3, "nofill_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ga;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/fv;->e:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->x()Lcom/google/android/gms/internal/ga;

    move-result-object v2

    const-string v3, "remote_ping_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ga;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/fv;->f:Ljava/util/List;

    const-string v2, "render_in_browser"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fv;->g:Z

    const-string v2, "refresh"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/fv;->i:J

    const-string v2, "rewards"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->a(Lorg/json/JSONArray;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v2

    if-nez v2, :cond_5

    iput-object v11, p0, Lcom/google/android/gms/internal/fv;->j:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/fv;->k:I

    :goto_3
    const-string v2, "use_displayed_impression"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fv;->n:Z

    :goto_4
    return-void

    :cond_4
    move-wide v2, v4

    goto :goto_2

    :cond_5
    iget-object v3, v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/fv;->j:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->c:I

    iput v2, p0, Lcom/google/android/gms/internal/fv;->k:I

    goto :goto_3

    :cond_6
    iput-wide v4, p0, Lcom/google/android/gms/internal/fv;->b:J

    iput-object v11, p0, Lcom/google/android/gms/internal/fv;->c:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/fv;->d:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/fv;->e:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/fv;->f:Ljava/util/List;

    iput-wide v4, p0, Lcom/google/android/gms/internal/fv;->i:J

    iput-object v11, p0, Lcom/google/android/gms/internal/fv;->j:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/fv;->k:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fv;->n:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/fv;->g:Z

    goto :goto_4
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fu;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fv;->a:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/internal/fv;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/fv;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/fv;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/fv;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/fv;->f:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/fv;->g:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/fv;->h:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/gms/internal/fv;->i:J

    iput p12, p0, Lcom/google/android/gms/internal/fv;->o:I

    iput p13, p0, Lcom/google/android/gms/internal/fv;->p:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/fv;->j:Ljava/lang/String;

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/fv;->k:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/fv;->l:I

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/fv;->m:J

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fv;->n:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/fu;)Z
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/fu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
