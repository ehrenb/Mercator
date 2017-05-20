.class public final Lcom/facebook/h;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/concurrent/Executor;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:I

.field private static volatile h:Ljava/lang/String;

.field private static i:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile j:Z

.field private static k:Z

.field private static l:Lcom/facebook/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/c/s",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Landroid/content/Context;

.field private static n:I

.field private static final o:Ljava/lang/Object;

.field private static final p:I

.field private static q:Ljava/lang/String;

.field private static final r:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/util/concurrent/ThreadFactory;

.field private static t:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    const-class v0, Lcom/facebook/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->a:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/n;

    sget-object v2, Lcom/facebook/n;->f:Lcom/facebook/n;

    aput-object v2, v1, v4

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/h;->b:Ljava/util/HashSet;

    .line 72
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/h;->h:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/h;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    sput-boolean v4, Lcom/facebook/h;->j:Z

    .line 75
    sput-boolean v4, Lcom/facebook/h;->k:Z

    .line 81
    const v0, 0xface

    sput v0, Lcom/facebook/h;->n:I

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/h;->o:Ljava/lang/Object;

    .line 83
    sget v0, Lcom/facebook/s$f;->com_facebook_activity_theme:I

    sput v0, Lcom/facebook/h;->p:I

    .line 84
    invoke-static {}, Lcom/facebook/c/y;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->q:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/h;->r:Ljava/util/concurrent/BlockingQueue;

    .line 94
    new-instance v0, Lcom/facebook/h$1;

    invoke-direct {v0}, Lcom/facebook/h$1;-><init>()V

    sput-object v0, Lcom/facebook/h;->s:Ljava/util/concurrent/ThreadFactory;

    .line 129
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->t:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 766
    if-eqz p0, :cond_0

    :goto_0
    sput p0, Lcom/facebook/h;->g:I

    .line 767
    return-void

    .line 766
    :cond_0
    sget p0, Lcom/facebook/h;->p:I

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 177
    const-class v0, Lcom/facebook/h;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/h;->a(Landroid/content/Context;Lcom/facebook/h$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit v0

    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/facebook/h$a;)V
    .locals 3

    .prologue
    .line 190
    const-class v1, Lcom/facebook/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/h;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Lcom/facebook/h$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 197
    :cond_1
    :try_start_1
    const-string v0, "applicationContext"

    invoke-static {p0, v0}, Lcom/facebook/c/ac;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/c/ac;->b(Landroid/content/Context;Z)V

    .line 202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/c/ac;->a(Landroid/content/Context;Z)V

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->m:Landroid/content/Context;

    .line 207
    sget-object v0, Lcom/facebook/h;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/h;->c(Landroid/content/Context;)V

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->t:Ljava/lang/Boolean;

    .line 214
    sget-object v0, Lcom/facebook/h;->m:Landroid/content/Context;

    sget-object v2, Lcom/facebook/h;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/c/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/facebook/c/v;->b()V

    .line 218
    sget-object v0, Lcom/facebook/h;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/c/c;->a(Landroid/content/Context;)Lcom/facebook/c/c;

    .line 220
    new-instance v0, Lcom/facebook/c/s;

    new-instance v2, Lcom/facebook/h$2;

    invoke-direct {v2}, Lcom/facebook/h$2;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/c/s;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/facebook/h;->l:Lcom/facebook/c/s;

    .line 228
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/h$3;

    invoke-direct {v2, p1, p0}, Lcom/facebook/h$3;-><init>(Lcom/facebook/h$a;Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 252
    invoke-static {}, Lcom/facebook/h;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    invoke-static {}, Lcom/facebook/h;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/h$4;

    invoke-direct {v2, v0, p1}, Lcom/facebook/h$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 260
    const-class v1, Lcom/facebook/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/h;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/facebook/n;)Z
    .locals 2

    .prologue
    .line 331
    sget-object v1, Lcom/facebook/h;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-static {}, Lcom/facebook/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/h;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/k;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 483
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 484
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both context and applicationId must be non-null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 547
    const-string v0, "Facebook-publish"

    invoke-static {v0, v2}, Lcom/facebook/c/ab;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 548
    new-instance v0, Lcom/facebook/k;

    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v1, v2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v1, v3}, Lcom/facebook/k;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    :goto_0
    return-object v0

    .line 486
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/facebook/c/b;->a(Landroid/content/Context;)Lcom/facebook/c/b;

    move-result-object v0

    .line 487
    const-string v2, "com.facebook.sdk.attributionTracking"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 491
    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 495
    :try_start_2
    sget-object v8, Lcom/facebook/c/a$a;->a:Lcom/facebook/c/a$a;

    .line 498
    invoke-static {p0}, Lcom/facebook/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 499
    invoke-static {p0}, Lcom/facebook/h;->b(Landroid/content/Context;)Z

    move-result v10

    .line 495
    invoke-static {v8, v0, v9, v10, p0}, Lcom/facebook/c/a;->a(Lcom/facebook/c/a$a;Lcom/facebook/c/b;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 505
    :try_start_3
    const-string v8, "%s/activities"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 506
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v8, v0, v10}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    .line 508
    cmp-long v0, v6, v12

    if-eqz v0, :cond_3

    .line 511
    if-eqz v5, :cond_5

    .line 512
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    move-object v2, v0

    .line 518
    :goto_2
    if-nez v2, :cond_2

    .line 519
    :try_start_5
    const-string v0, "true"

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/j;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/GraphRequest;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-direct {v3, v4}, Lcom/facebook/j;-><init>([Lcom/facebook/GraphRequest;)V

    invoke-static {v0, v2, v3}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/j;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 523
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    goto/16 :goto_0

    .line 501
    :catch_1
    move-exception v0

    .line 502
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "An error occurred while publishing install."

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 515
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 525
    :cond_2
    new-instance v0, Lcom/facebook/k;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/facebook/k;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 530
    :cond_3
    invoke-virtual {v8}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/k;

    move-result-object v0

    .line 533
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 535
    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 538
    invoke-virtual {v0}, Lcom/facebook/k;->b()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 539
    invoke-virtual {v0}, Lcom/facebook/k;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 541
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/facebook/h;->j:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 571
    const-string v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 573
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 612
    if-nez p0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 618
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 624
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/facebook/h;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 629
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 630
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 631
    check-cast v0, Ljava/lang/String;

    .line 632
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 633
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->d:Ljava/lang/String;

    .line 644
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/h;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 645
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->e:Ljava/lang/String;

    .line 648
    :cond_3
    sget-object v0, Lcom/facebook/h;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 649
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/h;->f:Ljava/lang/String;

    .line 652
    :cond_4
    sget v0, Lcom/facebook/h;->g:I

    if-nez v0, :cond_0

    .line 653
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/h;->a(I)V

    goto :goto_0

    .line 635
    :cond_5
    sput-object v0, Lcom/facebook/h;->d:Ljava/lang/String;

    goto :goto_1

    .line 637
    :cond_6
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 638
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/facebook/h;->k:Z

    return v0
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 384
    sget-object v1, Lcom/facebook/h;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_0
    sget-object v0, Lcom/facebook/h;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 386
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/h;->c:Ljava/util/concurrent/Executor;

    .line 388
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    sget-object v0, Lcom/facebook/h;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/facebook/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 436
    sget-object v0, Lcom/facebook/h;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/facebook/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    const-string v0, "4.17.0"

    return-object v0
.end method

.method public static i()J
    .locals 2

    .prologue
    .line 596
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 597
    sget-object v0, Lcom/facebook/h;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 704
    sget-object v0, Lcom/facebook/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 741
    sget-object v0, Lcom/facebook/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 757
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 758
    sget v0, Lcom/facebook/h;->g:I

    return v0
.end method

.method public static m()Ljava/io/File;
    .locals 1

    .prologue
    .line 776
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 777
    sget-object v0, Lcom/facebook/h;->l:Lcom/facebook/c/s;

    invoke-virtual {v0}, Lcom/facebook/c/s;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static n()I
    .locals 1

    .prologue
    .line 795
    invoke-static {}, Lcom/facebook/c/ac;->a()V

    .line 796
    sget v0, Lcom/facebook/h;->n:I

    return v0
.end method

.method static synthetic o()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/h;->m:Landroid/content/Context;

    return-object v0
.end method
