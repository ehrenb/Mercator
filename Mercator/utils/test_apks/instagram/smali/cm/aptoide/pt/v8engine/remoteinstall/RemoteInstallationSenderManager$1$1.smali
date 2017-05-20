.class Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;
.super Ljava/lang/Object;
.source "RemoteInstallationSenderManager.java"

# interfaces
.implements Lb/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;->this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceAdded(Lb/a/c;)V
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Installation - A service has been added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public serviceRemoved(Lb/a/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lb/a/d;->g()[Ljava/net/Inet4Address;

    move-result-object v1

    aget-object v1, v1, v5

    .line 76
    invoke-virtual {v0}, Lb/a/d;->i()I

    move-result v2

    .line 77
    invoke-virtual {v0}, Lb/a/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v3, ".local."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".local."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    sget-object v3, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Installation - A service has been removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;->this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;

    iget-object v3, v3, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    new-instance v4, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$1;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;Ljava/lang/String;Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public serviceResolved(Lb/a/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lb/a/d;->g()[Ljava/net/Inet4Address;

    move-result-object v1

    aget-object v1, v1, v5

    .line 96
    invoke-virtual {v0}, Lb/a/d;->i()I

    move-result v2

    .line 97
    invoke-virtual {v0}, Lb/a/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v3, ".local."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".local."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    sget-object v3, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Installation - A service has been resolved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lb/a/c;->d()Lb/a/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;->this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;

    iget-object v3, v3, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    new-instance v4, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;Ljava/lang/String;Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
