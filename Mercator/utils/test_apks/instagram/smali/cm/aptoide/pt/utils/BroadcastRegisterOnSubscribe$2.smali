.class Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$2;
.super Ljava/lang/Object;
.source "BroadcastRegisterOnSubscribe.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->call(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

.field final synthetic val$broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$2;->this$0:Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

    iput-object p2, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$2;->val$broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$2;->this$0:Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

    # getter for: Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->context:Landroid/content/Context;
    invoke-static {v0}, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;->access$000(Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$2;->val$broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    return-void
.end method
