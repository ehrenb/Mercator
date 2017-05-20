.class Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;
.super Ljava/lang/Object;
.source "WebSocketSingleton.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "WebSocketSingleton"

    const-string v1, "On Connect"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const-string v0, "WebSocketSingleton"

    invoke-static {v0, p2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v2, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->matrix_columns:[Ljava/lang/String;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string v4, "WebSocketSingleton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suggestion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    # invokes: Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->addRow(Landroid/database/MatrixCursor;Ljava/lang/String;I)V
    invoke-static {v4, v2, v3, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;Landroid/database/MatrixCursor;Ljava/lang/String;I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->query:Ljava/lang/String;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->buffer:Ljava/lang/String;
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->access$102(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;->this$0:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    # getter for: Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->blockingQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->access$300(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onMessage([B)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "WebSocketSingleton"

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
