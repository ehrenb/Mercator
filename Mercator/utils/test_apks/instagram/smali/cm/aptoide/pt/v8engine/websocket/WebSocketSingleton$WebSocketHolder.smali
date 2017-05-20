.class Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$WebSocketHolder;
.super Ljava/lang/Object;
.source "WebSocketSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebSocketHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;-><init>(Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$1;)V

    sput-object v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$WebSocketHolder;->INSTANCE:Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
