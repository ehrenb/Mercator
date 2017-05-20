.class public Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;
.super Landroid/support/v4/app/t;
.source "AddStoreDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$BundleArgs;
    }
.end annotation


# instance fields
.field private final PRIVATE_STORE_REQUEST_CODE:I

.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private loadingDialog:Landroid/app/Dialog;

.field private storeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    .line 41
    const/16 v0, 0x14

    iput v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->PRIVATE_STORE_REQUEST_CODE:I

    .line 47
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 49
    return-void
.end method

.method private buildRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;
    .locals 3

    .prologue
    .line 111
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->getStoreCredentials(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    move-result-object v0

    .line 112
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v2}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;->of(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;

    move-result-object v0

    return-object v0
.end method

.method private executeRequest(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->storeName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/StoreUtilsProxy;->subscribeStore(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private getStore(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->buildRequest(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->executeRequest(Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreMetaRequest;)V

    .line 99
    return-void
.end method

.method private showLoadingDialog()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->loadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->loadingDialog:Landroid/app/Dialog;

    .line 107
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    return-void
.end method


# virtual methods
.method dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    return-void
.end method

.method synthetic lambda$executeRequest$2(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->store_followed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->storeName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 118
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->dismissLoadingDialog()V

    .line 121
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->dismiss()V

    .line 122
    return-void
.end method

.method synthetic lambda$executeRequest$3(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 123
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getError()Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    move-result-object v0

    .line 127
    const-string v1, "STORE-3"

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/16 v0, 0x14

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->storeName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;->newInstance(Landroid/support/v4/app/Fragment;ILjava/lang/String;Z)Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getFragmentManager()Landroid/support/v4/app/y;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/dialog/PrivateStoreDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/t;->show(Landroid/support/v4/app/y;Ljava/lang/String;)V

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->dismissLoadingDialog()V

    .line 139
    :goto_1
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->dismissLoadingDialog()V

    .line 137
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->error_occured:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    goto :goto_1
.end method

.method synthetic lambda$onViewCreated$0(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 76
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->edit_store_uri:I

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 79
    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->storeName:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->hideKeyboard(Landroid/app/Activity;)V

    .line 81
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getStore(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->showLoadingDialog()V

    .line 84
    :cond_0
    return-void
.end method

.method synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/MainActivityFragment;

    .line 88
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newFragmentTopStores()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/MainActivityFragment;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 89
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->dismiss()V

    .line 92
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/t;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 55
    packed-switch p2, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->dismiss()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onCreate(Landroid/os/Bundle;)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$BundleArgs;->STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$BundleArgs;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$BundleArgs;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->storeName:Ljava/lang/String;

    .line 152
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->subscribe_store:I

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->dialog_add_store:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$BundleArgs;->STORE_NAME:Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$BundleArgs;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$BundleArgs;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;->storeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/t;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->button_dialog_add_store:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->button_top_stores:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/AddStoreDialog;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method
