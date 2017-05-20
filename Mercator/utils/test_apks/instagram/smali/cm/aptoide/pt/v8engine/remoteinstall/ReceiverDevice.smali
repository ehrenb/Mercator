.class public Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;
.super Ljava/lang/Object;
.source "ReceiverDevice.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private deviceName:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->deviceName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->address:Ljava/net/InetAddress;

    .line 18
    iput p3, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->port:I

    .line 19
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->port:I

    return v0
.end method

.method public isSameDevice(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->address:Ljava/net/InetAddress;

    .line 46
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->deviceName:Ljava/lang/String;

    .line 31
    return-void
.end method
