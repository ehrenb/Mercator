.class public Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;
.super Ljava/lang/Object;
.source "RemoteInstallationSenderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;
    }
.end annotation


# static fields
.field static final DISCOVERY_TO:I = 0x4e20

.field static final INVALID_PAYLOAD_RESPONSE:Ljava/lang/String; = "INVALIDPAYLOAD"

.field static final PAYLOAD_TAG:Ljava/lang/String; = "apkinstall_appid="

.field static final SERVER_TAG_TO_REMOVE:Ljava/lang/String; = ".local."

.field static final SERVICE_TYPE:Ljava/lang/String; = "_aptoide-rmtinst._tcp.local."

.field static final SUCCESS_TAG:Ljava/lang/String; = "receivedpayload="

.field static final TAG:Ljava/lang/String;

.field static final TIMEOUT:I = 0x2710


# instance fields
.field clientServerThread:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;

.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field jmDNS:Lb/a/a;

.field listener:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;

.field multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->context:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public discoverAptoideTVServices(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;)V
    .locals 4

    .prologue
    .line 57
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->listener:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    new-instance v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$2;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->runOnUiThread(Ljava/lang/Runnable;J)V

    .line 134
    return-void
.end method

.method getAddress()Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 138
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 141
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 145
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method runOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method

.method public sendAppId(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->clientServerThread:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;

    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->clientServerThread:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method

.method public stopDiscoveringAptoideTVServices()V
    .locals 4

    .prologue
    .line 157
    new-instance v1, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;-><init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    .line 184
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method
