.class public Lcom/b/b/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cx$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/b/ax$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Lcom/b/b/ax;

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Z

.field private g:Landroid/location/Location;

.field private h:J

.field private i:Landroid/location/LocationManager;

.field private j:Lcom/b/b/ax$a;

.field private k:Landroid/location/Location;

.field private l:Z

.field private m:I

.field private n:Lcom/b/b/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/b/bp",
            "<",
            "Lcom/b/b/cz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32
    sput v0, Lcom/b/b/ax;->a:I

    .line 33
    sput v0, Lcom/b/b/ax;->b:I

    .line 34
    sput v0, Lcom/b/b/ax;->c:I

    .line 54
    const-class v0, Lcom/b/b/ax;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/b/ax;->h:J

    .line 73
    iput-boolean v2, p0, Lcom/b/b/ax;->l:Z

    .line 74
    iput v2, p0, Lcom/b/b/ax;->m:I

    .line 76
    new-instance v0, Lcom/b/b/ax$1;

    invoke-direct {v0, p0}, Lcom/b/b/ax$1;-><init>(Lcom/b/b/ax;)V

    iput-object v0, p0, Lcom/b/b/ax;->n:Lcom/b/b/bp;

    .line 88
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 89
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/b/b/ax;->i:Landroid/location/LocationManager;

    .line 90
    new-instance v0, Lcom/b/b/ax$a;

    invoke-direct {v0, p0}, Lcom/b/b/ax$a;-><init>(Lcom/b/b/ax;)V

    iput-object v0, p0, Lcom/b/b/ax;->j:Lcom/b/b/ax$a;

    .line 92
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v1

    .line 94
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/ax;->f:Z

    .line 95
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 96
    sget-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportLocation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/b/b/ax;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "ExplicitLocation"

    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/b/b/ax;->g:Landroid/location/Location;

    .line 99
    const-string v0, "ExplicitLocation"

    invoke-virtual {v1, v0, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 100
    sget-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, ExplicitLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/ax;->g:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/b/b/ax;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/b/b/ax;->h:J

    return-wide v0
.end method

.method static synthetic a(Lcom/b/b/ax;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/b/b/ax;->k:Landroid/location/Location;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/b/b/ax;->i:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 272
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized a()Lcom/b/b/ax;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/b/b/ax;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/b/ax;->d:Lcom/b/b/ax;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/b/b/ax;

    invoke-direct {v0}, Lcom/b/b/ax;-><init>()V

    sput-object v0, Lcom/b/b/ax;->d:Lcom/b/b/ax;

    .line 42
    :cond_0
    sget-object v0, Lcom/b/b/ax;->d:Lcom/b/b/ax;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 253
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/b/b/ax;->a:I

    return v0
.end method

.method static synthetic b(Lcom/b/b/ax;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/b/b/ax;->h()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 257
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/b/b/ax;->c:I

    return v0
.end method

.method static synthetic c(Lcom/b/b/ax;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/b/b/ax;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/b/ax;->m:I

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 229
    iget-boolean v0, p0, Lcom/b/b/ax;->l:Z

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/b/b/ax;->i:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/b/b/ax;->j:Lcom/b/b/ax$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 234
    iput v2, p0, Lcom/b/b/ax;->m:I

    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/b/ax;->h:J

    .line 3281
    sget-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    const-string v1, "Unregister location timer"

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3282
    invoke-static {}, Lcom/b/b/da;->a()Lcom/b/b/da;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/ax;->n:Lcom/b/b/bp;

    invoke-virtual {v0, v1}, Lcom/b/b/da;->b(Lcom/b/b/bp;)V

    .line 240
    iput-boolean v2, p0, Lcom/b/b/ax;->l:Z

    .line 241
    sget-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    const-string v1, "LocationProvider stopped"

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 320
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 330
    const/4 v0, 0x6

    sget-object v1, Lcom/b/b/ax;->e:Ljava/lang/String;

    const-string v2, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key."

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_1
    return-void

    .line 320
    :sswitch_0
    const-string v1, "ReportLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ExplicitLocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/ax;->f:Z

    .line 323
    sget-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ReportLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/b/b/ax;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :pswitch_1
    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lcom/b/b/ax;->g:Landroid/location/Location;

    .line 327
    sget-object v0, Lcom/b/b/ax;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ExplicitLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/b/ax;->g:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        -0x33814ed7 -> :sswitch_0
        -0x11ecc5d7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized d()V
    .locals 7

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/b/b/ax;->e:Ljava/lang/String;

    const-string v2, "Location update requested"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/b/b/ax;->m:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 1188
    iget-boolean v0, p0, Lcom/b/b/ax;->l:Z

    if-nez v0, :cond_3

    .line 1192
    iget-boolean v0, p0, Lcom/b/b/ax;->f:Z

    if-eqz v0, :cond_3

    .line 1196
    iget-object v0, p0, Lcom/b/b/ax;->g:Landroid/location/Location;

    if-nez v0, :cond_3

    .line 1200
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 1201
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1202
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1206
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/b/b/ax;->m:I

    .line 1210
    const/4 v1, 0x0

    .line 1211
    invoke-static {v0}, Lcom/b/b/ax;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2245
    const-string v1, "passive"

    .line 2261
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2262
    iget-object v0, p0, Lcom/b/b/ax;->i:Landroid/location/LocationManager;

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/b/ax;->j:Lcom/b/b/ax$a;

    .line 2263
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 2262
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1218
    :cond_2
    invoke-direct {p0, v1}, Lcom/b/b/ax;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/b/b/ax;->k:Landroid/location/Location;

    .line 1221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/b/ax;->h:J

    .line 2276
    const/4 v0, 0x4

    sget-object v1, Lcom/b/b/ax;->e:Ljava/lang/String;

    const-string v2, "Register location timer"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2277
    invoke-static {}, Lcom/b/b/da;->a()Lcom/b/b/da;

    move-result-object v0

    iget-object v1, p0, Lcom/b/b/ax;->n:Lcom/b/b/bp;

    invoke-virtual {v0, v1}, Lcom/b/b/da;->a(Lcom/b/b/bp;)V

    .line 1224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/ax;->l:Z

    .line 1225
    const/4 v0, 0x4

    sget-object v1, Lcom/b/b/ax;->e:Ljava/lang/String;

    const-string v2, "LocationProvider started"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_3
    monitor-exit p0

    return-void

    .line 1213
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/b/b/ax;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2249
    const-string v1, "network"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 3

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/b/b/ax;->e:Ljava/lang/String;

    const-string v2, "Stop update location requested"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/b/b/ax;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 141
    .line 143
    iget-object v1, p0, Lcom/b/b/ax;->g:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/b/b/ax;->g:Landroid/location/Location;

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    iget-boolean v1, p0, Lcom/b/b/ax;->f:Z

    if-eqz v1, :cond_4

    .line 151
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    .line 3097
    iget-object v1, v1, Lcom/b/b/bg;->a:Landroid/content/Context;

    .line 152
    invoke-static {v1}, Lcom/b/b/ax;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    invoke-static {v1}, Lcom/b/b/ax;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :cond_2
    invoke-static {v1}, Lcom/b/b/ax;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3245
    const-string v1, "passive"

    .line 164
    :goto_1
    if-eqz v1, :cond_4

    .line 165
    invoke-direct {p0, v1}, Lcom/b/b/ax;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    iput-object v0, p0, Lcom/b/b/ax;->k:Landroid/location/Location;

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/b/b/ax;->k:Landroid/location/Location;

    .line 175
    :cond_4
    const/4 v1, 0x4

    sget-object v2, Lcom/b/b/ax;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocation() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_5
    invoke-static {v1}, Lcom/b/b/ax;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3249
    const-string v1, "network"

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method
