.class Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;
.super Lcm/aptoide/pt/v8engine/receivers/AppBoughtReceiver;
.source "AppViewInstallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupInstallOrBuyButton(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;Lcm/aptoide/pt/model/v7/GetApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

.field final synthetic val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field final synthetic val$displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

.field final synthetic val$getApp:Lcm/aptoide/pt/model/v7/GetApp;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/GetApp;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$getApp:Lcm/aptoide/pt/model/v7/GetApp;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/receivers/AppBoughtReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public appBought(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 243
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    const/4 v1, 0x0

    # setter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->isUpdate:Z
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$002(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Z)Z

    .line 245
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->setPath(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPay()Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Pay;->setPaid()V

    .line 247
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->install:I

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$app:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$getApp:Lcm/aptoide/pt/model/v7/GetApp;

    .line 248
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getVersions()Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->val$displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-virtual {v2, v3, v4, v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->installOrUpgradeListener(Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/listapp/ListAppVersions;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 247
    # invokes: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->setupActionButton(ILandroid/view/View$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$100(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;ILandroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$1;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    # getter for: Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->actionButton:Landroid/widget/Button;
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->access$200(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 251
    :cond_0
    return-void
.end method
