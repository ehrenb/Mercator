.class Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;
.super Landroid/a/a/a$a;
.source "SystemInstallOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->call(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;

.field final synthetic val$subscriber:Lrx/j;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;Lrx/j;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;->this$0:Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-direct {p0}, Landroid/a/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;->val$subscriber:Lrx/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;->val$subscriber:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;->val$subscriber:Lrx/j;

    new-instance v1, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not installed with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
