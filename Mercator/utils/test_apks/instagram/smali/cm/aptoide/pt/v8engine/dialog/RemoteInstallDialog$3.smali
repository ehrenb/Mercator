.class Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$3;
.super Ljava/lang/Object;
.source "RemoteInstallDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$3;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    .line 108
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$3;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    # getter for: Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->sManager:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->access$000(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$3;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    # getter for: Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->sManager:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->access$000(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$3;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    # getter for: Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->app:Ljava/lang/String;
    invoke-static {v2}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->access$100(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->sendAppId(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
