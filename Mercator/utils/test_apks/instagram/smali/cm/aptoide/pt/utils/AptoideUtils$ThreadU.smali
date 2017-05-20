.class public final Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadU"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1040
    const-class v0, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUiThread()Z
    .locals 2

    .prologue
    .line 1062
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$runOnIoThread$0(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1043
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$runOnIoThread$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1044
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1045
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$runOnUiThread$2(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1055
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$runOnUiThread$3(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1056
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1057
    return-void
.end method

.method public static runOnIoThread(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 1043
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$1;->lambdaFactory$(Ljava/lang/Runnable;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 1047
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 1050
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1059
    :goto_0
    return-void

    .line 1053
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    .line 1054
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$3;->lambdaFactory$(Ljava/lang/Runnable;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ThreadU$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 1055
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    goto :goto_0
.end method

.method public static sleep(J)V
    .locals 2

    .prologue
    .line 1067
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
