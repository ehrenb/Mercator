.class Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastRegisterOnSubscribe.java"


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

.field final synthetic val$subscriber:Lrx/j;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;Lrx/j;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$1;->this$0:Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe;

    iput-object p2, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/utils/BroadcastRegisterOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0, p2}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method
