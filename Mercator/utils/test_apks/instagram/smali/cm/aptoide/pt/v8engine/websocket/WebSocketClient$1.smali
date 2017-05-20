.class Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    move v2, v0

    .line 82
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/"

    .line 83
    :goto_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 87
    :goto_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "wss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "https"

    .line 88
    :goto_3
    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v5}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    .line 91
    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "wss"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    .line 92
    # invokes: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$100(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 93
    :goto_4
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v5}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    # setter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;
    invoke-static {v4, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$202(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Ljava/net/Socket;)Ljava/net/Socket;

    .line 95
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    const-string v0, "Upgrade: websocket\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    const-string v0, "Connection: Upgrade\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sec-WebSocket-Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # invokes: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->createSecret()Ljava/lang/String;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$300(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-string v0, "Sec-WebSocket-Version: 13\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mExtraHeaders:Ljava/util/List;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$400(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mExtraHeaders:Ljava/util/List;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$400(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 105
    const-string v3, "%s: %s\r\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_5

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "WebSocketClient"

    const-string v2, "WebSocket EOF!"

    invoke-static {v1, v2, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v0

    const-string v1, "EOF"

    invoke-interface {v0, v7, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # setter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mConnected:Z
    invoke-static {v0, v7}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$902(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Z)Z

    .line 150
    :goto_6
    return-void

    .line 79
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    .line 80
    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1bb

    move v2, v0

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x50

    move v2, v0

    goto/16 :goto_0

    .line 82
    :cond_4
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mURI:Ljava/net/URI;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 87
    :cond_5
    const-string v0, "http"

    goto/16 :goto_3

    .line 92
    :cond_6
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto/16 :goto_4

    .line 108
    :cond_7
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 111
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    .line 112
    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # invokes: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->readLine(Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$500(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->parseStatusLine(Ljava/lang/String;)Lorg/apache/http/StatusLine;
    invoke-static {v1, v2}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$600(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 116
    if-nez v1, :cond_8

    .line 117
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "Received no reply from server."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    :catch_1
    move-exception v0

    .line 144
    const-string v1, "WebSocketClient"

    const-string v2, "Websocket SSL error!"

    invoke-static {v1, v2, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v0

    const-string v1, "SSL"

    invoke-interface {v0, v7, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # setter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mConnected:Z
    invoke-static {v0, v7}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$902(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Z)Z

    goto/16 :goto_6

    .line 118
    :cond_8
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_9

    .line 119
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 120
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    :catch_2
    move-exception v0

    .line 148
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 125
    :cond_9
    :goto_7
    :try_start_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # invokes: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->readLine(Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$500(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 126
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # invokes: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->parseHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    invoke-static {v2, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$700(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    .line 132
    :cond_a
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onConnect()V

    .line 134
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    const/4 v2, 0x1

    # setter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mConnected:Z
    invoke-static {v1, v2}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$902(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Z)Z

    .line 137
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mParser:Lcm/aptoide/pt/v8engine/websocket/HybiParser;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$1000(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/HybiParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->start(Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    :cond_b
    move-object v1, v0

    goto/16 :goto_2
.end method
