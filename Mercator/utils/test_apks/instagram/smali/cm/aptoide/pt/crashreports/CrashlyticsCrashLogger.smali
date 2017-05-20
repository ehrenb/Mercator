.class public Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;
.super Ljava/lang/Object;
.source "CrashlyticsCrashLogger.java"

# interfaces
.implements Lcm/aptoide/pt/crashreports/CrashLogger;


# static fields
.field private static final LANGUAGE:Ljava/lang/String; = "Language"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/h;

    const/4 v1, 0x0

    new-instance v2, Lcom/a/a/a$a;

    invoke-direct {v2}, Lcom/a/a/a$a;-><init>()V

    new-instance v3, Lcom/a/a/c/f$a;

    invoke-direct {v3}, Lcom/a/a/c/f$a;-><init>()V

    .line 25
    invoke-virtual {v3, p2}, Lcom/a/a/c/f$a;->a(Z)Lcom/a/a/c/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c/f$a;->a()Lcom/a/a/c/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/a$a;->a(Lcom/a/a/c/f;)Lcom/a/a/a$a;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/a/a/a$a;->a()Lcom/a/a/a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 24
    invoke-static {p1, v0}, Lio/fabric/sdk/android/c;->a(Landroid/content/Context;[Lio/fabric/sdk/android/h;)Lio/fabric/sdk/android/c;

    .line 27
    sget-object v0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " complete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lio/fabric/sdk/android/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "Language"

    iget-object v1, p0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1, p2}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lio/fabric/sdk/android/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "Language"

    iget-object v1, p0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcm/aptoide/pt/crashreports/CrashlyticsCrashLogger;->language:Ljava/lang/String;

    return-void
.end method
