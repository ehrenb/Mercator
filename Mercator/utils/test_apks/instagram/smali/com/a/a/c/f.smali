.class public Lcom/a/a/c/f;
.super Lio/fabric/sdk/android/h;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/f$c;,
        Lcom/a/a/c/f$b;,
        Lcom/a/a/c/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/d;
    a = {
        Lcom/a/a/c/a/a;
    }
.end annotation


# instance fields
.field private A:Lio/fabric/sdk/android/services/network/d;

.field private B:Lcom/a/a/c/g;

.field private C:Lcom/a/a/c/a/a;

.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:Lio/fabric/sdk/android/services/d/a;

.field private k:Lcom/a/a/c/h;

.field private l:Lcom/a/a/c/h;

.field private m:Lcom/a/a/c/i;

.field private n:Lcom/a/a/c/k;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:F

.field private y:Z

.field private final z:Lcom/a/a/c/y;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/a/a/c/f;-><init>(FLcom/a/a/c/i;Lcom/a/a/c/y;Z)V

    .line 201
    return-void
.end method

.method constructor <init>(FLcom/a/a/c/i;Lcom/a/a/c/y;Z)V
    .locals 6

    .prologue
    .line 205
    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/n;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/a/c/f;-><init>(FLcom/a/a/c/i;Lcom/a/a/c/y;ZLjava/util/concurrent/ExecutorService;)V

    .line 207
    return-void
.end method

