.class Lio/fabric/sdk/android/services/e/k;
.super Ljava/lang/Object;
.source "DefaultSettingsJsonTransform.java"

# interfaces
.implements Lio/fabric/sdk/android/services/e/v;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/b/k;JLorg/json/JSONObject;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 220
    .line 222
    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 232
    :goto_0
    return-wide v0

    .line 228
    :cond_0
    invoke-interface {p1}, Lio/fabric/sdk/android/services/b/k;->a()J

    move-result-wide v0

    .line 229
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v0, "reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    const-string v0, "update_required"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 85
    const/4 v6, 0x0

    .line 88
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "hash"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/k;->b(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/c;

    move-result-object v6

    .line 93
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/e/e;

    invoke-direct/range {v0 .. v6}, Lio/fabric/sdk/android/services/e/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/e/c;)V

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "hash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    new-instance v3, Lio/fabric/sdk/android/services/e/c;

    invoke-direct {v3, v0, v1, v2}, Lio/fabric/sdk/android/services/e/c;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method private c(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/m;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    const-string v0, "prompt_enabled"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 108
    const-string v1, "collect_logged_exceptions"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 111
    const-string v2, "collect_reports"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 114
    const-string v3, "collect_analytics"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 118
    new-instance v4, Lio/fabric/sdk/android/services/e/m;

    invoke-direct {v4, v0, v1, v2, v3}, Lio/fabric/sdk/android/services/e/m;-><init>(ZZZZ)V

    return-object v4
.end method

.method private d(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/b;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 123
    const-string v0, "url"

    const-string v1, "https://e.crashlytics.com/spi/v2/events"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v0, "flush_interval_secs"

    const/16 v2, 0x258

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 128
    const-string v0, "max_byte_size_per_file"

    const/16 v3, 0x1f40

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 131
    const-string v0, "max_file_count_per_send"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 134
    const-string v0, "max_pending_send_file_count"

    const/16 v5, 0x64

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 137
    const-string v0, "track_custom_events"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 140
    const-string v0, "track_predefined_events"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 143
    const-string v0, "sampling_rate"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 146
    const-string v0, "flush_on_background"

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 150
    new-instance v0, Lio/fabric/sdk/android/services/e/b;

    invoke-direct/range {v0 .. v9}, Lio/fabric/sdk/android/services/e/b;-><init>(Ljava/lang/String;IIIIZZIZ)V

    return-object v0
.end method

.method private e(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/p;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x40

    .line 156
    const-string v0, "log_buffer_size"

    const v1, 0xfa00

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 159
    const-string v0, "max_chained_exception_depth"

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 162
    const-string v0, "max_custom_exception_events"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 165
    const-string v0, "max_custom_key_value_pairs"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 168
    const-string v0, "identifier_mask"

    const/16 v5, 0xff

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 171
    const-string v0, "send_session_without_crash"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 175
    new-instance v0, Lio/fabric/sdk/android/services/e/p;

    invoke-direct/range {v0 .. v6}, Lio/fabric/sdk/android/services/e/p;-><init>(IIIIIZ)V

    return-object v0
.end method

.method private f(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/o;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 181
    const-string v0, "title"

    const-string v1, "Send Crash Report?"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v0, "message"

    const-string v2, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    const-string v0, "send_button_title"

    const-string v3, "Send"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    const-string v0, "show_cancel_button"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 193
    const-string v0, "cancel_button_title"

    const-string v5, "Don\'t Send"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    const-string v0, "show_always_send_button"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 199
    const-string v0, "always_send_button_title"

    const-string v7, "Always Send"

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    new-instance v0, Lio/fabric/sdk/android/services/e/o;

    invoke-direct/range {v0 .. v7}, Lio/fabric/sdk/android/services/e/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private g(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "update_endpoint"

    sget-object v1, Lio/fabric/sdk/android/services/e/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "update_suspend_duration"

    const/16 v2, 0xe10

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 215
    new-instance v2, Lio/fabric/sdk/android/services/e/f;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/services/e/f;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/b/k;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/t;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "settings_version"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 38
    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 41
    const-string v0, "app"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/k;->a(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/e;

    move-result-object v4

    .line 43
    const-string v0, "session"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/k;->e(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/p;

    move-result-object v5

    .line 45
    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/k;->f(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/o;

    move-result-object v6

    .line 47
    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/k;->c(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/m;

    move-result-object v7

    .line 49
    const-string v0, "analytics"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/k;->d(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/b;

    move-result-object v8

    .line 51
    const-string v0, "beta"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/e/k;->g(Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/e/f;

    move-result-object v9

    .line 54
    int-to-long v0, v11

    invoke-direct {p0, p1, v0, v1, p2}, Lio/fabric/sdk/android/services/e/k;->a(Lio/fabric/sdk/android/services/b/k;JLorg/json/JSONObject;)J

    move-result-wide v2

    .line 56
    new-instance v1, Lio/fabric/sdk/android/services/e/t;

    invoke-direct/range {v1 .. v11}, Lio/fabric/sdk/android/services/e/t;-><init>(JLio/fabric/sdk/android/services/e/e;Lio/fabric/sdk/android/services/e/p;Lio/fabric/sdk/android/services/e/o;Lio/fabric/sdk/android/services/e/m;Lio/fabric/sdk/android/services/e/b;Lio/fabric/sdk/android/services/e/f;II)V

    return-object v1
.end method
