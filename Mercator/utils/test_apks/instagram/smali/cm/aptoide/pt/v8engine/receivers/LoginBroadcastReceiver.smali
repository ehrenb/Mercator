.class public Lcm/aptoide/pt/v8engine/receivers/LoginBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGIN:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->loadUserData()V

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    sget-object v0, Lcm/aptoide/accountmanager/AptoideAccountManager;->LOGOUT:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->clearUserData()V

    goto :goto_0
.end method