.method constructor <init>(FLcom/a/a/c/i;Lcom/a/a/c/y;ZLjava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/a/a/c/f;->o:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/a/a/c/f;->p:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/a/a/c/f;->q:Ljava/lang/String;

    .line 215
    iput p1, p0, Lcom/a/a/c/f;->x:F

    .line 216
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/a/a/c/f;->m:Lcom/a/a/c/i;

    .line 217
    iput-object p3, p0, Lcom/a/a/c/f;->z:Lcom/a/a/c/y;

    .line 218
    iput-boolean p4, p0, Lcom/a/a/c/f;->y:Z

    .line 219
    new-instance v0, Lcom/a/a/c/g;

    invoke-direct {v0, p5}, Lcom/a/a/c/g;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/a/a/c/f;->B:Lcom/a/a/c/g;

    .line 221
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/c/f;->a:J

    .line 223
    return-void

    .line 216
    :cond_0
    new-instance p2, Lcom/a/a/c/f$c;

    invoke-direct {p2, v0}, Lcom/a/a/c/f$c;-><init>(Lcom/a/a/c/f$1;)V

    goto :goto_0
.end method

.method static B()Lio/fabric/sdk/android/services/e/p;
    .locals 1

    .prologue
    .line 1031
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->b()Lio/fabric/sdk/android/services/e/t;

    move-result-object v0

    .line 1032
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lio/fabric/sdk/android/services/e/t;->b:Lio/fabric/sdk/android/services/e/p;

    goto :goto_0
.end method

.method private J()V
    .locals 4

    .prologue
    .line 789
    new-instance v1, Lcom/a/a/c/f$1;

    invoke-direct {v1, p0}, Lcom/a/a/c/f$1;-><init>(Lcom/a/a/c/f;)V

    .line 801
    invoke-virtual {p0}, Lcom/a/a/c/f;->I()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    .line 802
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/concurrency/g;->a(Lio/fabric/sdk/android/services/concurrency/l;)V

    goto :goto_0

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/c/f;->F()Lio/fabric/sdk/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 807
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 820
    :goto_1
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 815
    :catch_1
    move-exception v0

    .line 816
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 817
    :catch_2
    move-exception v0

    .line 818
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private K()V
    .locals 4

    .prologue
    .line 971
    iget-object v0, p0, Lcom/a/a/c/f;->B:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/f$b;

    iget-object v2, p0, Lcom/a/a/c/f;->l:Lcom/a/a/c/h;

    invoke-direct {v1, v2}, Lcom/a/a/c/f$b;-><init>(Lcom/a/a/c/h;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 976
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 981
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/f;->m:Lcom/a/a/c/i;

    invoke-interface {v0}, Lcom/a/a/c/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/c/f;)Lcom/a/a/c/h;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/a/a/c/f;->k:Lcom/a/a/c/h;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z
    .locals 4

    .prologue
    .line 1000
    new-instance v0, Lcom/a/a/c/f$7;

    invoke-direct {v0, p0}, Lcom/a/a/c/f$7;-><init>(Lcom/a/a/c/f;)V

    .line 1008
    invoke-static {p1, p2, v0}, Lcom/a/a/c/e;->a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;Lcom/a/a/c/e$a;)Lcom/a/a/c/e;

    move-result-object v0

    .line 1011
    new-instance v1, Lcom/a/a/c/f$8;

    invoke-direct {v1, p0, v0}, Lcom/a/a/c/f$8;-><init>(Lcom/a/a/c/f;Lcom/a/a/c/e;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1018
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Waiting for user opt-in."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0}, Lcom/a/a/c/e;->b()V

    .line 1020
    invoke-virtual {v0}, Lcom/a/a/c/e;->c()Z

    move-result v0

    return v0
.end method

.method private a(Lcom/a/a/c/ah;)Z
    .locals 7

    .prologue
    .line 322
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Installing exception handler..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/a/a/c/k;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/c/f;->B:Lcom/a/a/c/g;

    invoke-virtual {p0}, Lcom/a/a/c/f;->D()Lio/fabric/sdk/android/services/b/o;

    move-result-object v3

    iget-object v5, p0, Lcom/a/a/c/f;->d:Lio/fabric/sdk/android/services/d/a;

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/a/a/c/k;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/c/g;Lio/fabric/sdk/android/services/b/o;Lcom/a/a/c/ah;Lio/fabric/sdk/android/services/d/a;Lcom/a/a/c/f;)V

    iput-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    .line 334
    iget-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    invoke-virtual {v0}, Lcom/a/a/c/k;->c()V

    .line 336
    iget-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 337
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Successfully installed exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "There was a problem installing the exception handler."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/c/f;Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/a/a/c/f;->a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1040
    invoke-static {}, Lcom/a/a/c/f;->e()Lcom/a/a/c/f;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    if-nez v0, :cond_1

    .line 1042
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1045
    const/4 v0, 0x0

    .line 1047
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1088
    if-nez p1, :cond_1

    .line 1089
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Configured not to require a build ID."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_0
    :goto_0
    return v0

    .line 1093
    :cond_1
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  | "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v0, "CrashlyticsCore"

    const-string v1, ".   \\ |  | /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v0, "CrashlyticsCore"

    const-string v1, ".    \\    /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     \\  /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string v0, "CrashlyticsCore"

    const-string v1, ".      \\/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v0, "CrashlyticsCore"

    const-string v1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v0, "CrashlyticsCore"

    const-string v1, ".      /\\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     /  \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v0, "CrashlyticsCore"

    const-string v1, ".    /    \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v0, "CrashlyticsCore"

    const-string v1, ".   / |  | \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v0, "CrashlyticsCore"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string v0, "CrashlyticsCore"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 1052
    if-eqz p0, :cond_0

    .line 1053
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1054
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1055
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1058
    :cond_0
    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/a/a/c/f;->z:Lcom/a/a/c/y;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/c/j;

    iget-object v1, p0, Lcom/a/a/c/f;->z:Lcom/a/a/c/y;

    invoke-direct {v0, v1}, Lcom/a/a/c/j;-><init>(Lcom/a/a/c/y;)V

    .line 306
    :goto_0
    new-instance v1, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/k;)V

    iput-object v1, p0, Lcom/a/a/c/f;->A:Lio/fabric/sdk/android/services/network/d;

    .line 307
    iget-object v1, p0, Lcom/a/a/c/f;->A:Lio/fabric/sdk/android/services/network/d;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/network/d;->a(Lio/fabric/sdk/android/services/network/f;)V

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/f;->s:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/a/a/c/f;->D()Lio/fabric/sdk/android/services/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/o;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/f;->u:Ljava/lang/String;

    .line 311
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installer package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/c/f;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/a/a/c/f;->s:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 315
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/c/f;->v:Ljava/lang/String;

    .line 316
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, "0.0"

    :goto_1
    iput-object v0, p0, Lcom/a/a/c/f;->w:Ljava/lang/String;

    .line 318
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 702
    const-class v0, Lcom/a/a/a/a;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    .line 703
    if-eqz v0, :cond_0

    .line 704
    new-instance v1, Lio/fabric/sdk/android/services/b/j$b;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/b/j$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Lio/fabric/sdk/android/services/b/j$b;)V

    .line 707
    :cond_0
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 713
    const-class v0, Lcom/a/a/a/a;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    .line 714
    if-eqz v0, :cond_0

    .line 715
    new-instance v1, Lio/fabric/sdk/android/services/b/j$a;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/b/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Lio/fabric/sdk/android/services/b/j$a;)V

    .line 718
    :cond_0
    return-void
.end method

.method public static e()Lcom/a/a/c/f;
    .locals 1

    .prologue
    .line 422
    const-class v0, Lcom/a/a/c/f;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/f;

    return-object v0
.end method


# virtual methods
.method A()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/a/a/c/f;->l:Lcom/a/a/c/h;

    invoke-virtual {v0}, Lcom/a/a/c/h;->a()Z

    .line 995
    return-void
.end method

