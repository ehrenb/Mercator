.class public Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;
.super Landroid/support/v4/app/t;
.source "PrivateStoreDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PrivateStoreDialog"


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private isInsideStore:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private storeName:Ljava/lang/String;

.field private storePassSha1:Ljava/lang/String;

.field private storeUser:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    .line 52
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 54
    return-void
.end method

.method private buildRequest()Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storeName:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storeUser:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storePassSha1:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;

    move-result-object v0

    return-object v0
.end method

.method private dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 151
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;ILjava/lang/String;Z)Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    sget-object v2, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->setArguments(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {v0, p3}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->setIsInsideStore(Z)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->setRetainInstance(Z)V

    .line 66
    invoke-virtual {v0, p0, p1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 67
    return-object v0
.end method

.method private showLoadingDialog()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->loadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->loadingDialog:Landroid/app/ProgressDialog;

    .line 157
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 158
    return-void
.end method


# virtual methods
.method synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getTargetRequestCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->dismissLoadingDialog()V

    .line 98
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->dismiss()V

    .line 99
    return-void
.end method

.method synthetic lambda$null$1(Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->dismissLoadingDialog()V

    .line 101
    instance-of v0, p2, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    if-eqz v0, :cond_1

    .line 102
    check-cast p2, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {p2}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    .line 104
    const-string v1, "STORE-4"

    .line 105
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storeUser:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storePassSha1:Ljava/lang/String;

    .line 108
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->ws_error_invalid_grant:I

    invoke-static {p1, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 113
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->dismiss()V

    goto :goto_0
.end method

.method synthetic lambda$onCreateDialog$2(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 90
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->edit_store_username:I

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storeUser:Ljava/lang/String;

    .line 92
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->edit_store_password:I

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storePassSha1:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->buildRequest()Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;Landroid/view/View;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->subscribeStore(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 116
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->showLoadingDialog()V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    sget-object v1, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storeName:Ljava/lang/String;

    .line 80
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 83
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$layout;->dialog_add_pvt_store:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/support/v7/a/d$a;

    invoke-direct {v2, v0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    sget v0, Lcm/aptoide/pt/v8engine/R$string;->subscribe_pvt_store:I

    invoke-virtual {v2, v0}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v2, 0x104000a

    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;Landroid/view/View;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 140
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/t;->onDestroyView()V

    .line 141
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->isInsideStore:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onDismiss(Landroid/content/DialogInterface;)V

    .line 126
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog$BundleArgs;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->storeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setIsInsideStore(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->isInsideStore:Z

    .line 72
    return-void
.end method
