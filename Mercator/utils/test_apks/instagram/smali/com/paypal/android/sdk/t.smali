.class public final Lcom/paypal/android/sdk/t;
.super Ljava/lang/Object;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/Boolean;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/Boolean;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:J

.field public J:J

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/Boolean;

.field public M:Ljava/lang/Integer;

.field public N:I

.field public O:I

.field public P:Ljava/lang/String;

.field public Q:I

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/Boolean;

.field public T:Ljava/lang/Boolean;

.field public U:Ljava/lang/String;

.field public V:J

.field public W:J

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public aa:Ljava/lang/String;

.field public ab:Ljava/lang/String;

.field public ac:Ljava/lang/String;

.field public ad:Ljava/lang/String;

.field public ae:Ljava/lang/String;

.field public af:Ljava/lang/String;

.field public ag:Ljava/util/List;

.field public ah:Ljava/util/Map;

.field private ai:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Landroid/location/Location;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/paypal/android/sdk/t;->d:I

    iput v2, p0, Lcom/paypal/android/sdk/t;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/paypal/android/sdk/t;->n:J

    iput v2, p0, Lcom/paypal/android/sdk/t;->w:I

    iput v2, p0, Lcom/paypal/android/sdk/t;->N:I

    iput v2, p0, Lcom/paypal/android/sdk/t;->O:I

    iput v2, p0, Lcom/paypal/android/sdk/t;->Q:I

    const-string v0, "Android"

    iput-object v0, p0, Lcom/paypal/android/sdk/t;->y:Ljava/lang/String;

    const-string v0, "full"

    iput-object v0, p0, Lcom/paypal/android/sdk/t;->ai:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"lat\":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"lng\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"acc\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"timestamp\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/t;->ah:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/t;->ah:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v3, v3, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "app_guid"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "base_station_id"

    iget v2, p0, Lcom/paypal/android/sdk/t;->d:I

    if-ne v2, v8, :cond_0

    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bssid"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bssid_array"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->ag:Ljava/util/List;

    if-nez v2, :cond_1

    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cell_id"

    iget v2, p0, Lcom/paypal/android/sdk/t;->f:I

    if-ne v2, v8, :cond_2

    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "comp_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "conf_url"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "conf_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "conn_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dc_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->ae:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_model"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_name"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_uptime"

    iget-wide v4, p0, Lcom/paypal/android/sdk/t;->n:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    move-object v2, v1

    :goto_3
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ip_addrs"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ip_addresses"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    if-nez v2, :cond_4

    move-object v2, v1

    :goto_4
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "known_apps"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    if-nez v2, :cond_5

    move-object v2, v1

    :goto_5
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "line_1_number"

    const-string v2, ""

    iget-object v4, p0, Lcom/paypal/android/sdk/t;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    :goto_6
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "linker_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "locale_country"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "locale_lang"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "location"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->v:Landroid/location/Location;

    invoke-static {v3}, Lcom/paypal/android/sdk/t;->a(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "location_area_code"

    iget v2, p0, Lcom/paypal/android/sdk/t;->w:I

    if-ne v2, v8, :cond_7

    move-object v2, v1

    :goto_7
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mac_addrs"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payload_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->ai:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "phone_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "risk_comp_session_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roaming"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->C:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sim_operator_name"

    const-string v2, ""

    iget-object v4, p0, Lcom/paypal/android/sdk/t;->D:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v1

    :goto_8
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sim_serial_number"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->E:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sms_enabled"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->F:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->G:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cdma_network_id"

    iget v2, p0, Lcom/paypal/android/sdk/t;->O:I

    if-ne v2, v8, :cond_9

    move-object v2, v1

    :goto_9
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cdma_system_id"

    iget v2, p0, Lcom/paypal/android/sdk/t;->N:I

    if-ne v2, v8, :cond_a

    move-object v2, v1

    :goto_a
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "subscriber_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->H:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    iget-wide v4, p0, Lcom/paypal/android/sdk/t;->I:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "total_storage_space"

    iget-wide v4, p0, Lcom/paypal/android/sdk/t;->J:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "tz_name"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->K:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ds"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->L:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tz"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->M:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "network_operator"

    iget-object v3, p0, Lcom/paypal/android/sdk/t;->P:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source_app"

    iget v3, p0, Lcom/paypal/android/sdk/t;->Q:I

    if-ne v3, v8, :cond_b

    :goto_b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source_app_version"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_emulator"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->S:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_rooted"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->T:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pairing_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_first_install_time"

    iget-wide v2, p0, Lcom/paypal/android/sdk/t;->V:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "app_last_update_time"

    iget-wide v2, p0, Lcom/paypal/android/sdk/t;->W:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "android_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serial_number"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "notif_token"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bluetooth_mac_addrs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gsf_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "VPN_setting"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "proxy_setting"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pm"

    iget-object v2, p0, Lcom/paypal/android/sdk/t;->af:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/t;->a(Lorg/json/JSONObject;)V

    :goto_c
    return-object v0

    :cond_0
    iget v2, p0, Lcom/paypal/android/sdk/t;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/paypal/android/sdk/t;->ag:Ljava/util/List;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_c

    :cond_2
    iget v2, p0, Lcom/paypal/android/sdk/t;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_2

    :cond_3
    iget-wide v4, p0, Lcom/paypal/android/sdk/t;->n:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_3

    :cond_4
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_4

    :cond_5
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_5

    :cond_6
    iget-object v2, p0, Lcom/paypal/android/sdk/t;->r:Ljava/lang/String;

    goto/16 :goto_6

    :cond_7
    iget v2, p0, Lcom/paypal/android/sdk/t;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_7

    :cond_8
    iget-object v2, p0, Lcom/paypal/android/sdk/t;->D:Ljava/lang/String;

    goto/16 :goto_8

    :cond_9
    iget v2, p0, Lcom/paypal/android/sdk/t;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_9

    :cond_a
    iget v2, p0, Lcom/paypal/android/sdk/t;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_a

    :cond_b
    iget v1, p0, Lcom/paypal/android/sdk/t;->Q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_b
.end method

.method public final a(Lcom/paypal/android/sdk/t;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "is_emulator"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->S:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_rooted"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->T:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_guid"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "risk_comp_session_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p1, Lcom/paypal/android/sdk/t;->I:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "payload_type"

    const-string v2, "incremental"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source_app"

    iget v2, p1, Lcom/paypal/android/sdk/t;->Q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pairing_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/t;->a(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "app_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "app_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v1, p0, Lcom/paypal/android/sdk/t;->d:I

    iget v2, p1, Lcom/paypal/android/sdk/t;->d:I

    if-eq v1, v2, :cond_2

    const-string v1, "base_station_id"

    iget v2, p1, Lcom/paypal/android/sdk/t;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "bssid"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget v1, p0, Lcom/paypal/android/sdk/t;->f:I

    iget v2, p1, Lcom/paypal/android/sdk/t;->f:I

    if-eq v1, v2, :cond_4

    const-string v1, "cell_id"

    iget v2, p1, Lcom/paypal/android/sdk/t;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "comp_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->i:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "conf_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "conf_url"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->j:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "conn_type"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->k:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "device_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->l:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "device_model"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->m:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "device_name"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-wide v2, p0, Lcom/paypal/android/sdk/t;->n:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/t;->n:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    const-string v1, "device_uptime"

    iget-wide v2, p1, Lcom/paypal/android/sdk/t;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_c
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->o:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ip_addrs"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "ip_addresses"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "known_apps"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->r:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "line_1_number"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->s:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "linker_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->t:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "locale_country"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->u:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "locale_lang"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->v:Landroid/location/Location;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/paypal/android/sdk/t;->v:Landroid/location/Location;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->v:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->v:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "location"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->v:Landroid/location/Location;

    invoke-static {v2}, Lcom/paypal/android/sdk/t;->a(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    iget v1, p0, Lcom/paypal/android/sdk/t;->w:I

    iget v2, p1, Lcom/paypal/android/sdk/t;->w:I

    if-eq v1, v2, :cond_15

    const-string v1, "location_area_code"

    iget v2, p1, Lcom/paypal/android/sdk/t;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_15
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->x:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->x:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "mac_addrs"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->y:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->y:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "os_type"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->z:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->z:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "os_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "phone_type"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_19
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->C:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->C:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->C:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "roaming"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->C:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->D:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->D:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "sim_operator_name"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->E:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->E:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "sim_serial_number"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->F:Ljava/lang/Boolean;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->F:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->F:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "sms_enabled"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->F:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->G:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->G:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "ssid"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1e
    iget v1, p0, Lcom/paypal/android/sdk/t;->O:I

    iget v2, p1, Lcom/paypal/android/sdk/t;->O:I

    if-eq v1, v2, :cond_1f

    const-string v1, "cdma_network_id"

    iget v2, p1, Lcom/paypal/android/sdk/t;->O:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1f
    iget v1, p0, Lcom/paypal/android/sdk/t;->N:I

    iget v2, p1, Lcom/paypal/android/sdk/t;->N:I

    if-eq v1, v2, :cond_20

    const-string v1, "cdma_system_id"

    iget v2, p1, Lcom/paypal/android/sdk/t;->N:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_20
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->H:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->H:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "subscriber_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_21
    iget-wide v2, p0, Lcom/paypal/android/sdk/t;->J:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/t;->J:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_22

    const-string v1, "total_storage_space"

    iget-wide v2, p1, Lcom/paypal/android/sdk/t;->J:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_22
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->K:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->K:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "tz_name"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->L:Ljava/lang/Boolean;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->L:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->L:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "ds"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->L:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->M:Ljava/lang/Integer;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->M:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->M:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "tz"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->M:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_25
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->P:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->P:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "network_operator"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->R:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->R:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "source_app_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    iget-wide v2, p0, Lcom/paypal/android/sdk/t;->V:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/t;->V:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_28

    const-string v1, "app_first_install_time"

    iget-wide v2, p1, Lcom/paypal/android/sdk/t;->V:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_28
    iget-wide v2, p0, Lcom/paypal/android/sdk/t;->W:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/t;->W:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_29

    const-string v1, "app_last_update_time"

    iget-wide v2, p1, Lcom/paypal/android/sdk/t;->W:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_29
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->X:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->X:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "android_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2a
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->Z:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->Z:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "serial_number"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2b
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->Y:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->Y:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "notif_token"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2c
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->aa:Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->aa:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "gsf_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2d
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ac:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ac:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "VPN_setting"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ab:Ljava/lang/String;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ab:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "proxy_setting"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2f
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ad:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ad:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "c"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->af:Ljava/lang/String;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->af:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->af:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "pm"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->af:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ag:Ljava/util/List;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/paypal/android/sdk/t;->ag:Ljava/util/List;

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ag:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "bssid_arr"

    iget-object v2, p1, Lcom/paypal/android/sdk/t;->ag:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_32
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
