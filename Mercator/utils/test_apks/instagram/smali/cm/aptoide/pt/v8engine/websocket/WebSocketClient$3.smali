.class Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->sendFrame([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

.field final synthetic val$frame:[B


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;[B)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;->val$frame:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSendLock:Ljava/lang/Object;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$1100(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :try_start_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 230
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;->val$frame:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 232
    monitor-exit v1

    .line 238
    :goto_0
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$3;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->mListener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->access$800(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
