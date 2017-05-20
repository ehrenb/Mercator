.class Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$2;
.super Ljava/lang/Object;
.source "RemoteInstallationSenderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$2;->this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$2;->this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->listener:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;->onDiscoveryStarted()V

    .line 116
    return-void
.end method
