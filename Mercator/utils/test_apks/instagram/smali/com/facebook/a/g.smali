.class public Lcom/facebook/a/g;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static e:Lcom/facebook/a/g$a;

.field private static f:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g;->a:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/facebook/a/g$a;->a:Lcom/facebook/a/g$a;

    sput-object v0, Lcom/facebook/a/g;->e:Lcom/facebook/a/g$a;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 821
    .line 822
    invoke-static {p1}, Lcom/facebook/c/ab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 825
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 832
    iput-object p1, p0, Lcom/facebook/a/g;->b:Ljava/lang/String;

    .line 834
    if-nez p3, :cond_0

    .line 835
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 839
    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 840
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    :cond_1
    new-instance v0, Lcom/facebook/a/a;

    invoke-direct {v0, p3}, Lcom/facebook/a/a;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/a;

    .line 852
    :goto_0
    invoke-static {}, Lcom/facebook/a/g;->g()V

    .line 853
    return-void

    .line 845
    :cond_2
    if-nez p2, :cond_3

    .line 847
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;

    move-result-object v0

    .line 846
    invoke-static {v0}, Lcom/facebook/c/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 849
    :cond_3
    new-instance v0, Lcom/facebook/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/a;

    goto :goto_0
.end method

.method public static a()Lcom/facebook/a/g$a;
    .locals 2

    .prologue
    .line 467
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->e:Lcom/facebook/a/g$a;

    monitor-exit v1

    return-object v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/a/g;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    new-instance v0, Lcom/facebook/a/g;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/g;
    .locals 2

    .prologue
    .line 445
    new-instance v0, Lcom/facebook/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/a/g;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/facebook/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-static {}, Lcom/facebook/a/b;->a()V

    .line 228
    if-nez p1, :cond_1

    .line 229
    invoke-static {}, Lcom/facebook/h;->j()Ljava/lang/String;

    move-result-object p1

    .line 235
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-static {p0, p1}, Lcom/facebook/a/a/a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/a/c;Lcom/facebook/a/a;)V
    .locals 3

    .prologue
    .line 916
    invoke-static {p2, p1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/c;)V

    .line 919
    invoke-virtual {p1}, Lcom/facebook/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/a/g;->h:Z

    if-nez v0, :cond_0

    .line 920
    invoke-virtual {p1}, Lcom/facebook/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    if-ne v0, v1, :cond_1

    .line 921
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/a/g;->h:Z

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    sget-object v0, Lcom/facebook/n;->e:Lcom/facebook/n;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 892
    :try_start_0
    new-instance v0, Lcom/facebook/a/c;

    iget-object v1, p0, Lcom/facebook/a/g;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 899
    invoke-static {}, Lcom/facebook/h;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/a;

    invoke-static {v1, v0, v2}, Lcom/facebook/a/g;->a(Landroid/content/Context;Lcom/facebook/a/c;Lcom/facebook/a/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    .line 911
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 902
    sget-object v1, Lcom/facebook/n;->e:Lcom/facebook/n;

    const-string v2, "AppEvents"

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    .line 903
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 902
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 905
    :catch_1
    move-exception v0

    .line 907
    sget-object v1, Lcom/facebook/n;->e:Lcom/facebook/n;

    const-string v2, "AppEvents"

    const-string v3, "Invalid app event: %s"

    new-array v4, v8, [Ljava/lang/Object;

    .line 908
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 907
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/c/t;->a(Lcom/facebook/n;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1035
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1036
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1037
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1039
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1042
    const-string v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    .line 1043
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    .line 1047
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1048
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/a/g;->g:Ljava/lang/String;

    .line 1049
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1050
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1053
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_1
    sget-object v0, Lcom/facebook/a/g;->g:Ljava/lang/String;

    return-object v0

    .line 1053
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 674
    invoke-static {}, Lcom/facebook/a/e;->a()V

    .line 675
    return-void
.end method

.method static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 698
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 699
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->i:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Lcom/facebook/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1020
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 1021
    invoke-static {}, Lcom/facebook/a/g;->g()V

    .line 1024
    :cond_0
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static g()V
    .locals 7

    .prologue
    .line 856
    sget-object v1, Lcom/facebook/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 857
    :try_start_0
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 858
    monitor-exit v1

    .line 883
    :goto_0
    return-void

    .line 860
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 861
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    new-instance v1, Lcom/facebook/a/g$1;

    invoke-direct {v1}, Lcom/facebook/a/g$1;-><init>()V

    .line 877
    sget-object v0, Lcom/facebook/a/g;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 565
    .line 567
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x0

    .line 570
    invoke-static {}, Lcom/facebook/a/a/a;->a()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 565
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 571
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 535
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 540
    invoke-static {}, Lcom/facebook/a/a/a;->a()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 535
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 541
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 796
    const/4 v4, 0x1

    .line 801
    invoke-static {}, Lcom/facebook/a/a/a;->a()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 796
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 802
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 662
    sget-object v0, Lcom/facebook/a/h;->a:Lcom/facebook/a/h;

    invoke-static {v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/h;)V

    .line 663
    return-void
.end method
