.class Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$2;
.super Ljava/lang/Object;
.source "RemoteInstallationSenderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->discoverAptoideTVServices(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$2;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$2;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->stopDiscoveringAptoideTVServices()V

    .line 132
    return-void
.end method
