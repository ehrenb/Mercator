.class Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->disconnect()V
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
    .line 203
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    const/4 v1, 0x0

    # setter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$202(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Ljava/net/Socket;)Ljava/net/Socket;

    .line 214
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    const/4 v1, 0x0

    # setter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mConnected:Z
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$902(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;Z)Z

    .line 215
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "WebSocketClient"

    const-string v2, "Error while disconnecting"

    invoke-static {v1, v2, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$2;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
