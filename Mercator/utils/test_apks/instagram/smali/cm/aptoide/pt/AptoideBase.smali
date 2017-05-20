.class public Lcm/aptoide/pt/AptoideBase;
.super Lcm/aptoide/pt/v8engine/V8Engine;
.source "AptoideBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/V8Engine;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/V8Engine;->attachBaseContext(Landroid/content/Context;)V

    .line 25
    invoke-static {p0}, Landroid/support/c/a;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method protected createConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcm/aptoide/pt/VanillaConfiguration;

    invoke-direct {v0}, Lcm/aptoide/pt/VanillaConfiguration;-><init>()V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/AptoideBase;->setupCrashReports(Z)V

    .line 20
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/V8Engine;->onCreate()V

    .line 21
    return-void
.end method
