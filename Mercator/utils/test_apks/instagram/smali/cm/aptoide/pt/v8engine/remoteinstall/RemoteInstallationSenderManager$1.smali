.class Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;
.super Ljava/lang/Object;
.source "RemoteInstallationSenderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->discoverAptoideTVServices(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 63
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v2, v2, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, v1, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 64
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 65
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2}, Lb/a/a;->a(Ljava/net/InetAddress;Ljava/lang/String;)Lb/a/a;

    move-result-object v1

    iput-object v1, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->jmDNS:Lb/a/a;

    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->jmDNS:Lb/a/a;

    const-string v1, "_aptoide-rmtinst._tcp.local."

    new-instance v2, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;)V

    invoke-virtual {v0, v1, v2}, Lb/a/a;->a(Ljava/lang/String;Lb/a/e;)V

    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    new-instance v1, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$2;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$2;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;)V

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    new-instance v2, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$3;

    invoke-direct {v2, p0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$3;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;)V

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    sget-object v1, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Installation - Error on discover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
