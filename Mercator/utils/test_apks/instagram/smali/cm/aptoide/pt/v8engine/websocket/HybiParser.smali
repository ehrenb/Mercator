.class public Lcm/aptoide/pt/v8engine/websocket/HybiParser;
.super Ljava/lang/Object;
.source "HybiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;,
        Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;
    }
.end annotation


# static fields
.field private static final BYTE:I = 0xff

.field private static final FIN:I = 0x80

.field private static final FRAGMENTED_OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LENGTH:I = 0x7f

.field private static final MASK:I = 0x80

.field private static final MODE_BINARY:I = 0x2

.field private static final MODE_TEXT:I = 0x1

.field private static final OPCODE:I = 0xf

.field private static final OPCODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_BINARY:I = 0x2

.field private static final OP_CLOSE:I = 0x8

.field private static final OP_CONTINUATION:I = 0x0

.field private static final OP_PING:I = 0x9

.field private static final OP_PONG:I = 0xa

.field private static final OP_TEXT:I = 0x1

.field private static final RSV1:I = 0x40

.field private static final RSV2:I = 0x20

.field private static final RSV3:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HybiParser"


# instance fields
.field private mBuffer:Ljava/io/ByteArrayOutputStream;

.field private mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

.field private mClosed:Z

.field private mFinal:Z

.field private mLength:I

.field private mLengthSize:I

