.class Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$2;
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

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$2;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$2;->this$0:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->onRetryClick(Landroid/view/View;)V

    .line 100
    return-void
.end method
