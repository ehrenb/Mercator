.class public Lcom/paypal/android/sdk/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static a:Lcom/paypal/android/sdk/ae;

.field private static final b:Ljava/lang/String;

.field private static x:Lcom/paypal/android/sdk/s;

.field private static final y:Ljava/lang/Object;

.field private static z:Lcom/paypal/android/sdk/u;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/paypal/android/sdk/q;

.field private l:Lcom/paypal/android/sdk/t;

.field private m:Lcom/paypal/android/sdk/t;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;

.field private p:Landroid/location/Location;

.field private q:Ljava/util/Timer;

.field private r:Landroid/os/Handler;

.field private s:Lcom/paypal/android/sdk/z;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/s;

    invoke-direct {v0}, Lcom/paypal/android/sdk/s;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/u;->x:Lcom/paypal/android/sdk/s;

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/sdk/u;->a:Lcom/paypal/android/sdk/ae;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/u;->y:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/u;)I
    .locals 2

    iget v0, p0, Lcom/paypal/android/sdk/u;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/u;->g:I

    return v0
.end method

.method private static a(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a()Lcom/paypal/android/sdk/u;
    .locals 2

    sget-object v1, Lcom/paypal/android/sdk/u;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/paypal/android/sdk/u;->z:Lcom/paypal/android/sdk/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/u;

    invoke-direct {v0}, Lcom/paypal/android/sdk/u;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/u;->z:Lcom/paypal/android/sdk/u;

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/u;->z:Lcom/paypal/android/sdk/u;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v2, "Known SecurityException on some devices"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->o:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/u;->i()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/u;->e()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->j()Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "PRD"

    const-string v3, "Using custom pairing id"

    invoke-static {v1, v2, v3}, Lcom/paypal/android/sdk/ap;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;
    .locals 8

    const/4 v3, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/high16 v1, -0x80000000

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    move v2, v3

    move v4, v1

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v4, v0, :cond_2

    move v2, v1

    move v4, v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v5

    goto :goto_0
.end method

.method private a(Lcom/paypal/android/sdk/q;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    iput-object p1, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v1, "Configuration loaded"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:     "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->q:Ljava/util/Timer;

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/q;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/q;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/q;->e()J

    move-result-wide v4

    sget-object v6, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending logRiskMetadata every "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sessionTimeout set to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "compTimeout set to    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/u;->e:J

    mul-long v0, v4, v10

    iput-wide v0, p0, Lcom/paypal/android/sdk/u;->f:J

    mul-long v0, v2, v10

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/y;->a(J)V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/paypal/android/sdk/u;->v:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->q:Ljava/util/Timer;

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v1, "Starting LogRiskMetadataTask"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->q:Ljava/util/Timer;

    new-instance v1, Lcom/paypal/android/sdk/v;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/v;-><init>(Lcom/paypal/android/sdk/u;)V

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/paypal/android/sdk/u;->e:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private a(Lcom/paypal/android/sdk/t;Lcom/paypal/android/sdk/t;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/u;->o:Ljava/util/Map;

    iput-object v0, p1, Lcom/paypal/android/sdk/t;->ah:Ljava/util/Map;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/paypal/android/sdk/t;->a(Lcom/paypal/android/sdk/t;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "appGuid"

    iget-object v5, p0, Lcom/paypal/android/sdk/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "libraryVersion"

    invoke-static {}, Lcom/paypal/android/sdk/u;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "additionalData"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Dyson Risk Data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/q;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/q;->h()Z

    move-result v5

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new LogRiskMetadataRequest to: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "endpointIsStage: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " (using SSL: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/ag;

    iget-object v6, p0, Lcom/paypal/android/sdk/u;->r:Landroid/os/Handler;

    if-nez v5, :cond_4

    :goto_3
    invoke-direct {v0, v4, v3, v6, v1}, Lcom/paypal/android/sdk/ag;-><init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Z)V

    invoke-static {}, Lcom/paypal/android/sdk/ak;->a()Lcom/paypal/android/sdk/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/ak;->a(Lcom/paypal/android/sdk/aj;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/paypal/android/sdk/t;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method static synthetic b(Lcom/paypal/android/sdk/u;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/u;->g:I

    return v0
.end method

.method private static b(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/u;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/paypal/android/sdk/u;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/paypal/android/sdk/u;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/paypal/android/sdk/u;)J
    .locals 2

    iget-wide v0, p0, Lcom/paypal/android/sdk/u;->f:J

    return-wide v0
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Dyson/%S (%S %S)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "3.5.6.release"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/u;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->q:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/u;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->m:Lcom/paypal/android/sdk/t;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " update not sent correctly, retrying..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "full"

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->m:Lcom/paypal/android/sdk/t;

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/t;Lcom/paypal/android/sdk/t;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->l()Lcom/paypal/android/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->m:Lcom/paypal/android/sdk/t;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/t;Lcom/paypal/android/sdk/t;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/y;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/paypal/android/sdk/y;->a()V

    const-string v0, "full"

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->l()Lcom/paypal/android/sdk/t;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/t;Lcom/paypal/android/sdk/t;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->m:Lcom/paypal/android/sdk/t;

    goto :goto_0

    :cond_3
    const-string v0, "incremental"

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->l()Lcom/paypal/android/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/t;Lcom/paypal/android/sdk/t;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->m:Lcom/paypal/android/sdk/t;

    goto :goto_0
.end method

.method static synthetic g(Lcom/paypal/android/sdk/u;)I
    .locals 2

    iget v0, p0, Lcom/paypal/android/sdk/u;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/paypal/android/sdk/u;->h:I

    return v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/u;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/sdk/u;->h:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/paypal/android/sdk/u;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "https://b.stats.paypal.com/counter.cgi?p="

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->s:Lcom/paypal/android/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->s:Lcom/paypal/android/sdk/z;

    sget-object v1, Lcom/paypal/android/sdk/z;->a:Lcom/paypal/android/sdk/z;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Beacon not recognize host app"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/u;->s:Lcom/paypal/android/sdk/z;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/z;->a()I

    move-result v1

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Beacon pairing id empty"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v0, "emptyIp"

    invoke-static {v0}, Lcom/paypal/android/sdk/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&a="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beacon Request URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/paypal/android/sdk/ac;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/sdk/u;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/p;

    move-result-object v4

    iget-object v5, p0, Lcom/paypal/android/sdk/u;->r:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/ac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/p;Landroid/os/Handler;)V

    invoke-static {}, Lcom/paypal/android/sdk/ak;->a()Lcom/paypal/android/sdk/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/ak;->a(Lcom/paypal/android/sdk/aj;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v3, "error reading property file"

    invoke-static {v2, v3, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic j(Lcom/paypal/android/sdk/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/paypal/android/sdk/u;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->q:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private l()Lcom/paypal/android/sdk/t;
    .locals 15

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v4, Lcom/paypal/android/sdk/t;

    invoke-direct {v4}, Lcom/paypal/android/sdk/t;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/q;->i()Lcom/paypal/android/sdk/an;

    move-result-object v11

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v7, v8}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    move-object v10, v7

    :goto_1
    iget-object v7, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v7, v8}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v9, v2

    :goto_2
    iget-object v2, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v7}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v7}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_1
    move v8, v6

    :goto_3
    iget-object v2, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v6}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "unknown ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v3

    :goto_4
    sget-object v2, Lcom/paypal/android/sdk/ao;->w:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/paypal/android/sdk/ao;->a:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->d:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->a:Ljava/lang/String;

    :cond_3
    sget-object v2, Lcom/paypal/android/sdk/ao;->N:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->U:Ljava/lang/String;

    :cond_4
    sget-object v2, Lcom/paypal/android/sdk/ao;->L:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->s:Lcom/paypal/android/sdk/z;

    if-nez v2, :cond_3f

    sget-object v2, Lcom/paypal/android/sdk/z;->a:Lcom/paypal/android/sdk/z;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/z;->a()I

    move-result v2

    iput v2, v4, Lcom/paypal/android/sdk/t;->Q:I

    :cond_5
    :goto_5
    sget-object v2, Lcom/paypal/android/sdk/ao;->M:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->t:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->R:Ljava/lang/String;

    :cond_6
    sget-object v2, Lcom/paypal/android/sdk/ao;->u:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->w:Ljava/lang/String;

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->Y:Ljava/lang/String;

    :cond_7
    sget-object v2, Lcom/paypal/android/sdk/ao;->R:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v14, "android_id"

    invoke-static {v2, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->X:Ljava/lang/String;

    :cond_8
    iget-object v2, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/Context;)Lcom/paypal/android/sdk/p;

    move-result-object v2

    sget-object v14, Lcom/paypal/android/sdk/ao;->b:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v14}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v2}, Lcom/paypal/android/sdk/p;->a()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/paypal/android/sdk/t;->b:Ljava/lang/String;

    :cond_9
    sget-object v14, Lcom/paypal/android/sdk/ao;->c:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v14}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v2}, Lcom/paypal/android/sdk/p;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->c:Ljava/lang/String;

    :cond_a
    sget-object v2, Lcom/paypal/android/sdk/ao;->d:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v6, :cond_40

    move v2, v5

    :goto_6
    iput v2, v4, Lcom/paypal/android/sdk/t;->d:I

    :cond_b
    sget-object v2, Lcom/paypal/android/sdk/ao;->H:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v6, :cond_41

    move v2, v5

    :goto_7
    iput v2, v4, Lcom/paypal/android/sdk/t;->O:I

    :cond_c
    sget-object v2, Lcom/paypal/android/sdk/ao;->I:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v6, :cond_42

    move v2, v5

    :goto_8
    iput v2, v4, Lcom/paypal/android/sdk/t;->N:I

    :cond_d
    sget-object v2, Lcom/paypal/android/sdk/ao;->e:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v10, :cond_43

    move-object v2, v3

    :goto_9
    iput-object v2, v4, Lcom/paypal/android/sdk/t;->e:Ljava/lang/String;

    :cond_e
    sget-object v2, Lcom/paypal/android/sdk/ao;->Z:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v2}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v8, :cond_44

    invoke-static {v1}, Lcom/paypal/android/sdk/u;->a(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_a
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->ag:Ljava/util/List;

    :cond_f
    sget-object v1, Lcom/paypal/android/sdk/ao;->f:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez v7, :cond_45

    move v1, v5

    :goto_b
    iput v1, v4, Lcom/paypal/android/sdk/t;->f:I

    :cond_10
    sget-object v1, Lcom/paypal/android/sdk/ao;->G:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->P:Ljava/lang/String;

    :cond_11
    const-string v1, "3.5.6.release"

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->j:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    if-nez v1, :cond_46

    move-object v1, v3

    :goto_c
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->i:Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/sdk/ao;->g:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez v9, :cond_47

    move-object v1, v3

    :goto_d
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->j:Ljava/lang/String;

    :cond_12
    sget-object v1, Lcom/paypal/android/sdk/ao;->h:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v12, :cond_48

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    :goto_e
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->k:Ljava/lang/String;

    :cond_13
    sget-object v1, Lcom/paypal/android/sdk/ao;->i:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->l:Ljava/lang/String;

    :cond_14
    sget-object v1, Lcom/paypal/android/sdk/ao;->j:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->m:Ljava/lang/String;

    :cond_15
    sget-object v1, Lcom/paypal/android/sdk/ao;->k:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/paypal/android/sdk/t;->n:J

    :cond_16
    sget-object v1, Lcom/paypal/android/sdk/ao;->l:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/paypal/android/sdk/ap;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->o:Ljava/lang/String;

    :cond_17
    sget-object v1, Lcom/paypal/android/sdk/ao;->V:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/paypal/android/sdk/ap;->a(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->p:Ljava/util/List;

    :cond_18
    sget-object v1, Lcom/paypal/android/sdk/ao;->n:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v12, :cond_49

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    :goto_f
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->r:Ljava/lang/String;

    :cond_19
    sget-object v1, Lcom/paypal/android/sdk/ao;->o:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/paypal/android/sdk/ap;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->s:Ljava/lang/String;

    :cond_1a
    sget-object v1, Lcom/paypal/android/sdk/ao;->p:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->t:Ljava/lang/String;

    :cond_1b
    sget-object v1, Lcom/paypal/android/sdk/ao;->q:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->u:Ljava/lang/String;

    :cond_1c
    sget-object v1, Lcom/paypal/android/sdk/ao;->r:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->p:Landroid/location/Location;

    if-nez v1, :cond_4a

    move-object v1, v3

    :goto_10
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->v:Landroid/location/Location;

    :cond_1d
    sget-object v1, Lcom/paypal/android/sdk/ao;->s:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-nez v7, :cond_4b

    move v1, v5

    :goto_11
    iput v1, v4, Lcom/paypal/android/sdk/t;->w:I

    :cond_1e
    sget-object v1, Lcom/paypal/android/sdk/ao;->t:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-nez v10, :cond_4c

    move-object v1, v3

    :goto_12
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->x:Ljava/lang/String;

    :cond_1f
    sget-object v1, Lcom/paypal/android/sdk/ao;->v:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->z:Ljava/lang/String;

    :cond_20
    sget-object v1, Lcom/paypal/android/sdk/ao;->x:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/paypal/android/sdk/y;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->B:Ljava/lang/String;

    :cond_21
    sget-object v1, Lcom/paypal/android/sdk/ao;->y:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->C:Ljava/lang/Boolean;

    :cond_22
    sget-object v1, Lcom/paypal/android/sdk/ao;->z:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->D:Ljava/lang/String;

    :cond_23
    sget-object v1, Lcom/paypal/android/sdk/ao;->Q:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v12, :cond_4d

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    :goto_13
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->E:Ljava/lang/String;

    :cond_24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_25

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->Z:Ljava/lang/String;

    :cond_25
    sget-object v1, Lcom/paypal/android/sdk/ao;->A:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v4, Lcom/paypal/android/sdk/t;->F:Ljava/lang/Boolean;

    :cond_26
    sget-object v1, Lcom/paypal/android/sdk/ao;->B:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-nez v10, :cond_4e

    move-object v1, v3

    :goto_14
    iput-object v1, v4, Lcom/paypal/android/sdk/t;->G:Ljava/lang/String;

    :cond_27
    sget-object v1, Lcom/paypal/android/sdk/ao;->C:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v1}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v12, :cond_4f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_15
    iput-object v0, v4, Lcom/paypal/android/sdk/t;->H:Ljava/lang/String;

    :cond_28
    sget-object v0, Lcom/paypal/android/sdk/ao;->D:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/t;->I:J

    :cond_29
    sget-object v0, Lcom/paypal/android/sdk/ao;->E:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/paypal/android/sdk/ap;->c()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/t;->J:J

    :cond_2a
    sget-object v0, Lcom/paypal/android/sdk/ao;->F:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->K:Ljava/lang/String;

    :cond_2b
    sget-object v0, Lcom/paypal/android/sdk/ao;->W:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->L:Ljava/lang/Boolean;

    :cond_2c
    sget-object v0, Lcom/paypal/android/sdk/ao;->X:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->M:Ljava/lang/Integer;

    :cond_2d
    sget-object v0, Lcom/paypal/android/sdk/ao;->J:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/paypal/android/sdk/cd;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->S:Ljava/lang/Boolean;

    :cond_2e
    sget-object v0, Lcom/paypal/android/sdk/ao;->K:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/paypal/android/sdk/aa;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->T:Ljava/lang/Boolean;

    :cond_2f
    sget-object v0, Lcom/paypal/android/sdk/ao;->m:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/q;->f()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/paypal/android/sdk/ap;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v2, "knownApps error"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_50

    :goto_17
    iput-object v3, v4, Lcom/paypal/android/sdk/t;->q:Ljava/util/List;

    :cond_32
    sget-object v0, Lcom/paypal/android/sdk/ao;->O:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/t;->V:J

    :cond_33
    sget-object v0, Lcom/paypal/android/sdk/ao;->P:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/u;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/paypal/android/sdk/t;->W:J

    :cond_34
    iget-object v0, p0, Lcom/paypal/android/sdk/u;->o:Ljava/util/Map;

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->ah:Ljava/util/Map;

    sget-object v0, Lcom/paypal/android/sdk/ao;->S:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->aa:Ljava/lang/String;

    :cond_35
    sget-object v0, Lcom/paypal/android/sdk/ao;->T:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/paypal/android/sdk/ap;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->ac:Ljava/lang/String;

    :cond_36
    sget-object v0, Lcom/paypal/android/sdk/ao;->U:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/paypal/android/sdk/ap;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->ab:Ljava/lang/String;

    :cond_37
    sget-object v0, Lcom/paypal/android/sdk/ao;->v:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->y:Ljava/lang/String;

    :cond_38
    sget-object v0, Lcom/paypal/android/sdk/ao;->Y:Lcom/paypal/android/sdk/ao;

    invoke-virtual {v11, v0}, Lcom/paypal/android/sdk/an;->a(Lcom/paypal/android/sdk/ao;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, v4, Lcom/paypal/android/sdk/t;->Q:I

    sget-object v1, Lcom/paypal/android/sdk/z;->b:Lcom/paypal/android/sdk/z;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/z;->a()I

    move-result v1

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->ad:Ljava/lang/String;

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v4, Lcom/paypal/android/sdk/t;->I:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/paypal/android/sdk/t;->af:Ljava/lang/String;

    :goto_18
    move-object v3, v4

    goto/16 :goto_0

    :cond_3a
    move-object v10, v3

    goto/16 :goto_1

    :cond_3b
    move-object v9, v3

    goto/16 :goto_2

    :cond_3c
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_3

    :pswitch_0
    const-string v2, "none"

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_4

    :pswitch_1
    const-string v2, "gsm"

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v8, :cond_3d

    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    const-class v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-static {v2, v6}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_19
    move-object v6, v3

    move-object v7, v2

    goto/16 :goto_4

    :cond_3d
    move-object v2, v3

    goto :goto_19

    :catch_1
    move-exception v2

    :try_start_4
    sget-object v6, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v7, "Known SecurityException on some devices: "

    invoke-static {v6, v7, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_4

    :pswitch_2
    const-string v2, "cdma"

    iput-object v2, v4, Lcom/paypal/android/sdk/t;->A:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v8, :cond_3e

    :try_start_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    const-class v6, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-static {v2, v6}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1a
    move-object v6, v2

    move-object v7, v3

    goto/16 :goto_4

    :cond_3e
    move-object v2, v3

    goto :goto_1a

    :catch_2
    move-exception v2

    :try_start_6
    sget-object v6, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v7, "Known SecurityException on some devices: "

    invoke-static {v6, v7, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_4

    :cond_3f
    iget-object v2, p0, Lcom/paypal/android/sdk/u;->s:Lcom/paypal/android/sdk/z;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/z;->a()I

    move-result v2

    iput v2, v4, Lcom/paypal/android/sdk/t;->Q:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v2, "Unknown error in RiskComponent"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_40
    :try_start_7
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    goto/16 :goto_6

    :cond_41
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    goto/16 :goto_7

    :cond_42
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    goto/16 :goto_8

    :cond_43
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    :cond_44
    move-object v1, v3

    goto/16 :goto_a

    :cond_45
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    goto/16 :goto_b

    :cond_46
    iget-object v1, p0, Lcom/paypal/android/sdk/u;->k:Lcom/paypal/android/sdk/q;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/q;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :cond_47
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    :cond_48
    move-object v1, v3

    goto/16 :goto_e

    :cond_49
    move-object v1, v3

    goto/16 :goto_f

    :cond_4a
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->p:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto/16 :goto_10

    :cond_4b
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    goto/16 :goto_11

    :cond_4c
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_12

    :cond_4d
    move-object v1, v3

    goto/16 :goto_13

    :cond_4e
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    goto/16 :goto_14

    :cond_4f
    move-object v0, v3

    goto/16 :goto_15

    :cond_50
    move-object v3, v1

    goto/16 :goto_17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/z;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v0, "RISK_MANAGER_CONF_URL"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/ap;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "RISK_MANAGER_IS_START_ASYNC_SERVICE"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5, v0, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/u;->v:Z

    const-string v0, "RISK_MANAGER_PAIRING_ID"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/ap;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "RISK_MANAGER_NOTIF_TOKEN"

    invoke-static {p5, v0, v8}, Lcom/paypal/android/sdk/ap;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->w:Ljava/lang/String;

    const-class v0, Lcom/paypal/android/sdk/ae;

    const-string v3, "RISK_MANAGER_NETWORK_ADAPTER"

    new-instance v4, Lcom/paypal/android/sdk/ah;

    invoke-direct {v4}, Lcom/paypal/android/sdk/ah;-><init>()V

    invoke-static {p5, v0, v3, v4}, Lcom/paypal/android/sdk/ap;->a(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/ae;

    sput-object v0, Lcom/paypal/android/sdk/u;->a:Lcom/paypal/android/sdk/ae;

    const-string v0, "RISK_MANAGER_IS_DISABLE_REMOTE_CONFIG"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p5, v0, v3}, Lcom/paypal/android/sdk/ap;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v7

    iput-object p1, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/paypal/android/sdk/ap;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->d:Ljava/lang/String;

    if-nez p3, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/z;->a:Lcom/paypal/android/sdk/z;

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->s:Lcom/paypal/android/sdk/z;

    :goto_0
    iput-object p4, p0, Lcom/paypal/android/sdk/u;->t:Ljava/lang/String;

    iput-object v8, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    iput-object v8, p0, Lcom/paypal/android/sdk/u;->m:Lcom/paypal/android/sdk/t;

    iput v6, p0, Lcom/paypal/android/sdk/u;->h:I

    iput v6, p0, Lcom/paypal/android/sdk/u;->g:I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/paypal/android/sdk/u;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    :goto_1
    if-nez v1, :cond_4

    :try_start_0
    const-string v0, "https://www.paypalobjects.com/webstatic/risk/dyson_config_android_v3.json"

    :goto_2
    iput-object v0, p0, Lcom/paypal/android/sdk/u;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/u;->f()V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->r:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/paypal/android/sdk/x;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/x;-><init>(Lcom/paypal/android/sdk/u;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/paypal/android/sdk/ap;->a(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/paypal/android/sdk/u;->onLocationChanged(Landroid/location/Location;)V

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network"

    const-wide/32 v2, 0x36ee80

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->j()Ljava/lang/String;

    new-instance v1, Lcom/paypal/android/sdk/q;

    iget-object v2, p0, Lcom/paypal/android/sdk/u;->c:Landroid/content/Context;

    if-nez v7, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-direct {v1, v2, v0}, Lcom/paypal/android/sdk/q;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0, v1}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/q;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    return-object v0

    :cond_2
    iput-object p3, p0, Lcom/paypal/android/sdk/u;->s:Lcom/paypal/android/sdk/z;

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    const-string v3, "PRD"

    const-string v4, "Using custom pairing id"

    invoke-static {v0, v3, v4}, Lcom/paypal/android/sdk/ap;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->u:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    invoke-static {v1, v8, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_4
.end method

.method public final a(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load Configuration URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dyson Async URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/paypal/android/sdk/q;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/q;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LogRiskMetadataRequest Server returned: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    const-string v2, "responseEnvelope.ack"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    :try_start_3
    const-string v2, "Success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v2, "LogRiskMetadataRequest Success"

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :sswitch_5
    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beacon returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v2, "LoadConfigurationRequest failed."

    invoke-static {v0, v2}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    sget-object v2, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "LogRiskMetadataRequest failed."

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v2, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "BeaconRequest failed "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0xa -> :sswitch_0
        0xb -> :sswitch_6
        0xc -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_8
        0x16 -> :sswitch_5
    .end sparse-switch
.end method

.method public final b()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/paypal/android/sdk/w;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/w;-><init>(Lcom/paypal/android/sdk/u;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/y;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->l()Lcom/paypal/android/sdk/t;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/t;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/paypal/android/sdk/y;->a()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/u;->l()Lcom/paypal/android/sdk/t;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    iget-object v0, p0, Lcom/paypal/android/sdk/u;->l:Lcom/paypal/android/sdk/t;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/paypal/android/sdk/u;->a(Lcom/paypal/android/sdk/t;Lcom/paypal/android/sdk/t;)V

    return-void
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    const-string v1, "Host activity detected"

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/paypal/android/sdk/u;->i:J

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/paypal/android/sdk/u;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/u;->p:Landroid/location/Location;

    sget-object v0, Lcom/paypal/android/sdk/u;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location Update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