.method a(Lio/fabric/sdk/android/services/e/t;)Lcom/a/a/c/m;
    .locals 4

    .prologue
    .line 959
    if-eqz p1, :cond_0

    .line 960
    new-instance v0, Lcom/a/a/c/n;

    invoke-virtual {p0}, Lcom/a/a/c/f;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lio/fabric/sdk/android/services/e/t;->a:Lio/fabric/sdk/android/services/e/e;

    iget-object v2, v2, Lio/fabric/sdk/android/services/e/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/c/f;->A:Lio/fabric/sdk/android/services/network/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/a/a/c/n;-><init>(Lio/fabric/sdk/android/h;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    .line 964
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    const-string v0, "2.3.14.151"

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/a/a/c/f;->y:Z

    if-eqz v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const-string v0, "prior to setting keys."

    invoke-static {v0}, Lcom/a/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    if-nez p1, :cond_3

    .line 590
    invoke-virtual {p0}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_2

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/i;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 600
    :cond_3
    invoke-static {p1}, Lcom/a/a/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    iget-object v0, p0, Lcom/a/a/c/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/a/a/c/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 603
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_4
    if-nez p2, :cond_5

    const-string v0, ""

    .line 609
    :goto_1
    iget-object v2, p0, Lcom/a/a/c/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    iget-object v1, p0, Lcom/a/a/c/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/a/a/c/k;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 608
    :cond_5
    invoke-static {p2}, Lcom/a/a/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/a/a/c/f;->y:Z

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string v0, "prior to logging exceptions."

    invoke-static {v0}, Lcom/a/a/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    if-nez p1, :cond_2

    .line 447
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/a/a/c/k;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 933
    new-instance v0, Lio/fabric/sdk/android/services/d/d;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/h;)V

    .line 934
    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/d/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 935
    return-void
.end method

