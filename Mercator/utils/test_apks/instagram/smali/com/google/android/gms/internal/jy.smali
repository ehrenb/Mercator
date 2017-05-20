.class public Lcom/google/android/gms/internal/jy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation


# instance fields
.field a:J

.field b:J

.field c:I

.field d:I

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/jy;->a:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/jy;->b:J

    iput v0, p0, Lcom/google/android/gms/internal/jy;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/jy;->d:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/jy;->f:I

    iput v1, p0, Lcom/google/android/gms/internal/jy;->g:I

    iput-object p1, p0, Lcom/google/android/gms/internal/jy;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Theme.Translucent"

    const-string v3, "style"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->c(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to fetch AdActivity theme"

    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->d(Ljava/lang/String;)V

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jy;->b:J

    return-wide v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/jy;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v4, p0, Lcom/google/android/gms/internal/jy;->b:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v4, p0, Lcom/google/android/gms/internal/jy;->a:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "preqs"

    iget v3, p0, Lcom/google/android/gms/internal/jy;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "preqs_in_session"

    iget v3, p0, Lcom/google/android/gms/internal/jy;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pclick"

    iget v3, p0, Lcom/google/android/gms/internal/jy;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pimp"

    iget v3, p0, Lcom/google/android/gms/internal/jy;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "support_transparent_background"

    invoke-static {p1}, Lcom/google/android/gms/internal/jy;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/jy;->d:I

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/jy;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->n()J

    move-result-wide v2

    sub-long v2, p2, v2

    sget-object v0, Lcom/google/android/gms/internal/cw;->aF:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jy;->a(I)V

    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/jy;->b:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/jy;->b:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/jy;->a:J

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    const-string v2, "gw"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    monitor-exit v1

    :goto_2
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->i()Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jy;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/jy;->a:J

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/jy;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jy;->c:I

    iget v0, p0, Lcom/google/android/gms/internal/jy;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jy;->d:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/jy;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jy;->f:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/jy;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jy;->g:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jy;->d:I

    return v0
.end method
