.class public Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;
.super Ljava/lang/Object;
.source "BroadcastRegisterOnSubscribe.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastPermission:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final schedulerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->intentFilter:Landroid/content/IntentFilter;

    .line 33
    iput-object p3, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->broadcastPermission:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->schedulerHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->call(Lrx/j;)V

    return-void
.end method

.method public call(Lrx/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$1;-><init>(Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;Lrx/j;)V

    .line 46
    new-instance v1, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$2;-><init>(Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;Landroid/content/BroadcastReceiver;)V

    invoke-static {v1}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Lrx/j;->add(Lrx/k;)V

    .line 53
    iget-object v1, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->context:Landroid/content/Context;

    iget-object v2, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->intentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->broadcastPermission:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->schedulerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 55
    return-void
.end method
