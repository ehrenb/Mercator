.class public Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;
.super Ljava/lang/Object;
.source "WebSocketSingleton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$WebSocketHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WebSocketSingleton"

.field public static final WEBSOCKETS_HOST:Ljava/lang/String; = "buzz.webservices.aptoide.com"

.field public static final WEBSOCKETS_PORT:Ljava/lang/String; = "9000"

.field public static final WEBSOCKETS_SCHEME:Ljava/lang/String; = "ws://"

.field private static web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;


# instance fields
.field private blockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private buffer:Ljava/lang/String;

.field future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private listener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

.field matrix_columns:[Ljava/lang/String;

.field private query:Ljava/lang/String;

.field scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->matrix_columns:[Ljava/lang/String;

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;-><init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->listener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;Landroid/database/MatrixCursor;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->addRow(Landroid/database/MatrixCursor;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$102(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->buffer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private addRow(Landroid/database/MatrixCursor;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 157
    return-void
.end method

.method public static getInstance()Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$WebSocketHolder;->INSTANCE:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    return-object v0
.end method

.method static synthetic lambda$send$0(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 107
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 109
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 111
    const-string v2, "query"

    invoke-virtual {v0, v2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 113
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->send(Ljava/lang/String;)V

    .line 121
    const-string v0, "WebSocketSingleton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 4

    .prologue
    .line 147
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    const-string v1, "ws://buzz.webservices.aptoide.com:9000"

    .line 149
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->listener:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;-><init>(Ljava/net/URI;Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;Ljava/util/List;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    .line 150
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->connect()V

    .line 152
    :cond_0
    const-string v0, "WebSocketSingleton"

    const-string v1, "OnConnecting"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "WebSocketSingleton"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->disconnect()V

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    .line 143
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 98
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->query:Ljava/lang/String;

    .line 100
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    if-eqz v0, :cond_2

    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->web_socket_client:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->buffer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->buffer:Ljava/lang/String;

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    :cond_0
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$$Lambda$1;->lambdaFactory$(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 128
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_2
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setBlockingQueue(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 161
    return-void
.end method
