.class Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$1;
.super Ljava/lang/Object;
.source "RemoteInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 89
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$1;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$1;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    .line 92
    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->remote_install_help_url:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$1;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
