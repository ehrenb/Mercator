.class public final Lcom/paypal/android/sdk/fe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/fu;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/paypal/android/sdk/fi;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/fb;->aC:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fe;->a:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/fi;

    const-string v1, "funding_sources"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "backup_funding_instrument"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/fi;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/fe;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/fe;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0}, Lcom/paypal/android/sdk/fe;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_0
    new-instance v2, Lcom/paypal/android/sdk/fe;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/paypal/android/sdk/fe;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2}, Lcom/paypal/android/sdk/fe;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fi;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fi;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fe;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fi;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fi;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fi;->b()Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/paypal/android/sdk/fi;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/paypal/android/sdk/fe;->b:Lcom/paypal/android/sdk/fi;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/fi;->e()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
