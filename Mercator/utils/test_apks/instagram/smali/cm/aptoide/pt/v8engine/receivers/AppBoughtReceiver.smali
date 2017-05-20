.class public abstract Lcm/aptoide/pt/v8engine/receivers/AppBoughtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppBoughtReceiver.java"


# static fields
.field public static final APP_BOUGHT:Ljava/lang/String; = "APP_BOUGHT"

.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final APP_PATH:Ljava/lang/String; = "APP_PATH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appBought(JLjava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "APP_BOUGHT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "appId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "APP_PATH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/receivers/AppBoughtReceiver;->appBought(JLjava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method