.field private mMask:[B

.field private mMasked:Z

.field private mMasking:Z

.field private mMode:I

.field private mOpcode:I

.field private mPayload:[B

.field private mStage:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->OPCODES:Ljava/util/List;

    .line 39
    new-array v0, v6, [Ljava/lang/Integer;

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMasking:Z

    .line 50
    new-array v0, v1, [B

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMask:[B

    .line 51
    new-array v0, v1, [B

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mPayload:[B

    .line 52
    iput-boolean v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClosed:Z

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    .line 56
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    .line 57
    return-void
.end method

.method private static byteArrayToLong([BII)J
    .locals 6

    .prologue
    .line 223
    array-length v0, p0

    if-ge v0, p2, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be less than or equal to b.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const-wide/16 v2, 0x0

    .line 228
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 229
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    .line 230
    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int v1, v4, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return-wide v2
.end method

.method private static copyOfRange([BII)[B
    .locals 3

    .prologue
    .line 252
    if-le p1, p2, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 255
    :cond_0
    array-length v0, p0

    .line 256
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 259
    :cond_2
    sub-int v1, p2, p1

    .line 260
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 261
    new-array v1, v1, [B

    .line 262
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    return-object v1
.end method

.method private decode(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 325
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 328
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private emitFrame()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 131
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mPayload:[B

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMask:[B

    invoke-static {v1, v2, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mask([B[BI)[B

    move-result-object v1

    .line 132
    iget v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mOpcode:I

    .line 134
    if-nez v2, :cond_3

    .line 135
    iget v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMode:I

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;

    const-string v1, "Mode was not set."

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mFinal:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 141
    iget v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMode:I

    if-ne v1, v5, :cond_2

    .line 142
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getListener()Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onMessage(Ljava/lang/String;)V

    .line 146
    :goto_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->reset()V

    .line 179
    :cond_1
    :goto_1
    return-void

    .line 144
    :cond_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getListener()Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onMessage([B)V

    goto :goto_0

    .line 148
    :cond_3
    if-ne v2, v5, :cond_5

    .line 149
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mFinal:Z

    if-eqz v0, :cond_4

    .line 150
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getListener()Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_4
    iput v5, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMode:I

    .line 154
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 156
    :cond_5
    if-ne v2, v4, :cond_7

    .line 157
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mFinal:Z

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getListener()Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onMessage([B)V

    goto :goto_1

    .line 160
    :cond_6
    iput v4, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMode:I

    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 163
    :cond_7
    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 164
    array-length v2, v1

    if-lt v2, v4, :cond_8

    aget-byte v0, v1, v0

    mul-int/lit16 v0, v0, 0x100

    aget-byte v2, v1, v5

    add-int/2addr v0, v2

    .line 165
    :cond_8
    array-length v2, v1

    if-le v2, v4, :cond_9

    invoke-direct {p0, v1, v4}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->slice([BI)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 166
    :goto_2
    const-string v2, "HybiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got close op! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getListener()Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 168
    :cond_a
    const/16 v0, 0x9

    if-ne v2, v0, :cond_c

    .line 169
    array-length v0, v1

    const/16 v2, 0x7d

    if-le v0, v2, :cond_b

    .line 170
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;

    const-string v1, "Ping payload too large"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_b
    const-string v0, "HybiParser"

    const-string v2, "Sending pong!!"

    invoke-static {v0, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v6, v2}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->sendFrame([B)V

    goto/16 :goto_1

    .line 174
    :cond_c
    if-ne v2, v6, :cond_1

    .line 175
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "HybiParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got pong! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private encode([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private frame(Ljava/lang/Object;II)[B
    .locals 12

    .prologue
    .line 267
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClosed:Z

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    .line 271
    :cond_0
    const-string v0, "HybiParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating frame for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 274
    :goto_1
    if-lez p3, :cond_4

    const/4 v0, 0x2

    .line 275
    :goto_2
    array-length v1, p1

    add-int v4, v1, v0

    .line 276
    const/16 v1, 0x7d

    if-gt v4, v1, :cond_5

    const/4 v1, 0x2

    .line 277
    :goto_3
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMasking:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    :goto_4
    add-int v5, v1, v2

    .line 278
    iget-boolean v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMasking:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x80

    .line 279
    :goto_5
    add-int v3, v4, v5

    new-array v3, v3, [B

    .line 281
    const/4 v6, 0x0

    int-to-byte v7, p2

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 283
    const/16 v6, 0x7d

    if-gt v4, v6, :cond_9

    .line 284
    const/4 v6, 0x1

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 301
    :goto_6
    if-lez p3, :cond_1

    .line 302
    div-int/lit16 v2, p3, 0x100

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    .line 303
    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 305
    :cond_1
    const/4 v2, 0x0

    add-int/2addr v0, v5

    array-length v4, p1

    invoke-static {p1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMasking:Z

    if-eqz v0, :cond_2

    .line 308
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 309
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x2

    .line 310
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 312
    const/4 v2, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    invoke-static {v3, v0, v5}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mask([B[BI)[B

    :cond_2
    move-object v0, v3

    .line 316
    goto/16 :goto_0

    .line 273
    :cond_3
    check-cast p1, [B

    check-cast p1, [B

    goto/16 :goto_1

    .line 274
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 276
    :cond_5
    const v1, 0xffff

    if-gt v4, v1, :cond_6

    const/4 v1, 0x4

    goto/16 :goto_3

    :cond_6
    const/16 v1, 0xa

    goto/16 :goto_3

    .line 277
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 278
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 285
    :cond_9
    const v6, 0xffff

    if-gt v4, v6, :cond_a

    .line 286
    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 287
    const/4 v2, 0x2

    div-int/lit16 v6, v4, 0x100

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 288
    const/4 v2, 0x3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto/16 :goto_6

    .line 290
    :cond_a
    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    .line 291
    const/4 v2, 0x2

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x404c000000000000L    # 56.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 292
    const/4 v2, 0x3

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 293
    const/4 v2, 0x4

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 294
    const/4 v2, 0x5

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 295
    const/4 v2, 0x6

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 296
    const/4 v2, 0x7

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 297
    const/16 v2, 0x8

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 298
    const/16 v2, 0x9

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto/16 :goto_6
.end method

.method private frame(Ljava/lang/String;II)[B
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame(Ljava/lang/Object;II)[B

    move-result-object v0

    return-object v0
.end method

.method private frame([BII)[B
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame(Ljava/lang/Object;II)[B

    move-result-object v0

    return-object v0
.end method

.method private getInteger([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->byteArrayToLong([BII)J

    move-result-wide v0

    .line 183
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 184
    :cond_0
    new-instance v2, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private static mask([B[BI)[B
    .locals 4

    .prologue
    .line 190
    array-length v0, p1

    if-nez v0, :cond_1

    .line 197
    :cond_0
    return-object p0

    .line 194
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 195
    add-int v1, p2, v0

    add-int v2, p2, v0

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseExtendedLength([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->getInteger([B)I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLength:I

    .line 127
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMasked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mStage:I

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private parseLength(B)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 114
    and-int/lit16 v0, p1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMasked:Z

    .line 115
    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLength:I

    .line 117
    iget v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLength:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLength:I

    const/16 v2, 0x7d

    if-gt v0, v2, :cond_2

    .line 118
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMasked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mStage:I

    .line 123
    :goto_2
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 120
    :cond_2
    iget v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLength:I

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLengthSize:I

    .line 121
    iput v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mStage:I

    goto :goto_2

    .line 120
    :cond_3
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private parseOpcode(B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    and-int/lit8 v0, p1, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    move v4, v1

    .line 90
    :goto_0
    and-int/lit8 v0, p1, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    move v3, v1

    .line 91
    :goto_1
    and-int/lit8 v0, p1, 0x10

    const/16 v5, 0x10

    if-ne v0, v5, :cond_3

    move v0, v1

    .line 93
    :goto_2
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_4

    .line 94
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;

    const-string v1, "RSV not zero"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v4, v2

    .line 89
    goto :goto_0

    :cond_2
    move v3, v2

    .line 90
    goto :goto_1

    :cond_3
    move v0, v2

    .line 91
    goto :goto_2

    .line 97
    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mFinal:Z

    .line 98
    and-int/lit8 v0, p1, 0xf

    iput v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mOpcode:I

    .line 99
    new-array v0, v2, [B

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMask:[B

    .line 100
    new-array v0, v2, [B

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mPayload:[B

    .line 102
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->OPCODES:Ljava/util/List;

    iget v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 103
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;

    const-string v1, "Bad opcode"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 97
    goto :goto_3

    .line 106
    :cond_6
    sget-object v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    iget v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mFinal:Z

    if-nez v0, :cond_7

    .line 107
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;

    const-string v1, "Expected non-final packet"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_7
    iput v1, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mStage:I

    .line 111
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMode:I

    .line 211
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 212
    return-void
.end method

.method private slice([BI)[B
    .locals 1

    .prologue
    .line 215
    array-length v0, p1

    invoke-static {p1, p2, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClosed:Z

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    const/16 v1, 0x8

    invoke-direct {p0, p2, v1, p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->send([B)V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClosed:Z

    goto :goto_0
.end method

.method public frame(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public frame([B)[B
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public ping(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v2}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->send([B)V

    .line 346
    return-void
.end method

.method public start(Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->available()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mClient:Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient;->getListener()Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;

    move-result-object v0

    const-string v1, "EOF"

    invoke-interface {v0, v2, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    .line 86
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mStage:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->parseOpcode(B)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->parseLength(B)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLengthSize:I

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->parseExtendedLength([B)V

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-virtual {p1, v3}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mMask:[B

    .line 76
    iput v3, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mStage:I

    goto :goto_0

    .line 79
    :pswitch_4
    iget v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mLength:I

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mPayload:[B

    .line 80
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->emitFrame()V

    .line 81
    iput v2, p0, Lcm/aptoide/pt/v8engine/websocket/HybiParser;->mStage:I

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
