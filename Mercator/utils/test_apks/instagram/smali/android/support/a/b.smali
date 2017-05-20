.class public Landroid/support/a/b;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final a:Landroid/support/a/g;

.field private final b:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/a/g;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/a/b;->a:Landroid/support/a/g;

    .line 49
    iput-object p2, p0, Landroid/support/a/b;->b:Landroid/content/ComponentName;

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/support/a/d;)Z
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/support/a/a;)Landroid/support/a/e;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 186
    new-instance v1, Landroid/support/a/b$1;

    invoke-direct {v1, p0, p1}, Landroid/support/a/b$1;-><init>(Landroid/support/a/b;Landroid/support/a/a;)V

    .line 199
    :try_start_0
    iget-object v2, p0, Landroid/support/a/b;->a:Landroid/support/a/g;

    invoke-interface {v2, v1}, Landroid/support/a/g;->a(Landroid/support/a/f;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/a/e;

    iget-object v2, p0, Landroid/support/a/b;->a:Landroid/support/a/g;

    iget-object v3, p0, Landroid/support/a/b;->b:Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1, v3}, Landroid/support/a/e;-><init>(Landroid/support/a/g;Landroid/support/a/f;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/support/a/b;->a:Landroid/support/a/g;

    invoke-interface {v0, p1, p2}, Landroid/support/a/g;->a(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 170
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method
