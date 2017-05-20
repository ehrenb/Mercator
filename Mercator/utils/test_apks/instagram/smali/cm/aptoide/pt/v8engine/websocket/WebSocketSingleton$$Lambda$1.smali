.class final synthetic Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$$Lambda$1;->arg$1:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$$Lambda$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton$$Lambda$1;->arg$1:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/websocket/WebSocketSingleton;->lambda$send$0(Ljava/lang/String;)V

    return-void
.end method
