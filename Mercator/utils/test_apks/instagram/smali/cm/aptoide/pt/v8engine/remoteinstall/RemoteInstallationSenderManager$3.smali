.class Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;
.super Landroid/os/AsyncTask;
.source "RemoteInstallationSenderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->stopDiscoveringAptoideTVServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;)V
    .locals 1

    .prologue
    .line 157
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->closed:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->jmDNS:Lb/a/a;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->jmDNS:Lb/a/a;

    invoke-virtual {v0}, Lb/a/a;->a()V

    .line 164
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->jmDNS:Lb/a/a;

    invoke-virtual {v0}, Lb/a/a;->close()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->closed:Z

    .line 166
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->jmDNS:Lb/a/a;

    .line 168
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 170
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_1
    :goto_0
    return-object v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->closed:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$3;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->listener:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;->onDiscoveryStopped()V

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 183
    return-void
.end method
