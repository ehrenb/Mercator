.class Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;
.super Ljava/lang/Object;
.source "SyncAdapterBackgroundSync.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->call(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;

.field final synthetic val$subscriber:Lrx/j;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;Lrx/j;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;->this$1:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;->val$subscriber:Lrx/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;->this$1:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$account:Landroid/accounts/Account;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;->this$1:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;

    iget-object v1, v1, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$authority:Ljava/lang/String;

    .line 75
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 78
    :cond_0
    return-void
.end method
