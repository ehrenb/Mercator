.class public Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;
.super Ljava/lang/Object;
.source "WebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketClient"

.field private static sTrustManagers:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private mConnected:Z

.field private mExtraHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

.field private mParser:Lcm/aptoide/pt/v8engine/websocket/HybiParser;

.field private final mSendLock:Ljava/lang/Object;

.field private mSocket:Ljava/net/Socket;

.field private mThread:Ljava/lang/Thread;

.field private mURI:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSendLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    .line 53
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    .line 54
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mExtraHeaders:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mConnected:Z

    .line 56
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;-><init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mParser:Lcm/aptoide/pt/v8engine/websocket/HybiParser;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "websocket-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/HybiParser;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mParser:Lcm/aptoide/pt/v8engine/websocket/HybiParser;

    return-object v0
.end method

.method static synthetic access$1100(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$202(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->createSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mExtraHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->readLine(Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->parseStatusLine(Ljava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->parseHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    return-object v0
.end method

.method static synthetic access$902(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mConnected:Z

    return p1
.end method

.method private createSecret()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 163
    new-array v2, v8, [B

    move v0, v1

    .line 164
    :goto_0
    if-ge v0, v8, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 158
    sget-object v1, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 159
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private parseHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method private parseStatusLine(Ljava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;

    move-result-object v0

    goto :goto_0
.end method

.method private readLine(Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 179
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->read()I

    move-result v1

    .line 180
    if-ne v1, v4, :cond_0

    .line 194
    :goto_0
    return-object v0

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    :cond_1
    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    .line 185
    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    .line 186
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_2
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->read()I

    move-result v1

    .line 190
    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .prologue
    .line 64
    sput-object p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 65
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;-><init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mThread:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;-><init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    return-void
.end method

.method public getListener()Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mConnected:Z

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mParser:Lcm/aptoide/pt/v8engine/websocket/HybiParser;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->sendFrame([B)V

    .line 222
    return-void
.end method

.method public send([B)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mParser:Lcm/aptoide/pt/v8engine/websocket/HybiParser;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->sendFrame([B)V

    .line 244
    return-void
.end method

.method sendFrame([B)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;

    invoke-direct {v1, p0, p1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;-><init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method
