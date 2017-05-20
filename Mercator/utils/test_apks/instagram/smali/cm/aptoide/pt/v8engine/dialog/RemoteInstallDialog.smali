.class public Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;
.super Landroid/support/v4/app/t;
.source "RemoteInstallDialog.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;
    }
.end annotation


# static fields
.field private static final APP_ID_TAG:Ljava/lang/String; = "appid"


# instance fields
.field private adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

.field private app:Ljava/lang/String;

.field private aptoideTVInstalledText:Landroid/widget/TextView;

.field private errorLayout:Landroid/widget/LinearLayout;

.field private errorText:Landroid/widget/TextView;

.field private listLayout:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private pBar:Landroid/widget/ProgressBar;

.field private refreshBtn:Landroid/widget/ImageButton;

.field private sManager:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->sManager:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->app:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(J)Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v2, "appid"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 51
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method

.method private populateDeviceList()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v1, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/u;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$layout;->row_remote_install:I

    invoke-direct {v1, v2, v3, v0}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->setAppId(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    return-void
.end method

.method private showErrorLayout(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 147
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_DEVICES_FOUND:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    if-ne p1, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->aptoideTVInstalledText:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->remote_install_notinstallated:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->errorText:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->remote_install_nodevices:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->listLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->errorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    return-void

    .line 151
    :cond_1
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_NETWORK:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->aptoideTVInstalledText:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->remote_install_nowifi_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->errorText:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->remote_install_nowifi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAppSendSuccess()V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->remote_install_success:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->dismiss()V

    .line 171
    return-void
.end method

.method public onAppSendUnsuccess()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->remote_install_fail:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->dismiss()V

    .line 176
    return-void
.end method

.method public onAptoideTVServiceFound(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->add(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)V

    .line 166
    return-void
.end method

.method public onAptoideTVServiceLost(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->remove(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->app:Ljava/lang/String;

    .line 58
    new-instance v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->sManager:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 64
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 80
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->dialog_remote_install:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 81
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->progressBar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->pBar:Landroid/widget/ProgressBar;

    .line 82
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->errorLayout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->errorLayout:Landroid/widget/LinearLayout;

    .line 83
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->no_connection_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->errorText:Landroid/widget/TextView;

    .line 84
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->listLayout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->listLayout:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->help_btn:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->aptoidetv_installed_text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->aptoideTVInstalledText:Landroid/widget/TextView;

    .line 87
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->refreshButton:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->refreshBtn:Landroid/widget/ImageButton;

    .line 89
    new-instance v1, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$1;-><init>(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->refreshBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$2;

    invoke-direct {v1, p0, v2}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$2;-><init>(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    if-nez v0, :cond_1

    .line 103
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->listView:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->listView:Landroid/widget/ListView;

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->listView:Landroid/widget/ListView;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->emptyListLayout:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$3;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$3;-><init>(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->populateDeviceList()V

    .line 112
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->onRetryClick(Landroid/view/View;)V

    .line 114
    :cond_1
    return-object v2
.end method

.method public onDiscoveryStarted()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->refreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->errorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->listLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public onDiscoveryStopped()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->pBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->refreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->adapter:Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_DEVICES_FOUND:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->showErrorLayout(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->sManager:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->stopDiscoveringAptoideTVServices()V

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onDismiss(Landroid/content/DialogInterface;)V

    .line 70
    return-void
.end method

.method public onNoNetworkAccess()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;->NO_NETWORK:Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->showErrorLayout(Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog$Error;)V

    .line 180
    return-void
.end method

.method public onRetryClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->populateDeviceList()V

    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/RemoteInstallDialog;->sManager:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->discoverAptoideTVServices(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;)V

    .line 120
    return-void
.end method
