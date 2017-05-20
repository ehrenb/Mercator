.class public Lcm/aptoide/pt/crashreports/CrashReport;
.super Ljava/lang/Object;
.source "CrashReport.java"

# interfaces
.implements Lcm/aptoide/pt/crashreports/CrashLogger;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static singleton:Lcm/aptoide/pt/crashreports/CrashReport;


# instance fields
.field private crashLoggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcm/aptoide/pt/crashreports/CrashLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcm/aptoide/pt/crashreports/CrashReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/crashreports/CrashReport;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcm/aptoide/pt/crashreports/CrashReport;

    invoke-direct {v0}, Lcm/aptoide/pt/crashreports/CrashReport;-><init>()V

    sput-object v0, Lcm/aptoide/pt/crashreports/CrashReport;->singleton:Lcm/aptoide/pt/crashreports/CrashReport;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public static getInstance()Lcm/aptoide/pt/crashreports/CrashReport;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcm/aptoide/pt/crashreports/CrashReport;->singleton:Lcm/aptoide/pt/crashreports/CrashReport;

    return-object v0
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLogger(Lcm/aptoide/pt/crashreports/CrashLogger;)Lcm/aptoide/pt/crashreports/CrashReport;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-object p0
.end method

.method public getLogger(Ljava/lang/Class;)Lcm/aptoide/pt/crashreports/CrashLogger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/crashreports/CrashLogger;",
            ">;)",
            "Lcm/aptoide/pt/crashreports/CrashLogger;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcm/aptoide/pt/crashreports/CrashReport;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcm/aptoide/pt/crashreports/CrashReport;->TAG:Ljava/lang/String;

    const-string v1, "not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 73
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/crashreports/CrashLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/crashreports/CrashLogger;

    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 73
    goto :goto_0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcm/aptoide/pt/crashreports/CrashReport;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcm/aptoide/pt/crashreports/CrashReport;->TAG:Ljava/lang/String;

    const-string v1, "not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/crashreports/CrashLogger;

    invoke-interface {v0, p1, p2}, Lcm/aptoide/pt/crashreports/CrashLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public log(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcm/aptoide/pt/crashreports/CrashReport;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lcm/aptoide/pt/crashreports/CrashReport;->TAG:Ljava/lang/String;

    const-string v1, "not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/crashreports/CrashReport;->crashLoggers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/crashreports/CrashLogger;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/crashreports/CrashLogger;->log(Ljava/lang/Throwable;)V

    .line 42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
