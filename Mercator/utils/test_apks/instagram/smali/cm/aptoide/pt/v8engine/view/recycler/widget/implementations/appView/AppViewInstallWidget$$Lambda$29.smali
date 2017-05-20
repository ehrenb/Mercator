.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

.field private final arg$2:Landroid/view/View;

.field private final arg$3:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field private final arg$4:Landroid/content/Context;

.field private final arg$5:Lcm/aptoide/pt/actions/PermissionRequest;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$2:Landroid/view/View;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$3:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$4:Landroid/content/Context;

    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$5:Lcm/aptoide/pt/actions/PermissionRequest;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/b/a;
    .locals 6

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$2:Landroid/view/View;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$3:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$4:Landroid/content/Context;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$29;->arg$5:Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->lambda$null$6(Landroid/view/View;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V

    return-void
.end method
