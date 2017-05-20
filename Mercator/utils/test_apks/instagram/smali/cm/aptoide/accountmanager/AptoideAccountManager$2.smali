.class final Lcm/aptoide/accountmanager/AptoideAccountManager$2;
.super Ljava/lang/Object;
.source "AptoideAccountManager.java"

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/accountmanager/AptoideAccountManager;->loginUserCredentials(Lcm/aptoide/accountmanager/ws/LoginMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalGenericPleaseWaitDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$2;->val$finalGenericPleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 380
    :try_start_0
    instance-of v0, p1, Lcm/aptoide/accountmanager/ws/AptoideWsV3Exception;

    if-eqz v0, :cond_1

    .line 381
    check-cast p1, Lcm/aptoide/accountmanager/ws/AptoideWsV3Exception;

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/AptoideWsV3Exception;->getBaseResponse()Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;

    move-result-object v0

    .line 382
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 383
    invoke-virtual {v0}, Lcm/aptoide/accountmanager/ws/responses/GenericResponseV3;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    .line 382
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :goto_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$2;->val$finalGenericPleaseWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$2;->val$finalGenericPleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 392
    :cond_0
    return-void

    .line 385
    :cond_1
    :try_start_1
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getInstance()Lcm/aptoide/accountmanager/AptoideAccountManager;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/accountmanager/R$string;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/accountmanager/AptoideAccountManager;->onLoginFail(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$2;->val$finalGenericPleaseWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcm/aptoide/accountmanager/AptoideAccountManager$2;->val$finalGenericPleaseWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    throw v0
.end method