.method a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 239
    iget-boolean v2, p0, Lcom/a/a/c/f;->y:Z

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    new-instance v2, Lio/fabric/sdk/android/services/b/g;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/b/g;-><init>()V

    invoke-virtual {v2, p1}, Lio/fabric/sdk/android/services/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/c/f;->t:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/a/a/c/f;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 252
    invoke-static {p1}, Lio/fabric/sdk/android/services/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/c/f;->r:Ljava/lang/String;

    .line 255
    const-string v2, "com.crashlytics.RequireBuildId"

    invoke-static {p1, v2, v1}, Lio/fabric/sdk/android/services/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 258
    iget-object v3, p0, Lcom/a/a/c/f;->r:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/a/a/c/f;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string v1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initializing Crashlytics "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v2, Lio/fabric/sdk/android/services/d/b;

    invoke-direct {v2, p0}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/h;)V

    iput-object v2, p0, Lcom/a/a/c/f;->d:Lio/fabric/sdk/android/services/d/a;

    .line 265
    new-instance v2, Lcom/a/a/c/h;

    const-string v3, "crash_marker"

    iget-object v4, p0, Lcom/a/a/c/f;->d:Lio/fabric/sdk/android/services/d/a;

    invoke-direct {v2, v3, v4}, Lcom/a/a/c/h;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/d/a;)V

    iput-object v2, p0, Lcom/a/a/c/f;->l:Lcom/a/a/c/h;

    .line 266
    new-instance v2, Lcom/a/a/c/h;

    const-string v3, "initialization_marker"

    iget-object v4, p0, Lcom/a/a/c/f;->d:Lio/fabric/sdk/android/services/d/a;

    invoke-direct {v2, v3, v4}, Lcom/a/a/c/h;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/d/a;)V

    iput-object v2, p0, Lcom/a/a/c/f;->k:Lcom/a/a/c/h;

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/a/a/c/f;->b(Landroid/content/Context;)V

    .line 272
    new-instance v2, Lcom/a/a/c/t;

    invoke-virtual {p0}, Lcom/a/a/c/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/a/a/c/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/a/a/c/f;->u()Z

    move-result v3

    .line 281
    invoke-direct {p0}, Lcom/a/a/c/f;->K()V

    .line 283
    invoke-direct {p0, v2}, Lcom/a/a/c/f;->a(Lcom/a/a/c/ah;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    if-eqz v3, :cond_3

    invoke-static {p1}, Lio/fabric/sdk/android/services/b/i;->n(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/a/a/c/f;->J()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 294
    goto/16 :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method protected b_()Z
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lio/fabric/sdk/android/h;->E()Landroid/content/Context;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/a/a/c/f;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected c()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/a/a/c/f;->s()V

    .line 352
    invoke-virtual {p0}, Lcom/a/a/c/f;->v()Lcom/a/a/c/a/a/d;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    invoke-virtual {v1, v0}, Lcom/a/a/c/k;->a(Lcom/a/a/c/a/a/d;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    invoke-virtual {v0}, Lcom/a/a/c/k;->h()V

    .line 360
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->b()Lio/fabric/sdk/android/services/e/t;

    move-result-object v0

    .line 362
    if-nez v0, :cond_1

    .line 363
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Received null settings, skipping initialization!"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {p0}, Lcom/a/a/c/f;->t()V

    .line 397
    :goto_0
    return-object v4

    .line 367
    :cond_1
    :try_start_1
    iget-object v1, v0, Lio/fabric/sdk/android/services/e/t;->d:Lio/fabric/sdk/android/services/e/m;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/e/m;->c:Z

    if-nez v1, :cond_2

    .line 368
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    invoke-virtual {p0}, Lcom/a/a/c/f;->t()V

    goto :goto_0

    .line 373
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    invoke-virtual {v1}, Lcom/a/a/c/k;->d()Z

    .line 375
    invoke-virtual {p0, v0}, Lcom/a/a/c/f;->a(Lio/fabric/sdk/android/services/e/t;)Lcom/a/a/c/m;

    move-result-object v0

    .line 376
    if-nez v0, :cond_3

    .line 377
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to create a call to upload reports."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    invoke-virtual {p0}, Lcom/a/a/c/f;->t()V

    goto :goto_0

    .line 381
    :cond_3
    :try_start_3
    new-instance v1, Lcom/a/a/c/ac;

    iget-object v2, p0, Lcom/a/a/c/f;->t:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/a/a/c/ac;-><init>(Ljava/lang/String;Lcom/a/a/c/m;)V

    iget v0, p0, Lcom/a/a/c/f;->x:F

    invoke-virtual {v1, v0}, Lcom/a/a/c/ac;->a(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    invoke-virtual {p0}, Lcom/a/a/c/f;->t()V

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    invoke-virtual {p0}, Lcom/a/a/c/f;->t()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/c/f;->t()V

    throw v0
.end method

.method protected synthetic f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/a/a/c/f;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lcom/a/a/c/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/a/a/c/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/a/a/c/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/a/a/c/f;->u:Ljava/lang/String;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/a/a/c/f;->w:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/a/a/c/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/a/a/c/f;->E()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/a/a/c/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method o()Lcom/a/a/c/k;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/a/a/c/f;->n:Lcom/a/a/c/k;

    return-object v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/a/a/c/f;->D()Lio/fabric/sdk/android/services/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/f;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/a/a/c/f;->D()Lio/fabric/sdk/android/services/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/f;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/a/a/c/f;->D()Lio/fabric/sdk/android/services/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/f;->q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/a/a/c/f;->B:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/f$2;

    invoke-direct {v1, p0}, Lcom/a/a/c/f$2;-><init>(Lcom/a/a/c/f;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 836
    return-void
.end method

.method t()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/a/a/c/f;->B:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/f$3;

    invoke-direct {v1, p0}, Lcom/a/a/c/f$3;-><init>(Lcom/a/a/c/f;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 857
    return-void
.end method

.method u()Z
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/a/a/c/f;->B:Lcom/a/a/c/g;

    new-instance v1, Lcom/a/a/c/f$4;

    invoke-direct {v1, p0}, Lcom/a/a/c/f$4;-><init>(Lcom/a/a/c/f;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method v()Lcom/a/a/c/a/a/d;
    .locals 2

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 882
    iget-object v1, p0, Lcom/a/a/c/f;->C:Lcom/a/a/c/a/a;

    if-eqz v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/a/a/c/f;->C:Lcom/a/a/c/a/a;

    invoke-interface {v0}, Lcom/a/a/c/a/a;->a()Lcom/a/a/c/a/a/d;

    move-result-object v0

    .line 885
    :cond_0
    return-object v0
.end method

.method w()Ljava/io/File;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/a/a/c/f;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Lio/fabric/sdk/android/services/d/b;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/h;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/d/b;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/f;->c:Ljava/io/File;

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/f;->c:Ljava/io/File;

    return-object v0
.end method

.method x()Z
    .locals 3

    .prologue
    .line 914
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    new-instance v1, Lcom/a/a/c/f$5;

    invoke-direct {v1, p0}, Lcom/a/a/c/f$5;-><init>(Lcom/a/a/c/f;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/e/q;->a(Lio/fabric/sdk/android/services/e/q$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method y()Z
    .locals 3

    .prologue
    .line 927
    new-instance v0, Lio/fabric/sdk/android/services/d/d;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/h;)V

    .line 928
    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method z()Z
    .locals 3

    .prologue
    .line 938
    invoke-static {}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    new-instance v1, Lcom/a/a/c/f$6;

    invoke-direct {v1, p0}, Lcom/a/a/c/f$6;-><init>(Lcom/a/a/c/f;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/e/q;->a(Lio/fabric/sdk/android/services/e/q$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
