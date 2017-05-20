.class Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;
.super Ljava/lang/Object;
.source "SyncAdapterBackgroundSync.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;->sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->this$0:Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$authority:Ljava/lang/String;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$call$0(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->call(Lrx/j;)V

    return-void
.end method

.method public call(Lrx/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x4

    new-instance v1, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;

    invoke-direct {v1, p0, p1}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$1;-><init>(Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;Lrx/j;)V

    .line 70
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1$$Lambda$1;->lambdaFactory$(Ljava/lang/Object;)Lrx/b/a;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$account:Landroid/accounts/Account;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$authority:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/repository/sync/SyncAdapterBackgroundSync$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    return-void
.end method
