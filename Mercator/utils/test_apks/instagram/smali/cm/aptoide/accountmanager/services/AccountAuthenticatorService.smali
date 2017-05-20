.class public Lcm/aptoide/accountmanager/services/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcm/aptoide/accountmanager/AccountAuthenticator;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/AccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/AccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
