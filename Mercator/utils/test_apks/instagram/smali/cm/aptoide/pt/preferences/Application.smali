.class public abstract Lcm/aptoide/pt/preferences/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static configuration:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcm/aptoide/pt/preferences/Application;->configuration:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcm/aptoide/pt/preferences/Application;->createConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/preferences/Application;->configuration:Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    .line 33
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils;->setContext(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method protected abstract createConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 40
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils;->setContext(Landroid/content/Context;)V

    .line 41
    return-void
.end method
