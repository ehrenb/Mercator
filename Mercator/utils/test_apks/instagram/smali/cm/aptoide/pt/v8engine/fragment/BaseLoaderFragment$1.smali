.class Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseLoaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->registerReceiverForAccountManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment$1;->this$0:Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/fragment/BaseLoaderFragment;->load(ZZLandroid/os/Bundle;)V

    .line 62
    return-void
.end method
