.class Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;
.super Lcm/aptoide/pt/utils/SimpleSubscriber;
.source "AppViewInstallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->lambda$null$6(Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/utils/SimpleSubscriber",
        "<",
        "Lcm/aptoide/pt/utils/GenericDialogs$EResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

.field final synthetic val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-direct {p0}, Lcm/aptoide/pt/utils/SimpleSubscriber;-><init>()V

    return-void
.end method

.method static synthetic lambda$onNext$2(Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 2

    .prologue
    .line 295
    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Installing"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method static synthetic lambda$onNext$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$null$0(Lcm/aptoide/pt/database/realm/Download;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupEvents(Lcm/aptoide/pt/database/realm/Download;)V
    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$700(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/database/realm/Download;)V

    return-void
.end method

.method synthetic lambda$onNext$1(Lcm/aptoide/pt/database/realm/Download;Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installManager:Lcm/aptoide/pt/v8engine/InstallManager;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$600(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;)Lcm/aptoide/pt/v8engine/InstallManager;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcm/aptoide/pt/v8engine/InstallManager;->install(Landroid/content/Context;Lcm/aptoide/pt/database/realm/Download;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/a;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 4

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcm/aptoide/pt/utils/SimpleSubscriber;->onNext(Ljava/lang/Object;)V

    .line 282
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    if-ne p1, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$view:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->downgrading_msg:I

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 286
    new-instance v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;-><init>()V

    .line 287
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->create(Lcm/aptoide/pt/model/v7/GetAppMeta$App;I)Lcm/aptoide/pt/database/realm/Download;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$context:Landroid/content/Context;

    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->showRootInstallWarningPopup(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$300(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/content/Context;)V

    .line 289
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->compositeSubscription:Lrx/j/b;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$400(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;)Lrx/j/b;

    move-result-object v1

    new-instance v2, Lcm/aptoide/pt/actions/PermissionManager;

    invoke-direct {v2}, Lcm/aptoide/pt/actions/PermissionManager;-><init>()V

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->val$permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    .line 290
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/actions/PermissionManager;->requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;Lcm/aptoide/pt/database/realm/Download;)Lrx/b/e;

    move-result-object v0

    .line 291
    invoke-virtual {v2, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 293
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 294
    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 289
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 297
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Rollback;->downgradeDialogContinue()V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$Rollback;->downgradeDialogCancel()V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 278
    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$2;->onNext(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
