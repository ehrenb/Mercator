.class Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;
.super Ljava/lang/Object;
.source "RemoteInstallationSenderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;->serviceResolved(Lb/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;

.field final synthetic val$address:Ljava/net/InetAddress;

.field final synthetic val$fName:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;Ljava/lang/String;Ljava/net/InetAddress;I)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->this$2:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->val$fName:Ljava/lang/String;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->val$address:Ljava/net/InetAddress;

    iput p4, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->this$2:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1;->this$1:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->listener:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;

    new-instance v1, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->val$fName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->val$address:Ljava/net/InetAddress;

    iget v4, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$1$1$2;->val$port:I

    invoke-direct {v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    .line 107
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;->onAptoideTVServiceFound(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)V

    .line 109
    return-void
.end method
