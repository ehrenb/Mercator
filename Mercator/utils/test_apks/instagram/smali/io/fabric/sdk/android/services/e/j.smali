.class Lio/fabric/sdk/android/services/e/j;
.super Ljava/lang/Object;
.source "DefaultSettingsController.java"

# interfaces
.implements Lio/fabric/sdk/android/services/e/s;


# instance fields
.field private final a:Lio/fabric/sdk/android/services/e/w;

.field private final b:Lio/fabric/sdk/android/services/e/v;

.field private final c:Lio/fabric/sdk/android/services/b/k;

.field private final d:Lio/fabric/sdk/android/services/e/g;

.field private final e:Lio/fabric/sdk/android/services/e/x;

.field private final f:Lio/fabric/sdk/android/h;

.field private final g:Lio/fabric/sdk/android/services/d/c;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/e/w;Lio/fabric/sdk/android/services/b/k;Lio/fabric/sdk/android/services/e/v;Lio/fabric/sdk/android/services/e/g;Lio/fabric/sdk/android/services/e/x;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/fabric/sdk/android/services/e/j;->f:Lio/fabric/sdk/android/h;

    .line 55
    iput-object p2, p0, Lio/fabric/sdk/android/services/e/j;->a:Lio/fabric/sdk/android/services/e/w;

    .line 56
    iput-object p3, p0, Lio/fabric/sdk/android/services/e/j;->c:Lio/fabric/sdk/android/services/b/k;

    .line 57
    iput-object p4, p0, Lio/fabric/sdk/android/services/e/j;->b:Lio/fabric/sdk/android/services/e/v;

    .line 58
    iput-object p5, p0, Lio/fabric/sdk/android/services/e/j;->d:Lio/fabric/sdk/android/services/e/g;

    .line 59
    iput-object p6, p0, Lio/fabric/sdk/android/services/e/j;->e:Lio/fabric/sdk/android/services/e/x;

    .line 60
    new-instance v0, Lio/fabric/sdk/android/services/d/d;

    iget-object v1, p0, Lio/fabric/sdk/android/services/e/j;->f:Lio/fabric/sdk/android/h;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/h;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/e/j;->g:Lio/fabric/sdk/android/services/d/c;

    .line 61
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private b(Lio/fabric/sdk/android/services/e/r;)Lio/fabric/sdk/android/services/e/t;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 105
    .line 108
    :try_start_0
    sget-object v1, Lio/fabric/sdk/android/services/e/r;->b:Lio/fabric/sdk/android/services/e/r;

    invoke-virtual {v1, p1}, Lio/fabric/sdk/android/services/e/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lio/fabric/sdk/android/services/e/j;->d:Lio/fabric/sdk/android/services/e/g;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/e/g;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    iget-object v1, p0, Lio/fabric/sdk/android/services/e/j;->b:Lio/fabric/sdk/android/services/e/v;

    iget-object v3, p0, Lio/fabric/sdk/android/services/e/j;->c:Lio/fabric/sdk/android/services/b/k;

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/services/e/v;->a(Lio/fabric/sdk/android/services/b/k;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/t;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Lio/fabric/sdk/android/services/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lio/fabric/sdk/android/services/e/j;->c:Lio/fabric/sdk/android/services/b/k;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/b/k;->a()J

    move-result-wide v2

    .line 120
    sget-object v4, Lio/fabric/sdk/android/services/e/r;->c:Lio/fabric/sdk/android/services/e/r;

    invoke-virtual {v4, p1}, Lio/fabric/sdk/android/services/e/r;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Lio/fabric/sdk/android/services/e/t;->a(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 123
    :cond_0
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Returning cached settings."

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 139
    :cond_1
    :goto_0
    return-object v0

    .line 125
    :cond_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Cached settings have expired."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to get cached settings"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    :cond_3
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to transform cached settings data."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "No cached settings data found."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method


# virtual methods
.method public a()Lio/fabric/sdk/android/services/e/t;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lio/fabric/sdk/android/services/e/r;->a:Lio/fabric/sdk/android/services/e/r;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/e/j;->a(Lio/fabric/sdk/android/services/e/r;)Lio/fabric/sdk/android/services/e/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/fabric/sdk/android/services/e/r;)Lio/fabric/sdk/android/services/e/t;
    .locals 7

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/e/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/e/j;->b(Lio/fabric/sdk/android/services/e/r;)Lio/fabric/sdk/android/services/e/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :cond_0
    if-nez v1, :cond_1

    .line 80
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/j;->e:Lio/fabric/sdk/android/services/e/x;

    iget-object v2, p0, Lio/fabric/sdk/android/services/e/j;->a:Lio/fabric/sdk/android/services/e/w;

    invoke-interface {v0, v2}, Lio/fabric/sdk/android/services/e/x;->a(Lio/fabric/sdk/android/services/e/w;)Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iget-object v2, p0, Lio/fabric/sdk/android/services/e/j;->b:Lio/fabric/sdk/android/services/e/v;

    iget-object v3, p0, Lio/fabric/sdk/android/services/e/j;->c:Lio/fabric/sdk/android/services/b/k;

    invoke-interface {v2, v3, v0}, Lio/fabric/sdk/android/services/e/v;->a(Lio/fabric/sdk/android/services/b/k;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/t;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lio/fabric/sdk/android/services/e/j;->d:Lio/fabric/sdk/android/services/e/g;

    iget-wide v4, v1, Lio/fabric/sdk/android/services/e/t;->g:J

    invoke-interface {v2, v4, v5, v0}, Lio/fabric/sdk/android/services/e/g;->a(JLorg/json/JSONObject;)V

    .line 86
    const-string v2, "Loaded settings: "

    invoke-direct {p0, v0, v2}, Lio/fabric/sdk/android/services/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/e/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/e/j;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v1

    .line 94
    if-nez v0, :cond_2

    .line 95
    :try_start_2
    sget-object v1, Lio/fabric/sdk/android/services/e/r;->c:Lio/fabric/sdk/android/services/e/r;

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/e/j;->b(Lio/fabric/sdk/android/services/e/r;)Lio/fabric/sdk/android/services/e/t;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 101
    :cond_2
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 99
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/j;->g:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v1, p0, Lio/fabric/sdk/android/services/e/j;->g:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/d/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/fabric/sdk/android/services/e/j;->f:Lio/fabric/sdk/android/h;

    invoke-virtual {v2}, Lio/fabric/sdk/android/h;->E()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lio/fabric/sdk/android/services/e/j;->g:Lio/fabric/sdk/android/services/d/c;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/e/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/e/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
